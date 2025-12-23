import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/jhb17385158.dart';
import 'package:medallia_dxa/src/jn955612702.dart';
import 'package:medallia_dxa/src/df487303334.dart';
import 'package:medallia_dxa/src/i534491748.dart';

class MedalliaDxaRootWidget extends StatefulWidget {
  const MedalliaDxaRootWidget({required this.child});
  final Widget child;

  @override
  State<MedalliaDxaRootWidget> createState() => _qrt678034682();
}

class _qrt678034682 extends State<MedalliaDxaRootWidget> {
  Fh73888579? nf307266615;
  late final Rtv859069492 nm507880749 = Rtv859069492();
  @override
  void initState() {
    if (nm507880749.ztm378495265) return;
    if (!nm507880749.nbb993779051) {
      assert(
        () {
          throw O901570487(
            'MedalliaDxaRootWidget was used before the SDK was initialized',
          );
        }(),
      );
      return;
    }
    nf307266615 = L583050428.buw892083259.nf307266615;

    super.initState();
  }

  @override
  Widget build(BuildContext vdr381227841) {
    return NotificationListener<ScrollNotification>(
      onNotification: (y445764681) {
        nf307266615?.jaw1049996572(y445764681);

        return false;
      },
      child: widget.child,
    );
  }
}
