import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:register_ip/core/images/app_images.dart';
import 'package:register_ip/features/splash/splash_cubit/splash_cubit.dart';
import 'package:register_ip/server/service_locator.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SplashCubit>(
        create: (context) => sl<SplashCubit>()..getFirstOpenStatus(),
        child: BlocBuilder<SplashCubit, SplashState>(
          builder: (context, state) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 54),
                child: Image.asset(AppImages.logo),
              ),
            );
          },
        ),
      ),
    );
  }
}
