import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/core/constanis/ap_images.dart';
import 'package:travel_app/core/shared/app_scaffold.dart';

import '../cubit/splash_cubit.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashCubit, SplashState>(
      builder: ( context, state) {
        state.when(loading: () =>AppScaffold(
          child: Center(child: SvgPicture.asset(AppImages.logo),),)
            , onborading: ()=> SizedBox()
            , auth: ()=>SizedBox()
            , main: ()=>SizedBox(),
        );
      }a
    );
  }
}