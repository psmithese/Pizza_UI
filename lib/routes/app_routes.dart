import 'package:flutter/material.dart';
import 'package:fashionista/presentation/splash_screen/splash_screen.dart';
import 'package:fashionista/presentation/onbording_one_screen/onbording_one_screen.dart';
import 'package:fashionista/presentation/onbording_two_screen/onbording_two_screen.dart';
import 'package:fashionista/presentation/onbording_three_screen/onbording_three_screen.dart';
import 'package:fashionista/presentation/sign_up_sign_in_screen/sign_up_sign_in_screen.dart';
import 'package:fashionista/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:fashionista/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:fashionista/presentation/information_screen/information_screen.dart';
import 'package:fashionista/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:fashionista/presentation/verification_code_screen/verification_code_screen.dart';
import 'package:fashionista/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:fashionista/presentation/explore_shop_screen/explore_shop_screen.dart';
import 'package:fashionista/presentation/home_container_screen/home_container_screen.dart';
import 'package:fashionista/presentation/popular_items_screen/popular_items_screen.dart';
import 'package:fashionista/presentation/product_view_screen/product_view_screen.dart';
import 'package:fashionista/presentation/checkout_screen/checkout_screen.dart';
import 'package:fashionista/presentation/complete_screen/complete_screen.dart';
import 'package:fashionista/presentation/tracking_order_screen/tracking_order_screen.dart';
import 'package:fashionista/presentation/order_status_screen/order_status_screen.dart';
import 'package:fashionista/presentation/reviews_tab_container_screen/reviews_tab_container_screen.dart';
import 'package:fashionista/presentation/write_a_review_screen/write_a_review_screen.dart';
import 'package:fashionista/presentation/settings_screen/settings_screen.dart';
import 'package:fashionista/presentation/notification_screen/notification_screen.dart';
import 'package:fashionista/presentation/discount_items_screen/discount_items_screen.dart';
import 'package:fashionista/presentation/social_account_link_screen/social_account_link_screen.dart';
import 'package:fashionista/presentation/chat_screen/chat_screen.dart';
import 'package:fashionista/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onbordingOneScreen = '/onbording_one_screen';

  static const String onbordingTwoScreen = '/onbording_two_screen';

  static const String onbordingThreeScreen = '/onbording_three_screen';

  static const String signUpSignInScreen = '/sign_up_sign_in_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String informationScreen = '/information_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verificationCodeScreen = '/verification_code_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String exploreShopScreen = '/explore_shop_screen';

  static const String homePage = '/home_page';

  static const String homeTabContainerPage = '/home_tab_container_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String popularItemsScreen = '/popular_items_screen';

  static const String productViewScreen = '/product_view_screen';

  static const String myCartPage = '/my_cart_page';

  static const String checkoutScreen = '/checkout_screen';

  static const String completeScreen = '/complete_screen';

  static const String trackingOrderScreen = '/tracking_order_screen';

  static const String orderStatusScreen = '/order_status_screen';

  static const String reviewsPage = '/reviews_page';

  static const String reviewsTabContainerScreen =
      '/reviews_tab_container_screen';

  static const String writeAReviewScreen = '/write_a_review_screen';

  static const String settingsScreen = '/settings_screen';

  static const String searchPage = '/search_page';

  static const String notificationScreen = '/notification_screen';

  static const String discountItemsScreen = '/discount_items_screen';

  static const String socialAccountLinkScreen = '/social_account_link_screen';

  static const String profilePage = '/profile_page';

  static const String chatScreen = '/chat_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        onbordingOneScreen: OnbordingOneScreen.builder,
        onbordingTwoScreen: OnbordingTwoScreen.builder,
        onbordingThreeScreen: OnbordingThreeScreen.builder,
        signUpSignInScreen: SignUpSignInScreen.builder,
        signInScreen: SignInScreen.builder,
        signUpScreen: SignUpScreen.builder,
        informationScreen: InformationScreen.builder,
        forgotPasswordScreen: ForgotPasswordScreen.builder,
        verificationCodeScreen: VerificationCodeScreen.builder,
        resetPasswordScreen: ResetPasswordScreen.builder,
        exploreShopScreen: ExploreShopScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        popularItemsScreen: PopularItemsScreen.builder,
        productViewScreen: ProductViewScreen.builder,
        checkoutScreen: CheckoutScreen.builder,
        completeScreen: CompleteScreen.builder,
        trackingOrderScreen: TrackingOrderScreen.builder,
        orderStatusScreen: OrderStatusScreen.builder,
        reviewsTabContainerScreen: ReviewsTabContainerScreen.builder,
        writeAReviewScreen: WriteAReviewScreen.builder,
        settingsScreen: SettingsScreen.builder,
        notificationScreen: NotificationScreen.builder,
        discountItemsScreen: DiscountItemsScreen.builder,
        socialAccountLinkScreen: SocialAccountLinkScreen.builder,
        chatScreen: ChatScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
