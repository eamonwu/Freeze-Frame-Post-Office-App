import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:freeze_frame_post_office_app/config/global.dart';

class LoginScreenController extends GetxController {
  late TextEditingController account;
  late TextEditingController pwd;
  @override
  void onInit() {
    super.onInit();
    account = TextEditingController();
    pwd = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    account.dispose();
    pwd.dispose();
    super.dispose();
  }

  void login() async {
    await GetConnect().post("http://${GlobalCfg.serverAddr}/user/login",
        {"username": account.text, "password": pwd.text}).then((resp) {
      if (resp.body["code"] == 200) {
        Get.toNamed("/home");
      }
    }).onError((error, stackTrace) {
      print(error.toString());
    });
  }
}
