import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  Expanded expanded([int flex = 1]) => Expanded(flex: flex, child: this);

  Align align([AlignmentGeometry alignment = Alignment.center]) =>
      Align(alignment: alignment, child: this);

  DecoratedBox decoration(Decoration decoration) =>
      DecoratedBox(decoration: decoration, child: this);

  Padding padding([
    double l = 0,
    double t = 0,
    double r = 0,
    double b = 0,
  ]) =>
      Padding(
        padding: EdgeInsets.fromLTRB(l, t, r, b),
        child: this,
      );

  PreferredSize preferredSize(Size preferredSize) =>
      PreferredSize(preferredSize: preferredSize, child: this);
}

extension HeroExtension on Image {
  Hero hero(String heroTag) => Hero(
        tag: heroTag,
        transitionOnUserGestures: true,
        child: this,
      );
}
