import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/rsd17384820.dart';
import 'package:medallia_dxa/src/vx955612588.dart';
import 'package:medallia_dxa/src/sb487303956.dart';
import 'package:medallia_dxa/src/p534491606.dart';

class MedalliaDxaRootWidget extends StatefulWidget {
  const MedalliaDxaRootWidget({required this.child});
  final Widget child;

  @override
  State<MedalliaDxaRootWidget> createState() => _hu678035272();
}

class _hu678035272 extends State<MedalliaDxaRootWidget> {
  Y73887985? rpo307267461;
  late final R859070342 dk507881119 = R859070342();
  @override
  void initState() {
    if (dk507881119.p378495635) return;
    if (!dk507881119.e993779417) {
      assert(
        () {
          throw Zqp901569541(
            'MedalliaDxaRootWidget was used before the SDK was initialized',
          );
        }(),
      );
      return;
    }
    rpo307267461 = Z583051022.n892084105.rpo307267461;

    super.initState();
  }

  @override
  Widget build(BuildContext o381227251) {
    return NotificationListener<ScrollNotification>(
      onNotification: (l445765627) {
        rpo307267461?.qi1049996974(l445765627);

        return false;
      },
      child: widget.child,
    );
  }
}
