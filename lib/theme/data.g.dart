
//
// theme/data.g.dart
//

// Do not edit directly
// Generated on Fri, 11 Aug 2023 01:28:37 GMT



part of 'theme.g.dart';

class WiserThemeData  {
   const WiserThemeData({
      required this.color,
    });

    factory WiserThemeData.regular() => _regular;

    static final WiserThemeData _regular = WiserThemeData(
      color: WiserColorData.regular(),
    );

    final WiserColorData color;
    

    
}






class WiserColorData  {
   const WiserColorData({
      required this.primaryColor,
      required this.rosapink,
      required this.testeColor,
    });



    factory WiserColorData.regular() => const WiserColorData(
      primaryColor: Color(0xFF212121),
      rosapink: Color(0xFFF202DA),
      testeColor: Color(0xFF23FD8D),
    );


    final Color primaryColor;
    final Color rosapink;
    final Color testeColor;
    


}



