import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/kaj685172388.dart';
import 'package:medallia_dxa/src/sg157706751.dart';
import 'package:medallia_dxa/src/xx764151857.dart';
import 'package:medallia_dxa/src/nzf988479047.dart';

class Bya808718017 with RenderObjectAutoMaskGetter {
  Bya808718017({required Cqd394369413 d238918243}) : _fq1061097177 = d238918243;
  final Cqd394369413 _fq1061097177;
  final Set<RenderObject> tt582722872 = Set.of({});
  //
  static final Set<N734482119> _i418508055 = {
    N734482119(zex897299883: AutoMaskingTypeEnum.platformViews),
    N734482119(zex897299883: AutoMaskingTypeEnum.inputText),
    N734482119(zex897299883: AutoMaskingTypeEnum.magnifier),
  };
  Set<N734482119> _qvo509464524 = Set.from(
    _i418508055,
  );
  Set<N734482119> get osd970050064 => _qvo509464524;
  set osd970050064(Set<N734482119> qdt510790270) {
    if (qdt510790270.contains(
      N734482119(zex897299883: AutoMaskingTypeEnum.all),
    )) {
      if (qdt510790270.length > 1) {
        throw ArgumentError('''
AutoMaskingType.all cannot be selected
along with other AutoMaskingType enums
''');
      }
      final Set<N734482119> pf495951573 =
          (qdt510790270.first.u77178927 as Ae889758383).s613594018();
      _qvo509464524 = pf495951573;
      return;
    }

    _qvo509464524.addAll(qdt510790270);
    _fq1061097177.n141629376(
      Gs355691751.sq959099990,
      'Automatic masking configuration: $osd970050064',
    );
  }

  void ga652363172(Set<N734482119> m352813698) {
    if (m352813698.contains(
      N734482119(zex897299883: AutoMaskingTypeEnum.all),
    )) {
      _qvo509464524 = {};
      return;
    }

    _qvo509464524.removeAll(m352813698);
  }

  Set<RenderObject> q535478739({
    required BuildContext ngq506136482,
    required List<BuildContext> ttj539556884,
  }) {
    final Set<N734482119> f232016578 =
        Set.from(osd970050064);

    //
    f232016578.add(N734482119.maskWidget());
    tt582722872.addAll(
      kpc791786563(
        ngq506136482: ngq506136482,
        osd970050064: f232016578,
        ttj539556884: ttj539556884,
      ),
    );
    return tt582722872;
  }

  void b916995753() {
    tt582722872.clear();
  }
}

mixin RenderObjectAutoMaskGetter {
  Set<RenderObject> kpc791786563({
    required BuildContext ngq506136482,
    required Set<N734482119> osd970050064,
    required List<BuildContext> ttj539556884,
  }) {
    final Set<RenderObject> v761530355 = Set.of({});

    void wx272939683(Element les235758420) {
      les235758420.visitChildElements((v412700090) {
        if (v412700090.widget is UnmaskWidget) {
          return;
        }

        //
        if (ttj539556884.contains(v412700090)) {
          return;
        }
        //
        //
        final bool e971809838 = osd970050064.any((g828748656) {
          if (g828748656.u77178927.g650036744(v412700090.widget)) {
            return true;
          }
          //
          //
          //
          return g828748656.u77178927.hgn252568087(v412700090.widget);
        });
        if (e971809838) {
          if (v412700090.renderObject != null) {
            v761530355.add(v412700090.renderObject!);
          }
          return;
        } else {
          wx272939683(v412700090);
        }
      });
    }

    wx272939683(ngq506136482 as Element);
    return v761530355;
  }
}
