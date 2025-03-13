import 'package:flutter/material.dart';

sealed class AppDimens{

  static const d20 = 20.0;
  static const d50 = 50.0;
  static const d200 = 200.0;
  static const d300 = 300.0;
  static const d150 = 150.0;
  static const d70 = 70.0;
  static const d40 = 40.0;
  static const d30 = 30.0;
  static const d500 = 500.0;
  static EdgeInsets p40 = EdgeInsets.all(40.0);
  static EdgeInsets p30 = EdgeInsets.all(30.0);

  static EdgeInsets pAll10 = const EdgeInsets.all(10.0);

  static Radius r30 = Radius.circular(30);
  static BorderRadius r20 = BorderRadius.circular(20);

  static SizedBox w5 = SizedBox(width: 5);
  static SizedBox w20 = SizedBox(width: 20);
  static SizedBox w30 = SizedBox(width: 30);

  static SizedBox h5 = SizedBox(height: 5);
  static SizedBox h20 = SizedBox(height: 20);
  static SizedBox h30 = SizedBox(height: 30);

}