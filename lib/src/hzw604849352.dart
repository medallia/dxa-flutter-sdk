import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UnmaskWidget extends StatelessWidget {
  const UnmaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      return Srk98876303(fwy54445204: child);
    }
    return child;
  }
}

class Srk98876303 extends InheritedWidget {
  const Srk98876303({required Widget fwy54445204})
      : super(child: fwy54445204);

  @override
  bool updateShouldNotify(covariant InheritedWidget wj577370083) {
    return false;
  }
}
