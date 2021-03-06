import 'package:flutter/material.dart';
//去除恶心人的拉边效果
//其实是从网上抄的

class OverScrollBehavior extends ScrollBehavior{

  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    switch (getPlatform(context)) {
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
      case TargetPlatform.iOS:
        return child;
      case TargetPlatform.fuchsia:
      case TargetPlatform.android:
        return GlowingOverscrollIndicator(
          child: child,
          //不显示头部水波纹
          showLeading: false,
          //不显示尾部水波纹
          showTrailing: false,
          axisDirection: axisDirection,
          color: Theme.of(context).colorScheme.secondary,
        );

    }
  }

}