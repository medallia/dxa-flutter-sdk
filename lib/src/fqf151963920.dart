import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/gbe143256606.dart';
import 'package:medallia_dxa/src/xa401264735.dart';
import 'package:medallia_dxa/src/ny255042344.dart';
import 'package:medallia_dxa/src/p604849466.dart';

class Aoh808717887 with RenderObjectAutoMaskGetter {
  Aoh808717887({required Par394369403 zab238918301}) : _v1061096999 = zab238918301;
  final Par394369403 _v1061096999;
  Logger get w613848317 => _v1061096999.v328710610;
  final Set<RenderObject> olt582723014 = Set.of({});
  //
  static final Set<C734481977> _hag418508265 = {
    C734481977(er897299797: AutoMaskingTypeEnum.webView),
    C734481977(er897299797: AutoMaskingTypeEnum.inputText),
  };
  Set<C734481977> _i509464370 = Set.from(
    _hag418508265,
  );
  Set<C734481977> get qzi970050286 => _i509464370;
  set qzi970050286(Set<C734481977> rjc510790272) {
    if (rjc510790272.contains(
      C734481977(er897299797: AutoMaskingTypeEnum.all),
    )) {
      if (rjc510790272.length > 1) {
        throw ArgumentError('''
AutoMaskingType.all cannot be selected
along with other AutoMaskingType enums
''');
      }
      final Set<C734481977> j495951403 =
          (rjc510790272.first.k77179089 as I889758289).csr613593948();
      _i509464370 = j495951403;
      return;
    }

    if (rjc510790272.contains(
      C734481977(er897299797: AutoMaskingTypeEnum.none),
    )) {
      if (rjc510790272.length > 1) {
        throw ArgumentError('''
AutoMaskingType.none cannot be selected
along with other AutoMaskingType enums
''');
      }
      _i509464370 = {
        C734481977(er897299797: AutoMaskingTypeEnum.none),
      };
      return;
    }
    _i509464370.addAll(rjc510790272);
    w613848317.d('After setAutoMaskingTypeSet $qzi970050286');
  }

  void ln652363098(Set<C734481977> r352813692) {
    if (r352813692.contains(
      C734481977(er897299797: AutoMaskingTypeEnum.none),
    )) {
      return;
    }
    if (r352813692.contains(
      C734481977(er897299797: AutoMaskingTypeEnum.all),
    )) {
      _i509464370 = {};
      return;
    }

    _i509464370.removeAll(r352813692);
    w613848317.d('After  Unmasking $qzi970050286');
  }

  Set<RenderObject> qiz535478573({
    required BuildContext tcc506136412,
    required List<BuildContext> bic539557098,
  }) {
    w613848317.d('set AutoMasking $qzi970050286');

    final Set<C734481977> c232016444 = Set.from(qzi970050286)
      ..remove(C734481977(er897299797: AutoMaskingTypeEnum.none));

    //
    c232016444.add(C734481977.maskWidget());
    olt582723014.addAll(
      ql791786685(
        tcc506136412: tcc506136412,
        qzi970050286: c232016444,
        bic539557098: bic539557098,
      ),
    );
    w613848317.d('renderObjectsToMask $olt582723014');
    return olt582723014;
  }

  void hly916995671() {
    w613848317.d('renderObjectsToMask clear');
    olt582723014.clear();
  }
}

mixin RenderObjectAutoMaskGetter {
  Set<RenderObject> ql791786685({
    required BuildContext tcc506136412,
    required Set<C734481977> qzi970050286,
    required List<BuildContext> bic539557098,
  }) {
    final Set<RenderObject> qj761530125 = Set.of({});

    void i272939613(Element l235758506) {
      l235758506.visitChildElements((hpp412699972) {
        if (hpp412699972.widget is UnmaskWidget) {
          return;
        }

        //
        if (bic539557098.contains(hpp412699972)) {
          return;
        }
        //
        //
        final bool dj971810000 = qzi970050286.any((dp828748686) {
          if (dp828748686.k77179089.xc650036982(hpp412699972.widget)) {
            return true;
          }
          //
          //
          //
          return dp828748686.k77179089.gq252568297(hpp412699972.widget);
        });
        if (dj971810000) {
          if (hpp412699972.renderObject != null) {
            qj761530125.add(hpp412699972.renderObject!);
          }
          return;
        } else {
          i272939613(hpp412699972);
        }
      });
    }

    i272939613(tcc506136412 as Element);
    return qj761530125;
  }
}
