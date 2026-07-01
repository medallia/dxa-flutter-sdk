import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/j685172081.dart';
import 'package:medallia_dxa/src/fuq157706794.dart';
import 'package:medallia_dxa/src/r764152804.dart';
import 'package:medallia_dxa/src/au988478866.dart';

class Km808717588 with RenderObjectAutoMaskGetter {
  Km808717588({required Zwh394369616 he238918070}) : _opx1061096716 = he238918070;
  final Zwh394369616 _opx1061096716;
  final Set<RenderObject> i582723309 = Set.of({});
  //
  static final Set<Mde734481682> _lek418508482 = {
    Mde734481682(nh897300094: AutoMaskingTypeEnum.platformViews),
    Mde734481682(nh897300094: AutoMaskingTypeEnum.inputText),
    Mde734481682(nh897300094: AutoMaskingTypeEnum.magnifier),
  };
  Set<Mde734481682> _ts509463577 = Set.from(
    _lek418508482,
  );
  Set<Mde734481682> get qd970049989 => _ts509463577;
  set qd970049989(Set<Mde734481682> lgn510790059) {
    if (lgn510790059.contains(
      Mde734481682(nh897300094: AutoMaskingTypeEnum.all),
    )) {
      if (lgn510790059.length > 1) {
        throw ArgumentError('''
AutoMaskingType.all cannot be selected
along with other AutoMaskingType enums
''');
      }
      final Set<Mde734481682> j495951104 =
          (lgn510790059.first.wnf77179898 as Li889758074).cc613593207();
      _ts509463577 = j495951104;
      return;
    }

    _ts509463577.addAll(lgn510790059);
    _opx1061096716.no141628437(
      X355692338.g959100803,
      'Automatic masking configuration: $qd970049989',
    );
  }

  void kcl652363377(Set<Mde734481682> zg352813399) {
    if (zg352813399.contains(
      Mde734481682(nh897300094: AutoMaskingTypeEnum.all),
    )) {
      _ts509463577 = {};
      return;
    }

    _ts509463577.removeAll(zg352813399);
  }

  Set<RenderObject> on535478790({
    required BuildContext h506135671,
    required List<BuildContext> ny539557825,
  }) {
    final Set<Mde734481682> mc232016151 =
        Set.from(qd970049989);

    //
    mc232016151.add(Mde734481682.maskWidget());
    i582723309.addAll(
      tj791787414(
        h506135671: h506135671,
        qd970049989: mc232016151,
        ny539557825: ny539557825,
      ),
    );
    return i582723309;
  }

  void i916995452() {
    i582723309.clear();
  }
}

mixin RenderObjectAutoMaskGetter {
  Set<RenderObject> tj791787414({
    required BuildContext h506135671,
    required Set<Mde734481682> qd970049989,
    required List<BuildContext> ny539557825,
  }) {
    final Set<RenderObject> t761529382 = Set.of({});

    void x272939382(Element xh235757697) {
      xh235757697.visitChildElements((mbm412700271) {
        if (mbm412700271.widget is UnmaskWidget) {
          return;
        }

        //
        if (ny539557825.contains(mbm412700271)) {
          return;
        }
        //
        //
        final bool sgu971810811 = qd970049989.any((iu828747941) {
          if (iu828747941.wnf77179898.iit650036701(mbm412700271.widget)) {
            return true;
          }
          //
          //
          //
          return iu828747941.wnf77179898.gi252568002(mbm412700271.widget);
        });
        if (sgu971810811) {
          if (mbm412700271.renderObject != null) {
            t761529382.add(mbm412700271.renderObject!);
          }
          return;
        } else {
          x272939382(mbm412700271);
        }
      });
    }

    x272939382(h506135671 as Element);
    return t761529382;
  }
}
