import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UnmaskWidget extends StatelessWidget {
  const UnmaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      return Zt98876321(l54445242: child);
    }
    return child;
  }
}

class Zt98876321 extends InheritedWidget {
  const Zt98876321({required Widget l54445242})
      : super(child: l54445242);

  @override
  bool updateShouldNotify(covariant InheritedWidget qam577370061) {
    return false;
  }
}
