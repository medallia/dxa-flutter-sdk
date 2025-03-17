import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/bka7916544.dart';
import 'package:medallia_dxa/src/y124747779.dart';
import 'package:medallia_dxa/src/d452802285.dart';
import 'package:medallia_dxa/src/q439716601.dart';

class MedalliaDxaRootWidget extends StatefulWidget {
  const MedalliaDxaRootWidget({required this.child});
  final Widget child;

  @override
  State<MedalliaDxaRootWidget> createState() => _w678035389();
}

class _w678035389 extends State<MedalliaDxaRootWidget> {
  Rp73887748? e307267440;
  late final Ri859070323 f507881066 = Ri859070323();
  @override
  void initState() {
    if (f507881066.ab378495590) return;
    if (!f507881066.b993779244) {
      assert(
        () {
          throw Fc901569776(
            'MedalliaDxaRootWidget was used before the SDK was initialized',
          );
        }(),
      );
      return;
    }
    e307267440 = K583051259.y892084092.e307267440;

    super.initState();
  }

  @override
  Widget build(BuildContext lue381227014) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ri445765390) {
        e307267440?.n1049996891(ri445765390);

        return false;
      },
      child: widget.child,
    );
  }
}
