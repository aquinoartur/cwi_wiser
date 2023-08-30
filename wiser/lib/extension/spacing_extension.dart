import 'package:flutter/material.dart';

extension SpacingExtension on EdgeInsets {
  double get value => top;
  String get str => value.toString();

  EdgeInsets get v => EdgeInsets.symmetric(vertical: value);
  EdgeInsets get h => EdgeInsets.symmetric(horizontal: value);
  EdgeInsets get b => EdgeInsets.only(bottom: value);
  EdgeInsets get r => EdgeInsets.only(right: value);
  EdgeInsets get l => EdgeInsets.only(left: value);
  EdgeInsets get t => EdgeInsets.only(top: value);

  Widget get verticalGap => SizedBox(height: value );
  Widget get horizontalGap => SizedBox(width: value );
}
