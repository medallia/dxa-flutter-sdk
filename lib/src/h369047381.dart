import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/jwa685172629.dart';
import 'package:medallia_dxa/src/emj157706446.dart';
import 'package:medallia_dxa/src/br764152064.dart';
import 'package:medallia_dxa/src/mpo988479350.dart';

class Lau808718320 with RenderObjectAutoMaskGetter {
  Lau808718320({required Jnx394369204 us238918482}) : _e1061097448 = us238918482;
  final Jnx394369204 _e1061097448;
  final Set<RenderObject> dl582722569 = Set.of({});
  //
  static final Set<Rac734482422> _jzg418507814 = {
    Rac734482422(zr897299610: AutoMaskingTypeEnum.platformViews),
    Rac734482422(zr897299610: AutoMaskingTypeEnum.inputText),
    Rac734482422(zr897299610: AutoMaskingTypeEnum.magnifier),
  };
  Set<Rac734482422> _z509464317 = Set.from(
    _jzg418507814,
  );
  Set<Rac734482422> get xke970050337 => _z509464317;
  set xke970050337(Set<Rac734482422> ky510790479) {
    if (ky510790479.contains(
      Rac734482422(zr897299610: AutoMaskingTypeEnum.all),
    )) {
      if (ky510790479.length > 1) {
        throw ArgumentError('''
AutoMaskingType.all cannot be selected
along with other AutoMaskingType enums
''');
      }
      final Set<Rac734482422> mk495951844 =
          (ky510790479.first.el77179166 as E889758622).r613593747();
      _z509464317 = mk495951844;
      return;
    }

    _z509464317.addAll(ky510790479);
    _e1061097448.w141629169(
      F355691990.z959100263,
      'Automatic masking configuration: $xke970050337',
    );
  }

  void fi652362901(Set<Rac734482422> i352814003) {
    if (i352814003.contains(
      Rac734482422(zr897299610: AutoMaskingTypeEnum.all),
    )) {
      _z509464317 = {};
      return;
    }

    _z509464317.removeAll(i352814003);
  }

  Set<RenderObject> gia535478498({
    required BuildContext cgw506136211,
    required List<BuildContext> aqm539557157,
  }) {
    final Set<Rac734482422> s232016883 =
        Set.from(xke970050337);

    //
    s232016883.add(Rac734482422.maskWidget());
    dl582722569.addAll(
      r791786866(
        cgw506136211: cgw506136211,
        xke970050337: s232016883,
        aqm539557157: aqm539557157,
      ),
    );
    return dl582722569;
  }

  void uba916995992() {
    dl582722569.clear();
  }
}

mixin RenderObjectAutoMaskGetter {
  Set<RenderObject> r791786866({
    required BuildContext cgw506136211,
    required Set<Rac734482422> xke970050337,
    required List<BuildContext> aqm539557157,
  }) {
    final Set<RenderObject> s761530050 = Set.of({});

    void yxk272939922(Element i235758181) {
      i235758181.visitChildElements((kdw412699787) {
        if (kdw412699787.widget is UnmaskWidget) {
          return;
        }

        //
        if (aqm539557157.contains(kdw412699787)) {
          return;
        }
        //
        //
        final bool v971810079 = xke970050337.any((n828748353) {
          if (n828748353.el77179166.jf650037049(kdw412699787.widget)) {
            return true;
          }
          //
          //
          //
          return n828748353.el77179166.tn252568358(kdw412699787.widget);
        });
        if (v971810079) {
          if (kdw412699787.renderObject != null) {
            s761530050.add(kdw412699787.renderObject!);
          }
          return;
        } else {
          yxk272939922(kdw412699787);
        }
      });
    }

    yxk272939922(cgw506136211 as Element);
    return s761530050;
  }
}
