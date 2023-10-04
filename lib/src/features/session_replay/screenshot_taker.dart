// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/features/autoMasking/auto_masking_class.dart';
import 'package:medallia_dxa/src/features/session_replay/mask_builder.dart';
import 'package:medallia_dxa/src/features/tracking/route_tree_constructor.dart';
import 'package:medallia_dxa/src/features/tracking/screen_visited.dart';
import 'package:medallia_dxa/src/utility/completer_wrappers.dart';
import 'package:medallia_dxa/src/utility/dependency_injector.dart';
import 'package:medallia_dxa/src/utility/extensions.dart';

class ScreenshotTaker with TrackingCompleter {
  final AutoMasking autoMasking;
  final WidgetsBinding widgetsBindingInstance;
  Paint get _maskColor =>
      Paint()..color = DependencyInjector.instance.globalSettings.maskColor;
  final Paint _borderColor = Paint()
    ..color = const Color.fromARGB(255, 255, 255, 255)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  ScreenshotTaker({
    required this.autoMasking,
    required this.widgetsBindingInstance,
  });
  Future<ByteData?> captureImage({
    required ScreenVisited screenVisited,
    required VoidCallback uiChangedReset,
    required VoidCallback forceScreeshotNextFrame,
    required Function(Size) screenSizeCallback,
  }) async {
    final Element renderViewElement = widgetsBindingInstance.renderViewElement!;
    final RenderObject? rootRenderObject = renderViewElement.renderObject;
    assert(rootRenderObject != null);
    if (rootRenderObject == null) return null;
    RenderObject sceneRenderObject = rootRenderObject;

    final double pixelRatio = widgetsBindingInstance.window.devicePixelRatio;

    Set<RectAndRotation> manualMaskCoordinates = {};
    final List<DxaRoute> dxaRoutePath = screenVisited.dxaRoutePath;
    final List<DxaRoute> forbiddenDxaRoutes = screenVisited.forbiddenDxaRoutes;

    //If all routes are Modal, masking is enabled
    if (screenVisited.areAllModalRoutes) {
      final maskBuilder = MaskBuilder(
        autoMasking: autoMasking,
        dxaRoutePath: dxaRoutePath,
        forbiddenDxaRoutes: forbiddenDxaRoutes,
        renderViewElement: renderViewElement,
        rootRenderObject: rootRenderObject,
        pixelRatio: pixelRatio,
      );

      //If there are non opaque Routes, then sceneRenderObject has to be updated
      //with a RenderObject that belongs to the subtree context of a Route which
      //is both opaque and all child routes (if there are any) are also opaque.
      maskBuilder
          .getSceneRenderObjectForMasking(screenVisited)
          .let((sceneRenderObjectForMasking) {
        if (sceneRenderObjectForMasking != null) {
          sceneRenderObject = sceneRenderObjectForMasking;
        }
      });

      manualMaskCoordinates = maskBuilder.getAllMasksCoordinates();
    }
    late final double width;
    late final double height;
    widgetsBindingInstance.renderView.size.let((size) {
      screenSizeCallback(size);
      width = size.width;
      height = size.height;
    });

    final recorder = ui.PictureRecorder();
    late final Offset sceneOffset;
    sceneRenderObject.globalPaintBounds.let((sceneFrame) {
      sceneOffset = Offset(sceneFrame.left, sceneFrame.top);
    });

    late ui.Image image;

    return endScreenTasksCompleterWrapper<ByteData?>(
      isScreenshotTask: true,
      taskToComplete: () async {
        try {
          uiChangedReset();

          final ui.SceneBuilder builder = ui.SceneBuilder();
          final Matrix4 transform = Matrix4.identity();
          if (sceneRenderObject is RenderRepaintBoundary) {
            final Rect sceneFrame = sceneRenderObject.globalPaintBounds;
            final Rect rootSceneFrame = sceneRenderObject
                .globalPaintBoundsWithAncestor(rootRenderObject)
                .rect;

            final double newPixelRatiox =
                (rootSceneFrame.width / sceneFrame.width) / pixelRatio;
            final double newPixelRatioy =
                (rootSceneFrame.height / sceneFrame.height) / pixelRatio;

            transform.scale(newPixelRatiox, newPixelRatioy);
          } else {
            transform.scale(1 / pixelRatio, 1 / pixelRatio);
          }
          builder.pushTransform(transform.storage);
          final ui.Scene? scene = sceneRenderObject.layer?.buildScene(builder);
          if (scene == null) return null;
          image = await scene.toImage(width.ceil(), height.ceil());

          scene.dispose();
        } catch (_) {
          forceScreeshotNextFrame();
          return null;
        }

        final canvas = Canvas(
          recorder,
        );
        canvas.drawImage(image, sceneOffset, Paint());
        image.dispose();
        _paintMaskWithCoordinates(canvas, manualMaskCoordinates);

        final resultImage = await recorder.endRecording().toImage(
              width.ceil(),
              height.ceil(),
            );
        final resultImageData =
            await resultImage.toByteData(format: ui.ImageByteFormat.png);
        return resultImageData;
      },
    );
  }

  void _paintMaskWithCoordinates(
    Canvas canvas,
    Set<RectAndRotation> coordinates,
  ) {
    for (final coordinate in coordinates) {
      final path = Path();
      final rect = coordinate.rect;
      final width = rect.right - rect.left;
      final height = rect.bottom - rect.top;

      final xcosine = width * coordinate.cosine;
      final xsine = width * coordinate.sine;
      final ysine = height * coordinate.sine;
      final ycosine = height * coordinate.cosine;

      //Point1
      path.moveTo(rect.left, rect.top);
      //Point2
      path.lineTo(rect.left + xcosine, rect.top + xsine);
      //Point3
      path.lineTo(
        rect.left + xcosine - ysine,
        rect.top + xsine + ycosine,
      );
      //Point4
      path.lineTo(rect.left - ysine, rect.top + ycosine);
      //
      path.close();
      canvas.drawPath(path, _maskColor);

      canvas.drawPath(path, _borderColor);
    }
  }
}
