import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/r143257285.dart';
import 'package:medallia_dxa/src/b401265284.dart';
import 'package:medallia_dxa/src/fa255042035.dart';
import 'package:medallia_dxa/src/zk604850145.dart';

class S808717540 with RenderObjectAutoMaskGetter {
  S808717540({required Sn394369952 tdf238917702}) : _a1061096700 = tdf238917702;
  final Sn394369952 _a1061096700;
  final Set<RenderObject> r582723357 = Set.of({});
  //
  static final Set<Ntc734481634> _hjb418508594 = {
    Ntc734481634(fpi897300366: AutoMaskingTypeEnum.platformViews),
    Ntc734481634(fpi897300366: AutoMaskingTypeEnum.inputText),
    Ntc734481634(fpi897300366: AutoMaskingTypeEnum.magnifier),
  };
  Set<Ntc734481634> _mq509464041 = Set.from(
    _hjb418508594,
  );
  Set<Ntc734481634> get sei970049589 => _mq509464041;
  set sei970049589(Set<Ntc734481634> dnn510789723) {
    if (dnn510789723.contains(
      Ntc734481634(fpi897300366: AutoMaskingTypeEnum.all),
    )) {
      if (dnn510789723.length > 1) {
        throw ArgumentError('''
AutoMaskingType.all cannot be selected
along with other AutoMaskingType enums
''');
      }
      final Set<Ntc734481634> fz495951088 =
          (dnn510789723.first.r77179402 as Fx889757834).lbs613593479();
      _mq509464041 = fz495951088;
      return;
    }

    _mq509464041.addAll(dnn510789723);
    _a1061096700.eoq141628901(
      T355692226.ft959100531,
      'Automatic masking configuration: $sei970049589',
    );
  }

  void b652363649(Set<Ntc734481634> jh352813223) {
    if (jh352813223.contains(
      Ntc734481634(fpi897300366: AutoMaskingTypeEnum.all),
    )) {
      _mq509464041 = {};
      return;
    }

    _mq509464041.removeAll(jh352813223);
  }

  Set<RenderObject> lhp535479286({
    required BuildContext e506135943,
    required List<BuildContext> nl539557425,
  }) {
    final Set<Ntc734481634> rie232016103 =
        Set.from(sei970049589);

    //
    rie232016103.add(Ntc734481634.maskWidget());
    r582723357.addAll(
      nf791787110(
        e506135943: e506135943,
        sei970049589: rie232016103,
        nl539557425: nl539557425,
      ),
    );
    return r582723357;
  }

  void lco916995212() {
    r582723357.clear();
  }
}

mixin RenderObjectAutoMaskGetter {
  Set<RenderObject> nf791787110({
    required BuildContext e506135943,
    required Set<Ntc734481634> sei970049589,
    required List<BuildContext> nl539557425,
  }) {
    final Set<RenderObject> ue761529814 = Set.of({});

    void ddm272939142(Element h235757937) {
      h235757937.visitChildElements((aty412700575) {
        if (aty412700575.widget is UnmaskWidget) {
          return;
        }

        //
        if (nl539557425.contains(aty412700575)) {
          return;
        }
        //
        //
        final bool z971810315 = sei970049589.any((r828748117) {
          if (r828748117.r77179402.ra650036269(aty412700575.widget)) {
            return true;
          }
          //
          //
          //
          return r828748117.r77179402.pl252567602(aty412700575.widget);
        });
        if (z971810315) {
          if (aty412700575.renderObject != null) {
            ue761529814.add(aty412700575.renderObject!);
          }
          return;
        } else {
          ddm272939142(aty412700575);
        }
      });
    }

    ddm272939142(e506135943 as Element);
    return ue761529814;
  }
}
