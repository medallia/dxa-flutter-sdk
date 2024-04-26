import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/mzd143257026.dart';
import 'package:medallia_dxa/src/bg401265027.dart';
import 'package:medallia_dxa/src/jn255042292.dart';
import 'package:medallia_dxa/src/mmc604849382.dart';

class Khd808718307 with RenderObjectAutoMaskGetter {
  Khd808718307({required Gy394369191 qe238918465}) : _o1061097467 = qe238918465;
  final Gy394369191 _o1061097467;
  Logger get l613848353 => _o1061097467.p328710158;
  final Set<RenderObject> hv582722586 = Set.of({});
  //
  static final Set<Vxc734482405> _veh418507829 = {
    Vxc734482405(ao897299593: AutoMaskingTypeEnum.webView),
    Vxc734482405(ao897299593: AutoMaskingTypeEnum.inputText),
  };
  Set<Vxc734482405> _fks509464302 = Set.from(
    _veh418507829,
  );
  Set<Vxc734482405> get tv970050354 => _fks509464302;
  set tv970050354(Set<Vxc734482405> e510790492) {
    if (e510790492.contains(
      Vxc734482405(ao897299593: AutoMaskingTypeEnum.all),
    )) {
      if (e510790492.length > 1) {
        throw ArgumentError('''
AutoMaskingType.all cannot be selected
along with other AutoMaskingType enums
''');
      }
      final Set<Vxc734482405> qc495951863 =
          (e510790492.first.qw77179149 as Jg889758605).vew613593728();
      _fks509464302 = qc495951863;
      return;
    }

    if (e510790492.contains(
      Vxc734482405(ao897299593: AutoMaskingTypeEnum.none),
    )) {
      if (e510790492.length > 1) {
        throw ArgumentError('''
AutoMaskingType.none cannot be selected
along with other AutoMaskingType enums
''');
      }
      _fks509464302 = {
        Vxc734482405(ao897299593: AutoMaskingTypeEnum.none),
      };
      return;
    }
    _fks509464302.addAll(e510790492);
    l613848353.d('After setAutoMaskingTypeSet $tv970050354');
  }

  void z652362886(Set<Vxc734482405> vb352813984) {
    if (vb352813984.contains(
      Vxc734482405(ao897299593: AutoMaskingTypeEnum.none),
    )) {
      return;
    }
    if (vb352813984.contains(
      Vxc734482405(ao897299593: AutoMaskingTypeEnum.all),
    )) {
      _fks509464302 = {};
      return;
    }

    _fks509464302.removeAll(vb352813984);
    l613848353.d('After  Unmasking $tv970050354');
  }

  Set<RenderObject> s535478513({
    required BuildContext tnk506136192,
    required List<BuildContext> xlx539557174,
  }) {
    l613848353.d('set AutoMasking $tv970050354');

    final Set<Vxc734482405> cd232016864 = Set.from(tv970050354)
      ..remove(Vxc734482405(ao897299593: AutoMaskingTypeEnum.none));

    //
    cd232016864.add(Vxc734482405.maskWidget());
    hv582722586.addAll(
      t791786849(
        tnk506136192: tnk506136192,
        tv970050354: cd232016864,
        xlx539557174: xlx539557174,
      ),
    );
    l613848353.d('renderObjectsToMask $hv582722586');
    return hv582722586;
  }

  void w916995979() {
    l613848353.d('renderObjectsToMask clear');
    hv582722586.clear();
  }
}

mixin RenderObjectAutoMaskGetter {
  Set<RenderObject> t791786849({
    required BuildContext tnk506136192,
    required Set<Vxc734482405> tv970050354,
    required List<BuildContext> xlx539557174,
  }) {
    final Set<RenderObject> dpf761530065 = Set.of({});

    void bai272939905(Element z235758198) {
      z235758198.visitChildElements((r412699800) {
        if (r412699800.widget is UnmaskWidget) {
          return;
        }

        //
        if (xlx539557174.contains(r412699800)) {
          return;
        }
        //
        //
        final bool sc971810060 = tv970050354.any((q828748370) {
          if (q828748370.qw77179149.ew650037034(r412699800.widget)) {
            return true;
          }
          //
          //
          //
          return q828748370.qw77179149.kan252568373(r412699800.widget);
        });
        if (sc971810060) {
          if (r412699800.renderObject != null) {
            dpf761530065.add(r412699800.renderObject!);
          }
          return;
        } else {
          bai272939905(r412699800);
        }
      });
    }

    bai272939905(tnk506136192 as Element);
    return dpf761530065;
  }
}
