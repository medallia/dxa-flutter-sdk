import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/imr143257068.dart';
import 'package:medallia_dxa/src/a401265069.dart';
import 'package:medallia_dxa/src/fsv255042266.dart';
import 'package:medallia_dxa/src/hzw604849352.dart';

class Ctr808718285 with RenderObjectAutoMaskGetter {
  Ctr808718285({required A394369161 nem238918511}) : _zah1061097429 = nem238918511;
  final A394369161 _zah1061097429;
  Logger get qa613848335 => _zah1061097429.cvw328710176;
  final Set<RenderObject> er582722612 = Set.of({});
  //
  static final Set<Sqy734482379> _ap418507803 = {
    Sqy734482379(vks897299623: AutoMaskingTypeEnum.webView),
    Sqy734482379(vks897299623: AutoMaskingTypeEnum.inputText),
  };
  Set<Sqy734482379> _mk509464256 = Set.from(
    _ap418507803,
  );
  Set<Sqy734482379> get g970050332 => _mk509464256;
  set g970050332(Set<Sqy734482379> iit510790514) {
    if (iit510790514.contains(
      Sqy734482379(vks897299623: AutoMaskingTypeEnum.all),
    )) {
      if (iit510790514.length > 1) {
        throw ArgumentError('''
AutoMaskingType.all cannot be selected
along with other AutoMaskingType enums
''');
      }
      final Set<Sqy734482379> wqc495951833 =
          (iit510790514.first.kx77179171 as B889758627).dl613593774();
      _mk509464256 = wqc495951833;
      return;
    }

    if (iit510790514.contains(
      Sqy734482379(vks897299623: AutoMaskingTypeEnum.none),
    )) {
      if (iit510790514.length > 1) {
        throw ArgumentError('''
AutoMaskingType.none cannot be selected
along with other AutoMaskingType enums
''');
      }
      _mk509464256 = {
        Sqy734482379(vks897299623: AutoMaskingTypeEnum.none),
      };
      return;
    }
    _mk509464256.addAll(iit510790514);
    qa613848335.d('After setAutoMaskingTypeSet $g970050332');
  }

  void cb652362920(Set<Sqy734482379> cyt352813966) {
    if (cyt352813966.contains(
      Sqy734482379(vks897299623: AutoMaskingTypeEnum.none),
    )) {
      return;
    }
    if (cyt352813966.contains(
      Sqy734482379(vks897299623: AutoMaskingTypeEnum.all),
    )) {
      _mk509464256 = {};
      return;
    }

    _mk509464256.removeAll(cyt352813966);
    qa613848335.d('After  Unmasking $g970050332');
  }

  Set<RenderObject> cfd535478495({
    required BuildContext c506136238,
    required List<BuildContext> qi539557144,
  }) {
    qa613848335.d('set AutoMasking $g970050332');

    final Set<Sqy734482379> a232016846 = Set.from(g970050332)
      ..remove(Sqy734482379(vks897299623: AutoMaskingTypeEnum.none));

    //
    a232016846.add(Sqy734482379.maskWidget());
    er582722612.addAll(
      uee791786831(
        c506136238: c506136238,
        g970050332: a232016846,
        qi539557144: qi539557144,
      ),
    );
    qa613848335.d('renderObjectsToMask $er582722612');
    return er582722612;
  }

  void e916996005() {
    qa613848335.d('renderObjectsToMask clear');
    er582722612.clear();
  }
}

mixin RenderObjectAutoMaskGetter {
  Set<RenderObject> uee791786831({
    required BuildContext c506136238,
    required Set<Sqy734482379> g970050332,
    required List<BuildContext> qi539557144,
  }) {
    final Set<RenderObject> vte761530111 = Set.of({});

    void cab272939951(Element a235758168) {
      a235758168.visitChildElements((yte412699830) {
        if (yte412699830.widget is UnmaskWidget) {
          return;
        }

        //
        if (qi539557144.contains(yte412699830)) {
          return;
        }
        //
        //
        final bool eei971810082 = g970050332.any((td828748412) {
          if (td828748412.kx77179171.zwp650036996(yte412699830.widget)) {
            return true;
          }
          //
          //
          //
          return td828748412.kx77179171.pjp252568347(yte412699830.widget);
        });
        if (eei971810082) {
          if (yte412699830.renderObject != null) {
            vte761530111.add(yte412699830.renderObject!);
          }
          return;
        } else {
          cab272939951(yte412699830);
        }
      });
    }

    cab272939951(c506136238 as Element);
    return vte761530111;
  }
}
