import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/gss685171990.dart';
import 'package:medallia_dxa/src/ac157706829.dart';
import 'package:medallia_dxa/src/vz764152707.dart';
import 'package:medallia_dxa/src/dbk988478965.dart';

class Ea808717683 with RenderObjectAutoMaskGetter {
  Ea808717683({required A394369591 lf238918097}) : _ifl1061096811 = lf238918097;
  final A394369591 _ifl1061096811;
  final Set<RenderObject> k582723210 = Set.of({});
  //
  static final Set<Hgy734481781> _l418508453 = {
    Hgy734481781(l897299993: AutoMaskingTypeEnum.platformViews),
    Hgy734481781(l897299993: AutoMaskingTypeEnum.inputText),
    Hgy734481781(l897299993: AutoMaskingTypeEnum.magnifier),
  };
  Set<Hgy734481781> _b509463678 = Set.from(
    _l418508453,
  );
  Set<Hgy734481781> get jg970049954 => _b509463678;
  set jg970049954(Set<Hgy734481781> ovs510790092) {
    if (ovs510790092.contains(
      Hgy734481781(l897299993: AutoMaskingTypeEnum.all),
    )) {
      if (ovs510790092.length > 1) {
        throw ArgumentError('''
AutoMaskingType.all cannot be selected
along with other AutoMaskingType enums
''');
      }
      final Set<Hgy734481781> ni495951207 =
          (ovs510790092.first.e77179805 as Qmj889757981).tf613593104();
      _b509463678 = ni495951207;
      return;
    }

    _b509463678.addAll(ovs510790092);
    _ifl1061096811.tog141628530(
      Qqg355692373.ad959100900,
      'Automatic masking configuration: $jg970049954',
    );
  }

  void c652363286(Set<Hgy734481781> wwg352813360) {
    if (wwg352813360.contains(
      Hgy734481781(l897299993: AutoMaskingTypeEnum.all),
    )) {
      _b509463678 = {};
      return;
    }

    _b509463678.removeAll(wwg352813360);
  }

  Set<RenderObject> aqf535478881({
    required BuildContext y506135568,
    required List<BuildContext> qi539557798,
  }) {
    final Set<Hgy734481781> om232016240 =
        Set.from(jg970049954);

    //
    om232016240.add(Hgy734481781.maskWidget());
    k582723210.addAll(
      tn791787505(
        y506135568: y506135568,
        jg970049954: om232016240,
        qi539557798: qi539557798,
      ),
    );
    return k582723210;
  }

  void cl916995355() {
    k582723210.clear();
  }
}

mixin RenderObjectAutoMaskGetter {
  Set<RenderObject> tn791787505({
    required BuildContext y506135568,
    required Set<Hgy734481781> jg970049954,
    required List<BuildContext> qi539557798,
  }) {
    final Set<RenderObject> qa761529409 = Set.of({});

    void czw272939281(Element hbt235757798) {
      hbt235757798.visitChildElements((bq412700168) {
        if (bq412700168.widget is UnmaskWidget) {
          return;
        }

        //
        if (qi539557798.contains(bq412700168)) {
          return;
        }
        //
        //
        final bool atw971810716 = jg970049954.any((u828747970) {
          if (u828747970.e77179805.c650036666(bq412700168.widget)) {
            return true;
          }
          //
          //
          //
          return u828747970.e77179805.cn252567973(bq412700168.widget);
        });
        if (atw971810716) {
          if (bq412700168.renderObject != null) {
            qa761529409.add(bq412700168.renderObject!);
          }
          return;
        } else {
          czw272939281(bq412700168);
        }
      });
    }

    czw272939281(y506135568 as Element);
    return qa761529409;
  }
}
