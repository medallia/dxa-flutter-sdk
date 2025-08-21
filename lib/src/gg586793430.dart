//
import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/h369047381.dart';
import 'package:medallia_dxa/src/j1059548061.dart';
import 'package:medallia_dxa/src/xik50999285.dart';
import 'package:medallia_dxa/src/re674085892.dart';
import 'package:medallia_dxa/src/vp371803424.dart';
import 'package:medallia_dxa/src/e487303575.dart';
import 'package:medallia_dxa/src/mo534491989.dart';
import 'package:medallia_dxa/src/hk249196801.dart';
import 'package:medallia_dxa/src/q64670606.dart';

class A187482320 {
  A187482320();
  late final Ybr764602925 _pvd679689845 =
      Zmk583050637.u892083466.ute1001100860;
  late final Lau808718320 bcp594444610 = Zmk583050637.u892083466.bcp594444610;
  late final WidgetsBinding x277876390 =
      Zmk583050637.u892083466.xk759432989;
  late final N170397582 wrh238485608 =
      Zmk583050637.u892083466.wrh238485608;
  Paint get _z786791406 => Paint()..color = wrh238485608.s36790034;
  final Paint _imo418987707 = Paint()
    ..color = const Color.fromARGB(255, 255, 255, 255)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  Future<ByteData?> r533881693({
    required Ujb686664646 ljy662083530,
    required VoidCallback wbz269944723,
    required VoidCallback xsi981024227,
    required Function(Size) xv954939947,
  }) async {
    final Element a951104660 =
        x277876390.b405157123!;
    final RenderObject? j798986487 = a951104660.renderObject;
    assert(j798986487 != null);
    if (j798986487 == null) return null;

    //
    RenderObject aj715369704 = j798986487;
    Offset gm789785719 = Offset.zero;

    final double lf91774025 =
        x277876390.platformDispatcher.views.first.devicePixelRatio;

    Set<Md859603263> uur365319451 = {};

    final ahx378263729 = A1069794808(
      bcp594444610: bcp594444610,
      gns986357726: ljy662083530.yj399594145,
      vy231563428: ljy662083530.vy231563428,
      w815079087: a951104660,
      j798986487: j798986487,
      lf91774025: lf91774025,
    );
    //
    //
    //
    final G890753676? fp866297676 =
        ahx378263729.fp866297676();

    if (fp866297676 != null) {
      lp491533348(ahx378263729, fp866297676).t265147862((r893640627) {
        aj715369704 = r893640627.aj715369704;
        gm789785719 = r893640627.gm789785719;
      });
    }

    uur365319451 = ahx378263729.sfd744704630();

    late final double s381611708;
    late final double xvb318632234;
    x277876390.fdu1040687857.size.t265147862((pk5430459) {
      xv954939947(pk5430459);
      s381611708 = pk5430459.width;
      xvb318632234 = pk5430459.height;
    });

    final gk1071713247 = ui.PictureRecorder();
    late final Offset q567264656;
    aj715369704.y666269577.t265147862((qki905015085) {
      q567264656 = Offset(qki905015085.left, qki905015085.top);
    });

    late ui.Image tol361530411;

    return _pvd679689845.i729887926<ByteData?>(
      a491324171: true,
      v822065558: () async {
        try {
          wbz269944723();

          final ui.SceneBuilder ef504793568 = ui.SceneBuilder();
          final Matrix4 mtg546507054 = Matrix4.identity();
          if (aj715369704 is RenderRepaintBoundary) {
            //
            final Rect qki905015085 = aj715369704.y666269577;
            final Rect s814474775 = aj715369704
                .kw236863181(j798986487)
                .b976996854;

            final double mty716031314 =
                (s814474775.width / qki905015085.width) / lf91774025;
            final double wa954753503 =
                (s814474775.height / qki905015085.height) / lf91774025;

            mtg546507054.scale(mty716031314, wa954753503);
          } else {
            //
            mtg546507054.scale(1 / lf91774025, 1 / lf91774025);
          }
          ef504793568.pushTransform(mtg546507054.storage);
          //
          final ui.Scene? tr550632936 = aj715369704.layer?.buildScene(ef504793568);
          if (tr550632936 == null) return null;
          tol361530411 = await tr550632936.toImage(s381611708.ceil(), xvb318632234.ceil());

          tr550632936.dispose();
        } catch (_) {
          xsi981024227();
          return null;
        }

        final h241397898 = Canvas(
          gk1071713247,
        );
        h241397898.drawRect(
          Rect.fromLTWH(0, 0, s381611708, xvb318632234),
          Paint()..color = const Color.fromARGB(255, 0, 0, 0),
        );
        h241397898.drawImage(tol361530411, q567264656 - gm789785719, Paint());
        tol361530411.dispose();
        _c329497957(h241397898, uur365319451);

        final mw153991701 = await gk1071713247.endRecording().toImage(
              s381611708.ceil(),
              xvb318632234.ceil(),
            );
        final gn323108242 =
            await mw153991701.toByteData(format: ui.ImageByteFormat.png);
        return gn323108242;
      },
    );
  }

  Lid832240138 lp491533348(
    A1069794808 ahx378263729,
    G890753676 fp866297676,
  ) {
    late final RenderObject aj715369704;
    late final Offset gm789785719;
    ahx378263729
        .dz255166749(fp866297676)
        .t265147862((es605527272) {
      if (es605527272 == null) {
        throw Z901570182('Scene Render Object for LNOR not found');
      }
      aj715369704 = es605527272;
      final RenderObject? sz569535055 =
          fp866297676.ugs219402924.h1006262609
              .findRenderObject();
      if (sz569535055 == null) {
        throw Z901570182('Navigator RenderObject for LNOR not found');
      }
      aj715369704
          .kw236863181(
            sz569535055,
          )
          .b976996854
          .t265147862(
        (qki905015085) {
          gm789785719 = Offset(qki905015085.left, qki905015085.top);
        },
      );
    });
    return Lid832240138(
      aj715369704: aj715369704,
      gm789785719: gm789785719,
    );
  }

  void _c329497957(
    Canvas h241397898,
    Set<Md859603263> fhy641667486,
  ) {
    for (final myp163312887 in fhy641667486) {
      final lr764049577 = Path();
      final b976996854 = myp163312887.b976996854;
      final s381611708 = b976996854.right - b976996854.left;
      final xvb318632234 = b976996854.bottom - b976996854.top;

      final xqw76815321 = s381611708 * myp163312887.sdv172219144;
      final q669129094 = s381611708 * myp163312887.yhu567092985;
      final l550270318 = xvb318632234 * myp163312887.yhu567092985;
      final ob232478769 = xvb318632234 * myp163312887.sdv172219144;

      //
      lr764049577.moveTo(b976996854.left, b976996854.top);
      //
      lr764049577.lineTo(b976996854.left + xqw76815321, b976996854.top + q669129094);
      //
      lr764049577.lineTo(
        b976996854.left + xqw76815321 - l550270318,
        b976996854.top + q669129094 + ob232478769,
      );
      //
      lr764049577.lineTo(b976996854.left - l550270318, b976996854.top + ob232478769);
      //
      lr764049577.close();
      h241397898.drawPath(lr764049577, _z786791406);

      h241397898.drawPath(lr764049577, _imo418987707);
    }
  }
}

class Lid832240138 {
  final RenderObject aj715369704;
  final Offset gm789785719;

  Lid832240138({
    required this.aj715369704,
    required this.gm789785719,
  });
}
