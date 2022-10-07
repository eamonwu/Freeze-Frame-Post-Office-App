import 'package:freeze_frame_post_office_app/view/home_screen.dart';
import 'package:freeze_frame_post_office_app/view/login_screen.dart';
import 'package:get/get.dart';

List<GetPage> Routes = [
  GetPage(
    name: "/login",
    page: () => const LoginScreen(),
  ),
  GetPage(
    name: "/home",
    page: () => const HomeScreen(),
  ),
];
