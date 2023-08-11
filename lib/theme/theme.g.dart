
//
// theme/theme.g.dart
//

// Do not edit directly
// Generated on Fri, 11 Aug 2023 01:28:37 GMT



import 'package:flutter/widgets.dart';


part 'data.g.dart';

class WiserTheme extends InheritedWidget {
    const WiserTheme({
      Key? key,
      required this.data,
      required Widget child,
    }) : super(key: key, child: child,);

    final WiserThemeData data;

    static WiserThemeData of(BuildContext context) {
      return context.dependOnInheritedWidgetOfExactType<WiserTheme>()?.data ?? WiserThemeData.regular();
    }

    @override
    bool updateShouldNotify(covariant WiserTheme oldWidget) {
      return oldWidget.data != data;
    }
}