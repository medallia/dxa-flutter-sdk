// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:flutter_svg/flutter_svg.dart';

enum PlaceholderTypeEnum { replayDisabled, noPreviewAvailable }

class PlaceholderType {
  final PlaceholderTypeEnum placeholderTypeEnum;
  PlaceholderType({
    required this.placeholderTypeEnum,
  });
  String getPlaceholderText() {
    switch (placeholderTypeEnum) {
      case PlaceholderTypeEnum.replayDisabled:
        return 'Replay Disabled';

      case PlaceholderTypeEnum.noPreviewAvailable:
        return 'No preview available';

      default:
        return 'No preview available';
    }
  }
}

class PlaceholderImageConfig {
  PlaceholderImageConfig._internal();
  static final _instance = PlaceholderImageConfig._internal();
  static PlaceholderImageConfig get instance => _instance;
  final HashMap<Size, ByteData> placeholderImageByteDataMap = HashMap();
  ByteData? placeHolderIcon;

  FutureOr<ByteData> getPlaceholderImage(
    BuildContext context,
    PlaceholderType placeholderType,
  ) async {
    final Size size = MediaQuery.of(context).size;
    if (placeholderImageByteDataMap.containsKey(size)) {
      return placeholderImageByteDataMap[size]!;
    }
    final ByteData placeholderImage =
        await _createPlaceHolderImage(context, placeholderType);
    placeholderImageByteDataMap[size] = placeholderImage;
    return placeholderImage;
  }

  Future<ByteData> _createPlaceHolderImage(
    BuildContext context,
    PlaceholderType placeholderType,
  ) async {
    final Size size = MediaQuery.of(context).size;
    final double screenWidth = size.width;
    final double screenHeight = size.height;
    final recorder = ui.PictureRecorder();
    final canvas = Canvas(
      recorder,
      Rect.fromLTWH(0, 0, screenWidth, screenHeight),
    );
    //Texxt configuration
    final textStyle = TextStyle(
      color: Colors.black,
      fontSize: screenWidth * 0.1,
    );
    final textSpan = TextSpan(
      text: placeholderType.getPlaceholderText(),
      style: textStyle,
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(
      maxWidth: size.width,
    );
    const double textHeightPadding = 16;
    final double textHeight = textPainter.height;
    final double textWidth = textPainter.width;
    //SCVG configuration
    final ByteData byteData = await _getPlaceholderIcon();
    final DrawableRoot svgRoot =
        await svg.fromSvgBytes(byteData.buffer.asUint8List(), 'rawSvg');
    final ui.Image image = await svgRoot
        .toPicture(
            size: Size(
                screenWidth, screenHeight - textHeight - textHeightPadding))
        .toImage(
          screenWidth.toInt(),
          (screenHeight - textHeight - textHeightPadding).toInt(),
        );
    canvas.drawColor(Colors.white, ui.BlendMode.color);
    canvas.drawImage(image, Offset.zero, Paint()..color = Colors.blue);
    //Layout configuration
    late final double textHeightOffset;
    if (screenHeight > screenWidth) {
      textHeightOffset = (screenHeight / 2) +
          (screenWidth / svgRoot.viewport.size.aspectRatio) / 2;
    } else {
      textHeightOffset = image.height.toDouble() + textHeightPadding / 2;
    }

    final double xCenter = (screenWidth - textWidth) / 2;
    final double yCenter = textHeightOffset;
    final Offset offset = Offset(xCenter, yCenter);
    textPainter.paint(canvas, offset);

    final ui.Image resultImage = await recorder
        .endRecording()
        .toImage(screenWidth.toInt(), screenHeight.toInt());
    return (await resultImage.toByteData(format: ui.ImageByteFormat.png))!;
  }

  FutureOr<ByteData> _getPlaceholderIcon() async =>
      placeHolderIcon ??= await rootBundle
          .load('packages/decibel_sdk/assets/placeholder_image.svg');
}
