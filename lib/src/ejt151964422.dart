import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/pdz143257096.dart';
import 'package:medallia_dxa/src/df401265225.dart';
import 'package:medallia_dxa/src/w255041854.dart';
import 'package:medallia_dxa/src/vn604849964.dart';

class Jux808717353 with RenderObjectAutoMaskGetter {
  Jux808717353({required Z394369901 bv238917771}) : _s1061096497 = bv238917771;
  final Z394369901 _s1061096497;
  Logger get bc613848811 => _s1061096497.ccx328711108;
  final Set<RenderObject> hv582723536 = Set.of({});
  //
  static final Set<Jvf734481455> _jz418508799 = {
    Jvf734481455(a897300291: AutoMaskingTypeEnum.webView),
    Jvf734481455(a897300291: AutoMaskingTypeEnum.inputText),
  };
  Set<Jvf734481455> _bb509463844 = Set.from(
    _jz418508799,
  );
  Set<Jvf734481455> get qqe970049784 => _bb509463844;
  set qqe970049784(Set<Jvf734481455> c510789782) {
    if (c510789782.contains(
      Jvf734481455(a897300291: AutoMaskingTypeEnum.all),
    )) {
      if (c510789782.length > 1) {
        throw ArgumentError('''
AutoMaskingType.all cannot be selected
along with other AutoMaskingType enums
''');
      }
      final Set<Jvf734481455> x495950909 =
          (c510789782.first.mjp77179591 as F889757767).p613593418();
      _bb509463844 = x495950909;
      return;
    }

    if (c510789782.contains(
      Jvf734481455(a897300291: AutoMaskingTypeEnum.none),
    )) {
      if (c510789782.length > 1) {
        throw ArgumentError('''
AutoMaskingType.none cannot be selected
along with other AutoMaskingType enums
''');
      }
      _bb509463844 = {
        Jvf734481455(a897300291: AutoMaskingTypeEnum.none),
      };
      return;
    }
    _bb509463844.addAll(c510789782);
    bc613848811.d('After setAutoMaskingTypeSet $qqe970049784');
  }

  void ry652363596(Set<Jvf734481455> l352813162) {
    if (l352813162.contains(
      Jvf734481455(a897300291: AutoMaskingTypeEnum.none),
    )) {
      return;
    }
    if (l352813162.contains(
      Jvf734481455(a897300291: AutoMaskingTypeEnum.all),
    )) {
      _bb509463844 = {};
      return;
    }

    _bb509463844.removeAll(l352813162);
    bc613848811.d('After  Unmasking $qqe970049784');
  }

  Set<RenderObject> j535479099({
    required BuildContext wp506135882,
    required List<BuildContext> gud539557628,
  }) {
    bc613848811.d('set AutoMasking $qqe970049784');

    final Set<Jvf734481455> k232015914 = Set.from(qqe970049784)
      ..remove(Jvf734481455(a897300291: AutoMaskingTypeEnum.none));

    //
    k232015914.add(Jvf734481455.maskWidget());
    hv582723536.addAll(
      qkq791787179(
        wp506135882: wp506135882,
        qqe970049784: k232015914,
        gud539557628: gud539557628,
      ),
    );
    bc613848811.d('renderObjectsToMask $hv582723536');
    return hv582723536;
  }

  void gzl916995137() {
    bc613848811.d('renderObjectsToMask clear');
    hv582723536.clear();
  }
}

mixin RenderObjectAutoMaskGetter {
  Set<RenderObject> qkq791787179({
    required BuildContext wp506135882,
    required Set<Jvf734481455> qqe970049784,
    required List<BuildContext> gud539557628,
  }) {
    final Set<RenderObject> qg761529627 = Set.of({});

    void g272939083(Element q235758012) {
      q235758012.visitChildElements((b412700498) {
        if (b412700498.widget is UnmaskWidget) {
          return;
        }

        //
        if (gud539557628.contains(b412700498)) {
          return;
        }
        //
        //
        final bool ep971810502 = qqe970049784.any((nx828748184) {
          if (nx828748184.mjp77179591.ind650036448(b412700498.widget)) {
            return true;
          }
          //
          //
          //
          return nx828748184.mjp77179591.qzp252567807(b412700498.widget);
        });
        if (ep971810502) {
          if (b412700498.renderObject != null) {
            qg761529627.add(b412700498.renderObject!);
          }
          return;
        } else {
          g272939083(b412700498);
        }
      });
    }

    g272939083(wp506135882 as Element);
    return qg761529627;
  }
}
