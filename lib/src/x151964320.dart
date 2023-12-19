import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/vz143257518.dart';
import 'package:medallia_dxa/src/on401265647.dart';
import 'package:medallia_dxa/src/cr255041688.dart';
import 'package:medallia_dxa/src/mzp604849802.dart';

class Xd808717711 with RenderObjectAutoMaskGetter {
  Xd808717711({required R394369739 b238917933}) : _v1061096855 = b238917933;
  final R394369739 _v1061096855;
  Logger get m613848909 => _v1061096855.bt328710754;
  final Set<RenderObject> osa582723190 = Set.of({});
  //
  static final Set<Ms734481801> _gj418508377 = {
    Ms734481801(tm897300197: AutoMaskingTypeEnum.webView),
    Ms734481801(tm897300197: AutoMaskingTypeEnum.inputText),
  };
  Set<Ms734481801> _sz509463682 = Set.from(
    _gj418508377,
  );
  Set<Ms734481801> get kmt970049886 => _sz509463682;
  set kmt970049886(Set<Ms734481801> mor510789936) {
    if (mor510789936.contains(
      Ms734481801(tm897300197: AutoMaskingTypeEnum.all),
    )) {
      if (mor510789936.length > 1) {
        throw ArgumentError('''
AutoMaskingType.all cannot be selected
along with other AutoMaskingType enums
''');
      }
      final Set<Ms734481801> o495951259 =
          (mor510789936.first.whg77179745 as M889758177).cau613593324();
      _sz509463682 = o495951259;
      return;
    }

    if (mor510789936.contains(
      Ms734481801(tm897300197: AutoMaskingTypeEnum.none),
    )) {
      if (mor510789936.length > 1) {
        throw ArgumentError('''
AutoMaskingType.none cannot be selected
along with other AutoMaskingType enums
''');
      }
      _sz509463682 = {
        Ms734481801(tm897300197: AutoMaskingTypeEnum.none),
      };
      return;
    }
    _sz509463682.addAll(mor510789936);
    m613848909.d('After setAutoMaskingTypeSet $kmt970049886');
  }

  void aru652363498(Set<Ms734481801> jiw352813516) {
    if (jiw352813516.contains(
      Ms734481801(tm897300197: AutoMaskingTypeEnum.none),
    )) {
      return;
    }
    if (jiw352813516.contains(
      Ms734481801(tm897300197: AutoMaskingTypeEnum.all),
    )) {
      _sz509463682 = {};
      return;
    }

    _sz509463682.removeAll(jiw352813516);
    m613848909.d('After  Unmasking $kmt970049886');
  }

  Set<RenderObject> jbc535478941({
    required BuildContext s506135788,
    required List<BuildContext> rjn539557722,
  }) {
    m613848909.d('set AutoMasking $kmt970049886');

    final Set<Ms734481801> vr232016268 = Set.from(kmt970049886)
      ..remove(Ms734481801(tm897300197: AutoMaskingTypeEnum.none));

    //
    vr232016268.add(Ms734481801.maskWidget());
    osa582723190.addAll(
      xy791787277(
        s506135788: s506135788,
        kmt970049886: vr232016268,
        rjn539557722: rjn539557722,
      ),
    );
    m613848909.d('renderObjectsToMask $osa582723190');
    return osa582723190;
  }

  void u916995559() {
    m613848909.d('renderObjectsToMask clear');
    osa582723190.clear();
  }
}

mixin RenderObjectAutoMaskGetter {
  Set<RenderObject> xy791787277({
    required BuildContext s506135788,
    required Set<Ms734481801> kmt970049886,
    required List<BuildContext> rjn539557722,
  }) {
    final Set<RenderObject> x761529533 = Set.of({});

    void jnn272939501(Element kqa235757594) {
      kqa235757594.visitChildElements((v412700404) {
        if (v412700404.widget is UnmaskWidget) {
          return;
        }

        //
        if (rjn539557722.contains(v412700404)) {
          return;
        }
        //
        //
        final bool apm971810656 = kmt970049886.any((vi828747838) {
          if (vi828747838.whg77179745.p650036550(v412700404.widget)) {
            return true;
          }
          //
          //
          //
          return vi828747838.whg77179745.yc252567897(v412700404.widget);
        });
        if (apm971810656) {
          if (v412700404.renderObject != null) {
            x761529533.add(v412700404.renderObject!);
          }
          return;
        } else {
          jnn272939501(v412700404);
        }
      });
    }

    jnn272939501(s506135788 as Element);
    return x761529533;
  }
}
