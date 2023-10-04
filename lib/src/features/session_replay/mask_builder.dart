// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/features/autoMasking/auto_masking_class.dart';
import 'package:medallia_dxa/src/features/tracking/route_tree_constructor.dart';
import 'package:medallia_dxa/src/features/tracking/screen_visited.dart';

import 'package:medallia_dxa/src/utility/extensions.dart';

class MaskBuilder {
  final List<DxaRoute> dxaRoutePath;
  //The DxaRoutes that MUST NOT be masked
  final List<DxaRoute> forbiddenDxaRoutes;
  final AutoMasking autoMasking;
  final Element renderViewElement;
  final RenderObject rootRenderObject;
  final double pixelRatio;
  MaskBuilder({
    required this.dxaRoutePath,
    required this.forbiddenDxaRoutes,
    required this.autoMasking,
    required this.renderViewElement,
    required this.rootRenderObject,
    required this.pixelRatio,
  }) {
    _build();
  }
  late Set<RectAndRotation> _allMasksCoordinates;
  RenderObject? _sceneRenderObject;
  void _build() {
    List<DxaRoute>? dxaRoutePathOnlyOpaque =
        _getDxaRoutePathOnlyOpaque(dxaRoutePath: dxaRoutePath);

    BuildContext? startContextForMasking = renderViewElement;
    if (dxaRoutePathOnlyOpaque != null) {
      startContextForMasking = dxaRoutePathOnlyOpaque.first.routeContext;
      if (startContextForMasking == null) {
        throw StateError('Context not ready');
      }
      _sceneRenderObject = startContextForMasking.findRenderObject();
    } else {
      dxaRoutePathOnlyOpaque = dxaRoutePath;
    }

    final renderObjectsToAutomaskSet = _getAllMaskedRenderObjects(
      dxaRoutePathOnlyOpaque: dxaRoutePathOnlyOpaque,
      startContextForMasking: startContextForMasking,
      stopContextForMasking: dxaRoutePathOnlyOpaque.first.navigatorContext,
      forbiddenDxaRoutes: forbiddenDxaRoutes,
    );

    final Set<RenderObject> paintedRenderObjectsToAutomaskSet =
        renderObjectsToAutomaskSet
            .where((renderObject) => renderObject.areAllAncestorsPainted)
            .toSet();

    final Rect rootFrame = rootRenderObject.globalPaintBounds;
    final Offset rootOffset = Offset(rootFrame.left, rootFrame.top);
    _allMasksCoordinates = _getAllMasksCoordinates(
      paintedRenderObjectsToAutomaskSet,
      rootRenderObject,
      rootOffset,
      pixelRatio,
    );
  }

  Set<RectAndRotation> getAllMasksCoordinates() => _allMasksCoordinates;

  RenderObject? getSceneRenderObjectForMasking(ScreenVisited screenVisited) =>
      _sceneRenderObject;

  Set<RenderObject> _getAllMaskedRenderObjects({
    required BuildContext startContextForMasking,
    required BuildContext stopContextForMasking,
    required List<DxaRoute> dxaRoutePathOnlyOpaque,
    required List<DxaRoute> forbiddenDxaRoutes,
  }) {
    final List<BuildContext> forbiddenContexts = [];
    for (final dxaRoute in forbiddenDxaRoutes) {
      if (dxaRoute.routeContext != null) {
        forbiddenContexts.add(dxaRoute.routeContext!);
      }
    }

    final renderObjectsToAutomaskSet =
        autoMasking.getMaskedRenderObjectsWithinContexts(
      startContext: startContextForMasking,
      stopContexts: forbiddenContexts,
    );
    for (var i = 0; i < dxaRoutePathOnlyOpaque.length; i++) {
      final BuildContext? startContext = dxaRoutePathOnlyOpaque[i].routeContext;
      if (startContext == null) throw StateError('Route context not ready');

      renderObjectsToAutomaskSet.addAll(
        autoMasking.getMaskedRenderObjectsWithinContexts(
          startContext: startContext,
          stopContexts: forbiddenContexts,
        ),
      );
    }
    return renderObjectsToAutomaskSet;
  }

  List<DxaRoute>? _getDxaRoutePathOnlyOpaque({
    required List<DxaRoute> dxaRoutePath,
  }) {
    final int nonOpaqueRoute = dxaRoutePath.lastIndexWhere((element) {
      return element.isOpaque == false;
    });
    if (nonOpaqueRoute == -1) {
      return null;
    }
    final List<DxaRoute> dxaRoutePathOnlyOpaque = List.of(
      dxaRoutePath.getRange(nonOpaqueRoute, dxaRoutePath.length),
    );
    return dxaRoutePathOnlyOpaque;
  }

  Set<RectAndRotation> _getAllMasksCoordinates(
    Set<RenderObject> renderObjectsToMask,
    RenderObject ancestor,
    Offset offset,
    double pixelRatio,
  ) {
    final Set<RectAndRotation> coordinates = {};

    renderObjectsToMask.removeWhere((element) => element.attached == false);
    for (final renderObject in renderObjectsToMask) {
      coordinates.add(
        _getRenderObjectCoordinate(
          renderObject,
          ancestor,
          offset,
          pixelRatio,
        ),
      );
    }
    return coordinates;
  }

  RectAndRotation _getRenderObjectCoordinate(
    RenderObject renderObject,
    RenderObject ancestor,
    Offset offset,
    double pixelRatio,
  ) {
    late RectAndRotation coordinate;
    renderObject.globalPaintBoundsWithAncestor(ancestor).let((it) {
      coordinate = RectAndRotation(
        it.rect.shift(offset).scale(1 / pixelRatio),
        it.cosine,
        it.sine,
      );
    });
    return coordinate;
  }
}
