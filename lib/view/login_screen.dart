import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffD7DDFF),
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xffD7DDFF),
          body: Stack(alignment: Alignment.center, children: [
            Positioned(top: 85.h, child: _loginGeZiLogo()),
            Positioned(right: 0, child: _loginForm()),
            Positioned(bottom: -50.h, child: _loginAnimalsPic()),
            Positioned(top: 498.h, left: 40.w, child: _loginMoutainsPic())
          ]),
        ),
      ),
    );
  }

  Widget _loginGeZiLogo() {
    return Image.asset("assets/images/login_gezi.png",
        width: 176.w, height: 170.h);
  }

  Widget _loginForm() {
    return SizedBox(
      width: 340.w,
      height: 290.h,
      child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 292.w,
              height: 41.h,
              child: const Text(
                "登录",
                style: TextStyle(
                  color: const Color(0xffA4D2E5),
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              width: 292.w,
              height: 41.h,
              child: TextField(),
            ),
            SizedBox(
              width: 292.w,
              height: 41.h,
              child: TextField(),
            ),
            Container(
              width: 292.w,
              height: 57.h,
              decoration: BoxDecoration(
                  color: const Color(0xffA4D2E5),
                  borderRadius: BorderRadius.circular(5.h)),
            ),
            Container(
              width: 292.w,
              height: 41.h,
              alignment: Alignment.centerRight,
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("注册账号"),
                    Text("找回密码"),
                  ]),
            ),
          ]),
    );
  }

  Widget _loginAnimalsPic() {
    return Image.asset(
      "assets/images/login_moutains.png",
      width: 475.w,
      height: 144.89.h,
    );
  }

  Widget _loginMoutainsPic() {
    return Image.asset(
      "assets/images/login_animals.png",
      width: 323.w,
      height: 185.h,
    );
  }
}
