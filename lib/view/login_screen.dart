import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_frame_post_office_app/controller/login_screen_controller.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginScreenController());
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
    final _loginCtrl = Get.find<LoginScreenController>();
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
                  color: Color(0xffA4D2E5),
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              width: 292.w,
              height: 41.h,
              child: _loginTextFieldAccount(_loginCtrl.account),
            ),
            SizedBox(
              width: 292.w,
              height: 41.h,
              child: _loginTextFieldPassword(_loginCtrl.pwd),
            ),
            InkWell(
              onTap: () => _loginCtrl.login(),
              child: Container(
                width: 292.w,
                height: 57.h,
                decoration: BoxDecoration(
                    color: const Color(0xffA4D2E5),
                    borderRadius: BorderRadius.circular(5.h)),
                child: Center(
                    child: Text(
                  "进入",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                      color: Colors.white),
                )),
              ),
            ),
            Container(
              width: 292.w,
              height: 41.h,
              alignment: Alignment.centerRight,
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
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

  Widget _loginTextFieldAccount(TextEditingController account) {
    return Container(
        height: 41,
        width: 292,
        decoration: BoxDecoration(
            border: Border.all(
                width: 1, color: const Color.fromARGB(0, 172, 184, 194))),
        child: Stack(alignment: Alignment.center, children: [
          Positioned(
            child: TextField(
              controller: account,
              style: const TextStyle(fontSize: 15, color: Colors.black87),
              decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
                isCollapsed: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                hintText: "账号",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
              ),
            ),
          ),
          const Positioned(
            child: Image(image: AssetImage("assets/images/login_account.png")),
            right: 11.5,
          )
        ]));
  }

  Widget _loginTextFieldPassword(TextEditingController pwd) {
    return Container(
        height: 41,
        width: 292,
        decoration: BoxDecoration(
            border: Border.all(
                width: 1, color: const Color.fromARGB(0, 172, 184, 194))),
        child: Stack(alignment: Alignment.center, children: [
          Positioned(
              child: TextField(
            controller: pwd,
            style: const TextStyle(fontSize: 15, color: Colors.black87),
            decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
                isCollapsed: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                hintText: "密码",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                )),
          )),
          const Positioned(
            child: Image(image: AssetImage("assets/images/login_pwd.png")),
            right: 11.5,
          )
        ]));
  }
}
