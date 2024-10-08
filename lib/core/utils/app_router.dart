import 'package:go_router/go_router.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/login_auth.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/reset_password.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/sing_up.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/verify.dart';
import 'package:shagaf_tast2/features/home/presentation/views/home_screen.dart';
import 'package:shagaf_tast2/features/intro/onbording/onbording_screen.dart';
import 'package:shagaf_tast2/features/intro/splash_screen/Splash_screen.dart';


abstract class AppRouter {
  static const KLogin = '/login';
  static const KSingUp = '/singup';
  static const KResetPassword = '/resetpassword';
  static const KVerify = '/verify';
  static const KOnboarding = '/enbording';
  static const KHomeScreen = '/homescreen';

  static final router = GoRouter(routes: [
    // GoRoute(
    //   path: '',
    //   builder: (context, state) => const SplashScreen(),
    // ),
    GoRoute(
      path: KLogin,
      builder: (context, state) => const LoginAuth(),
    ),
    GoRoute(
      path: KSingUp,
      builder: (context, state) => const SingUp(),
    ),
    GoRoute(
      path: KOnboarding,
      builder: (context, state) => const OnbordingScreen(),
    ),
    GoRoute(
      path: KSingUp,
      builder: (context, state) => const SingUp(),
    ),
    GoRoute(
      path: KResetPassword,
      builder: (context, state) => const ResetPassword(),
    ),
    GoRoute(
      path: KVerify,
      builder: (context, state) => const Verify(),
    ),
    GoRoute(path: '/',
    builder: (context, state) =>const HomeScreen(),
    )
  ]);
}
