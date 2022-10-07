import 'dart:ffi';

class StampModule {
  late int id;
  String? img;
  int? level;
  int? stampBagId;
  int? character;
  String? msg;
  String? signature;
  int? isDelete;
  Float? life;
  String? name;
  int? value;
  int? userId;
  DateTime? createTime;
  DateTime? updateTime;
  fromJson(dynamic stamp) {
    id = stamp["id"];
    img = stamp["img"];
  }
}
