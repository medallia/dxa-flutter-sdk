import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/v17385463.dart';
import 'package:medallia_dxa/src/hx955612975.dart';
import 'package:medallia_dxa/src/e487303575.dart';
import 'package:medallia_dxa/src/mo534491989.dart';

class MedalliaDxaRootWidget extends StatefulWidget {
  const MedalliaDxaRootWidget({required this.child});
  final Widget child;

  @override
  State<MedalliaDxaRootWidget> createState() => _wuh678034891();
}

class _wuh678034891 extends State<MedalliaDxaRootWidget> {
  N73888370? ys307266822;
  late final Rhw859069701 bpv507880476 = Rhw859069701();
  @override
  void initState() {
    if (bpv507880476.p378494992) return;
    if (!bpv507880476.u993778778) {
      assert(
        () {
          throw Z901570182(
            'MedalliaDxaRootWidget was used before the SDK was initialized',
          );
        }(),
      );
      return;
    }
    ys307266822 = Zmk583050637.u892083466.ys307266822;

    super.initState();
  }

  @override
  Widget build(BuildContext kuz381227632) {
    return NotificationListener<ScrollNotification>(
      onNotification: (a445764984) {
        ys307266822?.k1049996333(a445764984);

        return false;
      },
      child: widget.child,
    );
  }
}
