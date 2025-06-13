import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/wsu17385396.dart';
import 'package:medallia_dxa/src/a955613036.dart';
import 'package:medallia_dxa/src/s487303636.dart';
import 'package:medallia_dxa/src/duk534491926.dart';

class MedalliaDxaRootWidget extends StatefulWidget {
  const MedalliaDxaRootWidget({required this.child});
  final Widget child;

  @override
  State<MedalliaDxaRootWidget> createState() => _elp678034824();
}

class _elp678034824 extends State<MedalliaDxaRootWidget> {
  K73888305? tyc307266885;
  late final V859069766 j507880543 = V859069766();
  @override
  void initState() {
    if (j507880543.xqb378495059) return;
    if (!j507880543.ak993778713) {
      assert(
        () {
          throw G901570245(
            'MedalliaDxaRootWidget was used before the SDK was initialized',
          );
        }(),
      );
      return;
    }
    tyc307266885 = Fn583050702.gj892083529.tyc307266885;

    super.initState();
  }

  @override
  Widget build(BuildContext ca381227571) {
    return NotificationListener<ScrollNotification>(
      onNotification: (m445764923) {
        tyc307266885?.vp1049996398(m445764923);

        return false;
      },
      child: widget.child,
    );
  }
}
