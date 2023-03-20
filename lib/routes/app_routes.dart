import 'package:cardboard/presentation/card_board_splash_screen/card_board_splash_screen.dart';
import 'package:cardboard/presentation/card_board_splash_screen/binding/card_board_splash_binding.dart';
import 'package:cardboard/presentation/card_board_intro_login_screen/card_board_intro_login_screen.dart';
import 'package:cardboard/presentation/card_board_intro_login_screen/binding/card_board_intro_login_binding.dart';
import 'package:cardboard/presentation/card_board_add_card_screen/card_board_add_card_screen.dart';
import 'package:cardboard/presentation/card_board_add_card_screen/binding/card_board_add_card_binding.dart';
import 'package:cardboard/presentation/card_board_main_screen/card_board_main_screen.dart';
import 'package:cardboard/presentation/card_board_main_screen/binding/card_board_main_binding.dart';
import 'package:cardboard/presentation/card_board_account_settings_screen/card_board_account_settings_screen.dart';
import 'package:cardboard/presentation/card_board_account_settings_screen/binding/card_board_account_settings_binding.dart';
import 'package:cardboard/presentation/card_board_manage_card_screen/card_board_manage_card_screen.dart';
import 'package:cardboard/presentation/card_board_manage_card_screen/binding/card_board_manage_card_binding.dart';
import 'package:cardboard/presentation/card_board_result_screen/card_board_result_screen.dart';
import 'package:cardboard/presentation/card_board_result_screen/binding/card_board_result_binding.dart';
import 'package:cardboard/presentation/card_board_signup_dark_screen/card_board_signup_dark_screen.dart';
import 'package:cardboard/presentation/card_board_signup_dark_screen/binding/card_board_signup_dark_binding.dart';
import 'package:cardboard/presentation/card_board_signin_dark_screen/card_board_signin_dark_screen.dart';
import 'package:cardboard/presentation/card_board_signin_dark_screen/binding/card_board_signin_dark_binding.dart';
import 'package:cardboard/presentation/card_board_result_final_screen/card_board_result_final_screen.dart';
import 'package:cardboard/presentation/card_board_result_final_screen/binding/card_board_result_final_binding.dart';
import 'package:cardboard/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:cardboard/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String cardBoardSplashScreen = '/card_board_splash_screen';

  static const String cardBoardIntroLoginScreen =
      '/card_board_intro_login_screen';

  static const String cardBoardAddCardScreen = '/card_board_add_card_screen';

  static const String cardBoardMainScreen = '/card_board_main_screen';

  static const String cardBoardAccountSettingsScreen =
      '/card_board_account_settings_screen';

  static const String cardBoardManageCardScreen =
      '/card_board_manage_card_screen';

  static const String cardBoardResultScreen = '/card_board_result_screen';

  static const String cardBoardSignupDarkScreen =
      '/card_board_signup_dark_screen';

  static const String cardBoardSigninDarkScreen =
      '/card_board_signin_dark_screen';

  static const String cardBoardResultFinalScreen =
      '/card_board_result_final_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: cardBoardSplashScreen,
      page: () => CardBoardSplashScreen(),
      bindings: [
        CardBoardSplashBinding(),
      ],
    ),
    GetPage(
      name: cardBoardIntroLoginScreen,
      page: () => CardBoardIntroLoginScreen(),
      bindings: [
        CardBoardIntroLoginBinding(),
      ],
    ),
    GetPage(
      name: cardBoardAddCardScreen,
      page: () => CardBoardAddCardScreen(),
      bindings: [
        CardBoardAddCardBinding(),
      ],
    ),
    GetPage(
      name: cardBoardMainScreen,
      page: () => CardBoardMainScreen(),
      bindings: [
        CardBoardMainBinding(),
      ],
    ),
    GetPage(
      name: cardBoardAccountSettingsScreen,
      page: () => CardBoardAccountSettingsScreen(),
      bindings: [
        CardBoardAccountSettingsBinding(),
      ],
    ),
    GetPage(
      name: cardBoardManageCardScreen,
      page: () => CardBoardManageCardScreen(),
      bindings: [
        CardBoardManageCardBinding(),
      ],
    ),
    GetPage(
      name: cardBoardResultScreen,
      page: () => CardBoardResultScreen(),
      bindings: [
        CardBoardResultBinding(),
      ],
    ),
    GetPage(
      name: cardBoardSignupDarkScreen,
      page: () => CardBoardSignupDarkScreen(),
      bindings: [
        CardBoardSignupDarkBinding(),
      ],
    ),
    GetPage(
      name: cardBoardSigninDarkScreen,
      page: () => CardBoardSigninDarkScreen(),
      bindings: [
        CardBoardSigninDarkBinding(),
      ],
    ),
    GetPage(
      name: cardBoardResultFinalScreen,
      page: () => CardBoardResultFinalScreen(),
      bindings: [
        CardBoardResultFinalBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => CardBoardSplashScreen(),
      bindings: [
        CardBoardSplashBinding(),
      ],
    )
  ];
}
