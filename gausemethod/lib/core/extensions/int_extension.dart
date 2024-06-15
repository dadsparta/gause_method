import 'package:flutter/material.dart';

extension SizedBoxes on num {
  Widget get height => SizedBox(height: toDouble());

  Widget get width => SizedBox(width: toDouble());
}
