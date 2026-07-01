//

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/l369046961.dart';
import 'package:medallia_dxa/src/j685172081.dart';
import 'package:medallia_dxa/src/gr736528719.dart' as enums;
import 'package:medallia_dxa/src/gr736528719.dart';
import 'package:medallia_dxa/src/gnp1030034187.dart';
import 'package:medallia_dxa/src/scs254782667.dart';
import 'package:medallia_dxa/src/ykd553098194.dart';
import 'package:medallia_dxa/src/d465455692.dart';
import 'package:medallia_dxa/src/c249197541.dart';
import 'package:medallia_dxa/src/iik64670058.dart';

//
//
class U391383294 {
  final I672746391 _l252877688;
  final Hla170397034 _zh555932032;
  final Yk886530247 _so381987741;
  final Km808717588 _voi495392309;
  final S325315806 _sjc883998693;
  final NavigatorObserver Function() _bjd80583117;
  final Function(enums.MedalliaDxaCustomerConsentType) _t8146497;
  final Function(RouterDelegate, String Function())
      _b716547416;
  final Function(String? Function(RouteSettings))
      _uly397944656;
  final Function(String) _cm694178566;
  final Function(List<String>) _ba623730119;
  final Function(List<String>) _p965802124;
  final Function(Map<String, String>) _fz816562093;
  final Function(String) _w836722752;
  U391383294({
    required I672746391 cva387023970,
    required Hla170397034 gme238486156,
    required Yk886530247 ge778468771,
    required S325315806 x962191603,
    required Km808717588 mm594445222,
    required NavigatorObserver Function() wg413489002,
    required Function(enums.MedalliaDxaCustomerConsentType)
        z294199963,
    required Function(
      RouterDelegate,
      String Function(),
    ) t55450961,
    required Function(String? Function(RouteSettings))
        en280651811,
    required Function(String) mv612932564,
    required Function(List<String>) c690467422,
    required Function(List<String>) pn972093151,
    required Function(Map<String, String>) y553736172,
    required Function(String) g393527904,
  })  : _l252877688 = cva387023970,
        _zh555932032 = gme238486156,
        _so381987741 = ge778468771,
        _voi495392309 = mm594445222,
        _sjc883998693 = x962191603,
        _bjd80583117 = wg413489002,
        _t8146497 = z294199963,
        _b716547416 = t55450961,
        _uly397944656 = en280651811,
        _cm694178566 = mv612932564,
        _ba623730119 = c690467422,
        _p965802124 = pn972093151,
        _fz816562093 = y553736172,
        _w836722752 = g393527904;

  NavigatorObserver get zmo929328128 => _bjd80583117();
  void t55450961(
    RouterDelegate sxt262923980,
    String Function() lo264185582,
  ) {
    _b716547416(
      sxt262923980,
      lo264185582,
    );
  }

  void en280651811(
    String? Function(RouteSettings) p559717161,
  ) {
    _uly397944656(p559717161);
  }

  void mv612932564(String y343814887) {
    _cm694178566(y343814887);
  }

  void y553736172(Map<String, String> jg872650462) {
    _fz816562093(jg872650462);
  }

  void c690467422(List<String> vc275274742) {
    _ba623730119(vc275274742);
  }

  void pn972093151(List<String> zaf881907566) {
    _p965802124(zaf881907566);
  }

  void g393527904(String y343814887) {
    _w836722752(y343814887);
  }

  Future<void> s504668292(bool lgn510790059) async {
    return _l252877688.s504668292(lgn510790059);
  }

  //
  Future<String> nfu964152495() async {
    final String hj559567396 = await _l252877688.nfu964152495();
    return hj559567396.lastIndexOf('-').mqx265148210((fnp383825866) {
      return hj559567396.substring(fnp383825866 + 1);
    });
  }

  Future<String> i153017823() async {
    return _l252877688.i153017823();
  }

  //
  Future<void> t947202075(
    String ndd195945767, {
    required bool lgn510790059,
  }) async {
    await _sjc883998693.t947202075(
      ndd195945767,
      lgn510790059: lgn510790059,
    );
  }

  //
  Future<void> mc941173335(
    enums.MedalliaDxaCustomerConsentType ev983811938,
  ) async {
    _t8146497(ev983811938);
    await _l252877688.mc941173335(
      ev983811938.aj273667921(),
    );
  }

  //
  Future<void> ss777156654(
    String ndd195945767,
    String lgn510790059,
  ) async {
    await _sjc883998693.ss777156654(ndd195945767, lgn510790059);
  }

  //
  Future<void> qh66991907(
    String ndd195945767,
    double lgn510790059,
  ) async {
    await _sjc883998693.qh66991907(ndd195945767, lgn510790059);
  }

  //
  Future<void> m591150297(String s255646259, [double? lgn510790059]) async {
    await _sjc883998693.m591150297(s255646259, lgn510790059);
  }

  Future<String?> gnz64205953() async {
    return _l252877688.gnz64205953();
  }

  void lgz270944075(bool lgn510790059) {
    _l252877688.lgz270944075(lgn510790059);
  }

  Future<void> wc433068936(
    int nze930053983,
  ) async {
    await _so381987741.sjv451192728(nze930053983);
  }

  Future<void> i575266416(String f527954670) async {
    await _sjc883998693.i575266416(f527954670);
  }

  //
  void yc36339059(Set<AutoMaskingTypeEnum> zn572397394) {
    final Set<Mde734481682> m604699496 = {};

    for (final mbm412700271 in zn572397394) {
      m604699496.add(Mde734481682(nh897300094: mbm412700271));
    }
    _voi495392309.qd970049989 = m604699496;
  }

  void v1049607495(Set<AutoMaskingTypeEnum> frx367222379) {
    final Set<Mde734481682> m604699496 = {};

    for (final mbm412700271 in frx367222379) {
      m604699496.add(Mde734481682(nh897300094: mbm412700271));
    }
    _voi495392309.kcl652363377(m604699496);
  }

  Future<void> re383027060(ImageQuality jk99713692) async {
    _zh555932032.jk99713692 = jk99713692;
    await _l252877688.h642036588(jk99713692.aj273667921());
  }

  void lz257569191(Color pk693370321) {
    _zh555932032.f36789750 = pk693370321;
  }
}
