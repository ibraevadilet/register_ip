import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:register_ip/core/constants/app_text_constants.dart';
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
                padding: const EdgeInsets.symmetric(horizontal: 150),
                child: CachedNetworkImage(
                  imageUrl: AppTextConstants.avatar,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
