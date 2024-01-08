import 'package:auto_route/auto_route.dart';
import 'package:register_ip/routes/mobile_auto_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: BottomNavigatorRoute.page),
        AutoRoute(page: AuthRoute.page),
        AutoRoute(page: AuthSendConfirmRoute.page),
        AutoRoute(page: AuthConfirmCodeRoute.page),
        AutoRoute(page: PinCodeCreateRoute.page),
        CustomRoute(
          page: PinCodeRepeatRoute.page,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        AutoRoute(page: PinCodeEnterRoute.page),
        AutoRoute(page: EsiErrorRoute.page),
        AutoRoute(page: RecoveryPinCodeEnterEsiPasswordRoute.page),
        AutoRoute(page: RecoveryPinCodeChoiseTypeRoute.page),
        AutoRoute(page: RecoveryPinCodeEnterSmsCodeRoute.page),
        AutoRoute(page: RecoveryPasswordChoiseTypeRoute.page),
        AutoRoute(page: RecoveryPasswordEnterInnRoute.page),
        AutoRoute(page: RecoveryPasswordEnterSmsCodeRoute.page),
        AutoRoute(page: RecoveryPasswordEnterNewPasswordRoute.page),
        AutoRoute(page: GetCesRoute.page),
        AutoRoute(page: CesSelfieRoute.page),
        AutoRoute(page: CesCameraRoute.page),
        AutoRoute(page: SelfiePreviewRoute.page),
        AutoRoute(page: CesFinish.page),
      ];
}
