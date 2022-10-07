import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_frame_post_office_app/controller/home_screen_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenController());
    return Container(
      color: const Color(0xffEDE3FF),
      child: SafeArea(
          child: Scaffold(
        backgroundColor: const Color(0xffEDE3FF),
        body: Stack(
            alignment: Alignment.center,
            children: [Positioned(top: 60.h, child: _homeContent())]),
      )),
    );
  }

  Widget _homeContent() {
    final _homeCtrl = Get.find<HomeScreenController>();
    return Container(
      width: 307.w,
      height: 655.h,
      // padding: EdgeInsets.symmetric(horizontal: 23.5.w),
      child: Stack(alignment: Alignment.topCenter, children: [
        Positioned(child: _homeContentTopBar()),
        Positioned(top: 41.h, child: _homeContentScorllowView(_homeCtrl.stamps))
      ]),
    );
  }

  Widget _homeContentTopBar() {
    return Container(
      width: 260.w,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/home_home.png",
            width: 30.97.w,
            height: 23.71.h,
          ),
          SizedBox(
            width: 64.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/home_search.png",
                    width: 17.49.h, height: 17.49.h),
                Image.asset("assets/images/home_star.png",
                    width: 19.h, height: 19.h)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _homeContentScrollowViewCard() {
    return Container(
        height: 167.h,
        width: 260.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.h),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 3),
                  color: Colors.grey.withOpacity(0.6),
                  blurRadius: 20)
            ]),
        child: Row(
          children: [
            SizedBox(
              width: 130.w,
              height: 167.h,
              child: Image.asset(
                "assets/images/home_card_person.png",
              ),
            ),
            SizedBox(
              width: 130.w,
              height: 167.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "从前的月色变得慢",
                    style: TextStyle(color: Color(0xff90CAFF)),
                  ),
                  Text(
                    "车，马，邮件都慢",
                    style: TextStyle(color: Color(0xff90CAFF)),
                  ),
                  Text(
                    "一生只够爱一个人",
                    style: TextStyle(color: Color(0xff90CAFF)),
                  ),
                  Text(
                    " -木心《从前慢》",
                    style: TextStyle(color: Color(0xff90CAFF)),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Widget _homeContentScrollowViewCells(dynamic stamp) {
    return Container(
      width: 260.w,
      height: 76.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.h),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 3),
                color: Colors.grey.withOpacity(0.6),
                blurRadius: 20)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(width: 16.w),
          Expanded(
            child: Container(
              height: 44.h,
              // color: Colors.yellow,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        stamp["userName"],
                        style: TextStyle(
                            color: Color(0xff90CAFF),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        "历时:${stamp["spendedTime"]}",
                        style:
                            TextStyle(color: Color(0xff90CAFF), fontSize: 14),
                      )
                    ],
                  ),
                  Container(
                    width: 42.w,
                    height: 52.h,
                    child: Stack(alignment: Alignment.center, children: [
                      Image.asset(
                        "assets/images/home_stamp_border_bg.png",
                        width: 40.38.w,
                        height: 50.h,
                      ),
                      Image.asset(
                        "assets/images/home_stamp_border.png",
                        width: 37.w,
                        height: 46.73.h,
                      ),
                      Image.asset(
                        stamp["stampUrl"],
                        width: 25.w,
                        height: 35.h,
                      ),
                      Container(
                        width: 25.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black)),
                      )
                    ]),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 8.w),
          Container(
            // color: Colors.green,
            width: 24.h,
            height: 24.h,
            child: Icon(
              Icons.arrow_forward_ios_sharp,
              color: Color(0xff90CAFF),
            ),
          )
        ],
      ),
    );
  }

  Widget _homeContentScorllowView(List<dynamic> stamps) {
    List<Widget> _list = [];
    _list.add(_homeContentScrollowViewCard());
    for (dynamic e in stamps) {
      _list.add(SizedBox(height: 25.h));
      _list.add(_homeContentScrollowViewCells(e));
    }
    _list.add(SizedBox(height: 35.h));

    return Container(
      width: 307.w,
      height: 655.h - 45.h,
      child: SingleChildScrollView(
        child: Column(
          children: _list,
        ),
      ),
    );
  }
}
