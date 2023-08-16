import 'package:flutter/material.dart';

extension SpacingExtension on EdgeInsets {
  double get unit => vertical;

  EdgeInsets get v => EdgeInsets.symmetric(vertical: unit);
  EdgeInsets get h => EdgeInsets.symmetric(horizontal: unit);
  EdgeInsets get b => EdgeInsets.only(bottom: unit);
  EdgeInsets get r => EdgeInsets.only(right: unit);
  EdgeInsets get l => EdgeInsets.only(left: unit);
  EdgeInsets get t => EdgeInsets.only(top: unit);
}
