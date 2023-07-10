// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:flutter_svg/flutter_svg.dart';

enum PlaceholderTypeEnum {
  replayDisabled,
  noPreviewAvailable,
  performanceStressCpu,
  performanceStressBattery,
  performanceStressMemory,
  liveConfig,
  noPermission,
}

class PlaceholderType {
  final PlaceholderTypeEnum placeholderTypeEnum;
  PlaceholderType({
    required this.placeholderTypeEnum,
  });
  String getPlaceholderText() {
    switch (placeholderTypeEnum) {
      case PlaceholderTypeEnum.replayDisabled:
        return 'Video disabled on this screen';

      case PlaceholderTypeEnum.noPreviewAvailable:
        return 'No video could be recorded for this screen';

      case PlaceholderTypeEnum.performanceStressMemory:
        return 'Screen not recorded due to high memory usage';

      case PlaceholderTypeEnum.performanceStressCpu:
        return 'Screen not recorded due to high CPU usage';

      case PlaceholderTypeEnum.performanceStressBattery:
        return 'Screen not recorded due to low battery';

      case PlaceholderTypeEnum.liveConfig:
        return 'Video recording masked for this screen';

      case PlaceholderTypeEnum.noPermission:
        return 'No permissions to record this screen';

      default:
        return 'No preview available';
    }
  }
}

class PlaceholderImageConfig {
  PlaceholderImageConfig._internal();
  static final _instance = PlaceholderImageConfig._internal();
  static PlaceholderImageConfig get instance => _instance;
  final HashMap<PlaceholderImageId, ByteData> placeholderImageByteDataMap =
      HashMap();

  ByteData? placeHolderIcon;
  static final Size _fallbackSize = Size(200, 500);
  Size lastSize = _fallbackSize;

  FutureOr<ByteData> getPlaceholderImage(
    BuildContext? context,
    PlaceholderType placeholderType,
  ) async {
    late Size size;
    if (context == null) {
      size = lastSize;
    } else {
      final Size? maybeSize = MediaQuery.maybeOf(context)?.size;
      if (maybeSize == null || maybeSize.width <= 0 || maybeSize.height <= 0) {
        size = _fallbackSize;
      } else {
        size = maybeSize;
      }
    }
    lastSize = size;
    final placeholderImageId = PlaceholderImageId(
      size: size,
      type: placeholderType.placeholderTypeEnum,
    );

    if (placeholderImageByteDataMap.containsKey(placeholderImageId)) {
      return placeholderImageByteDataMap[placeholderImageId]!;
    }
    final ByteData placeholderImage =
        await _createPlaceHolderImage(size, placeholderType);
    placeholderImageByteDataMap[placeholderImageId] = placeholderImage;
    return placeholderImage;
  }

  Future<ByteData> _createPlaceHolderImage(
    Size size,
    PlaceholderType placeholderType,
  ) async {
    final double screenWidth = size.width;
    final double screenHeight = size.height;
    final recorder = ui.PictureRecorder();
    final canvas = Canvas(
      recorder,
      Rect.fromLTWH(0, 0, screenWidth, screenHeight),
    );
    //Texxt configuration
    final double textWidthWithMargin = screenWidth * 0.9;
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 24,
    );
    final textSpan = TextSpan(
      text: placeholderType.getPlaceholderText(),
      style: textStyle,
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    );
    textPainter.layout(
      maxWidth: textWidthWithMargin,
    );
    const double textHeightPadding = 16;
    final double textHeight = textPainter.height;
    final double textWidth = textPainter.width;
    //SCVG configuration
    final ByteData byteData = await _getPlaceholderIcon();
    final DrawableRoot svgRoot =
        await svg.fromSvgBytes(byteData.buffer.asUint8List(), 'rawSvg');
    final int imageHeight = textWidth ~/ svgRoot.viewport.size.aspectRatio;
    final double imageWidth = textWidth;
    final ui.Image image = await svgRoot
        .toPicture(
          size: Size(imageWidth, imageHeight.toDouble()),
        )
        .toImage(
          imageWidth.toInt(),
          imageHeight,
        );
    final double yOffset =
        (screenHeight - (textHeight + image.height + textHeightPadding)) / 2;
    final imageOffset = Offset((screenWidth - textWidth) / 2, yOffset);

    canvas.drawColor(Colors.white, ui.BlendMode.srcOver);
    canvas.drawImage(image, imageOffset, Paint()..color = Colors.white);
    //Layout configuration
    final double textHeightOffset =
        yOffset + image.height.toDouble() + textHeightPadding;

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

///used to cache placeholder images by size and text, so they can be reused
///instead of creating a new one each time
class PlaceholderImageId {
  final Size size;
  final PlaceholderTypeEnum type;
  PlaceholderImageId({
    required this.size,
    required this.type,
  });

  @override
  bool operator ==(covariant PlaceholderImageId other) {
    if (identical(this, other)) return true;

    return other.size == size && other.type == type;
  }

  @override
  int get hashCode => size.hashCode ^ type.hashCode;
}
