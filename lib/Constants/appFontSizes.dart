import 'package:flutter/material.dart';

class AppFontSizes {
  late double fontSize8;
  late double fontSize10;
  late double fontSize12;
  late double fontSize13;
  late double fontSize14;
  late double fontSize15;
  late double fontSize16;
  late double fontSize17;
  late double fontSize18;
  late double fontSize20;
  late double fontSize22;
  late double fontSize24;
  late double fontSize32;
  late double fontSize36;
  late double fontSize40;
  late double fontSize48;
  late double fontSize53;
  late double fontSize60;
  late double fontSize65;
  late double fontSize80;

  AppFontSizes(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    // fontSize8 = h * 0.02;
    fontSize8 = h * 0.0105;
    // fontSize10 = h * 0.0244;
    fontSize10 = h * 0.0142;
    // fontSize12 = h * 0.029;
    fontSize12 = h * 0.016;
    fontSize13 = h * 0.032;
    // fontSize14 = h * 0.034;
    fontSize14 = h * 0.0189;
    fontSize15 = h * 0.0365;
    // fontSize16 = h * 0.0385;
    fontSize16 = h * 0.0215;
    fontSize17 = h * 0.041;
    fontSize18 = h * 0.0435;
    fontSize20 = h * 0.0485;
    fontSize22 = h * 0.0535;
    fontSize24 = h * 0.0585;
    fontSize32 = h * 0.078;
    fontSize36 = h * 0.088;
    fontSize40 = h * 0.097;
    fontSize48 = h * 0.122;
    fontSize53 = h * 0.13;
    fontSize60 = h * 0.146;
    fontSize65 = h * 0.158;
    fontSize80 = h * 0.195;

    /*fontSize8 = w * 0.02;
    fontSize10 = w * 0.0244;
    fontSize12 = w * 0.029;
    fontSize13 = w * 0.032;
    fontSize14 = w * 0.034;
    fontSize15 = w * 0.0365;
    fontSize16 = w * 0.0385;
    fontSize17 = w * 0.041;
    fontSize18 = w * 0.0435;
    fontSize20 = w * 0.0485;
    fontSize22 = w * 0.0535;
    fontSize24 = w * 0.0585;
    fontSize32 = w * 0.078;
    fontSize36 = w * 0.088;
    fontSize40 = w * 0.097;
    fontSize48 = w * 0.122;
    fontSize53 = w * 0.13;
    fontSize60 = w * 0.146;
    fontSize65 = w * 0.158;
    fontSize80 = w * 0.195;*/
  }
}