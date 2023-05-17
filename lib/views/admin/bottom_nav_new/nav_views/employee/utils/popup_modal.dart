import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../utils/color/color_widget.dart';
import '../../../../../user/user_nav_main/userinfo_navmain_page.dart';

class PopupModal extends StatelessWidget {
  final double dx, dy;

  const PopupModal({Key? key, required this.dx, required this.dy})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _fromTop = 80;
    double _width = MediaQuery.of(context).size.width;
    double _left = dx < 180
        ? dx / 3
        : _width - 100 > dx
            ? dx - 150
            : dx - 10 < _width
                ? dx - 220
                : 0;
    return Container(
        margin: EdgeInsets.only(
            top: dy > 100 ? dy - _fromTop : dy + 0,
            left: _left,
            right: 10,
            bottom: dy >= Get.height * .8 ? 0 : Get.height - (dy + 120)),
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 2),
                  blurRadius: 10,
                  spreadRadius: 2)
            ]),
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            // height: 40,
            child: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: const PopupTile(
                            assetImage: "images/details_info.png",
                            title: "Details\nInfo"),
                        onTap: () {
                          Get.back();
                          Get.to(() => const UserInfo_Nav_Main_Page());
                        },
                      ),
                      GestureDetector(
                        child: const PopupTile(
                            assetImage: "images/late_time.png",
                            title: "Attendance"),
                        onTap: () {
                          Get.back();
                          Get.to(() => const UserInfo_Nav_Main_Page());
                        },
                      ),
                      GestureDetector(
                        child: const PopupTile(
                            assetImage: "images/dashboard_nav_leave_icon.png",
                            title: "Leave"),
                        onTap: () {
                          Get.back();
                          Get.to(() => const UserInfo_Nav_Main_Page());
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: const PopupTile(
                            assetImage: "images/tracking_icon.png",
                            title: "Tracking"),
                        onTap: () {
                          Get.back();
                          Get.to(() => const UserInfo_Nav_Main_Page());
                        },
                      ),
                      GestureDetector(
                        child: const PopupTile(
                            assetImage: "images/payroll.png", title: "Payroll"),
                        onTap: () {
                          Get.back();
                          Get.to(() => const UserInfo_Nav_Main_Page());
                        },
                      ),
                      GestureDetector(
                        child: const PopupTile(
                            assetImage: "images/late_time.png",
                            title: "Active\nInactive"),
                        onTap: () {
                          Get.back();
                          Get.to(() => const UserInfo_Nav_Main_Page());
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class PopupTile extends StatelessWidget {
  const PopupTile({
    Key? key,
    required this.assetImage,
    required this.title,
  }) : super(key: key);

  final String? assetImage;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(assetImage!),
          color: colorPrimary,
          width: 25.sp,
          height: 25.sp,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 20.sp,
        ),
        Text(title!,
            style: const TextStyle(color: colorPrimary, fontSize: 14),
            textAlign: TextAlign.center),
      ],
    );
  }
}
