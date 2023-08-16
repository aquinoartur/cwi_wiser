import 'package:flutter/material.dart';

extension SpacingExtension on EdgeInsets {
  double get unit => vertical;

  EdgeInsets get v => EdgeInsets.symmetric(vertical: unit);
  EdgeInsets get h => EdgeInsets.symmetric(horizontal: unit);
}
