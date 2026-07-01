import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/ov17384723.dart';
import 'package:medallia_dxa/src/w955612619.dart';
import 'package:medallia_dxa/src/q487304051.dart';
import 'package:medallia_dxa/src/e534491569.dart';

class MedalliaDxaRootWidget extends StatefulWidget {
  const MedalliaDxaRootWidget({required this.child});
  final Widget child;

  @override
  State<MedalliaDxaRootWidget> createState() => _y678035247();
}

class _y678035247 extends State<MedalliaDxaRootWidget> {
  Eh73887894? ah307267554;
  late final Q859070433 cdw507881208 = Q859070433();
  @override
  void initState() {
    if (cdw507881208.w378495732) return;
    if (!cdw507881208.wyt993779390) {
      assert(
        () {
          throw J901569634(
            'MedalliaDxaRootWidget was used before the SDK was initialized',
          );
        }(),
      );
      return;
    }
    ah307267554 = B583051113.dfo892084206.ah307267554;

    super.initState();
  }

  @override
  Widget build(BuildContext v381227156) {
    return NotificationListener<ScrollNotification>(
      onNotification: (km445765532) {
        ah307267554?.qq1049997001(km445765532);

        return false;
      },
      child: widget.child,
    );
  }
}
