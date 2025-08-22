import 'dart:ui';

import 'package:flutter/material.dart';

import '../constanis/app_colors.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, required this.child, this.appBar});
  final Widget child;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: ColoredBox(
          color: AppColors.cx000226,
          child: Stack(
            children: [
              Positioned(
                right: -7,
                top: 250,
                child: SizedBox(
                  height: 187,
                  width: 187,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.cxFF8743,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                bottom: 48,
                child: SizedBox(
                  height: 268,
                  width: 268,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.cxF2BB2E,
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                  child: SizedBox(),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
