//
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/xd304042551.dart';

abstract class Q958539657 {
  final Route kcq1001734373;
  final String? m652311908;
  String? du533636350;
  final Map<String, String> p153546733;
  final List<int> j435387847;
  final int fz968880423;
  final int det77243787;
  final BuildContext r1006262589;
  final NavigatorState _j169993755;
  Q958539657({
    required this.kcq1001734373,
    required this.j435387847,
    required this.det77243787,
    required NavigatorState s42731905,
  })  : _j169993755 = s42731905,
        m652311908 = kcq1001734373.settings.name,
        p153546733 = kcq1001734373.settings.arguments is Map<String, String>
            ? kcq1001734373.settings.arguments! as Map<String, String>
            : {},
        fz968880423 = s42731905.hashCode,
        r1006262589 = s42731905.context {
    assert(this is L666222797 || this is Fh463559779);
  }

  factory Q958539657.modal({
    required ModalRoute vg454514689,
    required List<int> j435387847,
    required int det77243787,
    required NavigatorState s42731905,
  }) {
    return L666222797._(
      vg454514689: vg454514689,
      j435387847: j435387847,
      det77243787: det77243787,
      s42731905: s42731905,
    );
  }

  factory Q958539657.nonModal({
    required Route kcq1001734373,
    required List<int> j435387847,
    required int det77243787,
    required NavigatorState s42731905,
  }) {
    return Fh463559779._(
      kcq1001734373: kcq1001734373,
      j435387847: j435387847,
      det77243787: det77243787,
      s42731905: s42731905,
    );
  }

  bool get dan14447736 => kcq1001734373 is PopupRoute;

  @override
  bool operator ==(covariant Q958539657 r304490667) {
    if (identical(this, r304490667)) return true;

    return r304490667.kcq1001734373 == kcq1001734373 &&
        r304490667.m652311908 == m652311908 &&
        r304490667.j435387847 == j435387847;
  }

  @override
  int get hashCode => kcq1001734373.hashCode;

  @override
  String toString() {
    return 'DxaRoute(route: $kcq1001734373, name: $m652311908, arguments: $p153546733, nestedNavigatorsHashcode: $j435387847)';
  }
}

class L666222797 extends Q958539657 with DxaRouteWithModalRederence {
  L666222797._({
    required this.vg454514689,
    required List<int> j435387847,
    required int det77243787,
    required NavigatorState s42731905,
  }) : super(
          kcq1001734373: vg454514689,
          j435387847: j435387847,
          det77243787: det77243787,
          s42731905: s42731905,
        );
  final ModalRoute vg454514689;
  bool get i447820677 => vg454514689.opaque;
  BuildContext? get n304973301 => vg454514689.subtreeContext;
  RenderObject? get ca363204954 {
    return n304973301?.findRenderObject();
  }

  bool get dv4311598 {
    final RenderObject? cfv643259825 = ca363204954;
    if (cfv643259825 == null) return false;
    if (!ca363204954!.viz778818750) {
      return false;
    }

    return cfv643259825.mef753637360;
  }

  Ztd890753760 xrr1033552603(
    Q958539657 ass219402944,
  ) =>
      Ztd890753760(
        vg454514689: kcq1001734373 as ModalRoute,
        j435387847: j435387847,
        det77243787: det77243787,
        ass219402944: ass219402944,
        s42731905: super._j169993755,
      );
  @override
  L666222797 qst588000802() {
    return this;
  }
}

class Ztd890753760 extends L666222797 {
  final Q958539657 ass219402944;

  Ztd890753760({
    required ModalRoute vg454514689,
    required List<int> j435387847,
    required int det77243787,
    required NavigatorState s42731905,
    required this.ass219402944,
  }) : super._(
          vg454514689: vg454514689,
          j435387847: j435387847,
          det77243787: det77243787,
          s42731905: s42731905,
        );
}

class Fh463559779 extends Q958539657 {
  Fh463559779._({
    required Route kcq1001734373,
    required List<int> j435387847,
    required int det77243787,
    required NavigatorState s42731905,
  }) : super(
            kcq1001734373: kcq1001734373,
            j435387847: j435387847,
            det77243787: det77243787,
            s42731905: s42731905);
  Vl564238040 wc101645304(
    L666222797 hnw49977863,
  ) =>
      Vl564238040(
        kcq1001734373: kcq1001734373,
        j435387847: j435387847,
        det77243787: det77243787,
        hnw49977863: hnw49977863,
        s42731905: super._j169993755,
      );
}

class Vl564238040 extends Fh463559779
    with DxaRouteWithModalRederence {
  final L666222797 hnw49977863;

  Vl564238040({
    required Route kcq1001734373,
    required List<int> j435387847,
    required int det77243787,
    required NavigatorState s42731905,
    required this.hnw49977863,
  }) : super._(
          kcq1001734373: kcq1001734373,
          j435387847: j435387847,
          det77243787: det77243787,
          s42731905: s42731905,
        );

  @override
  L666222797 qst588000802() {
    return hnw49977863;
  }
}

mixin DxaRouteWithModalRederence on Q958539657 {
  L666222797 qst588000802();
}
