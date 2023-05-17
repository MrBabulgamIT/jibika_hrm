import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jibika_plexus_hrmm/utils/text/text_widget.dart';
import '../../../../../../utils/color/color_widget.dart';

class NidModal extends StatelessWidget {
  final double dx, dy;

  NidModal({Key? key, required this.dx, required this.dy}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _fromTop = 0;
    double _width = MediaQuery.of(context).size.width;
    double _left = dx < 180
        ? dx / 3
        : _width - 100 > dx
            ? dx - 150
            : dx - 10 < _width
                ? dx - 220
                : 0;
    double _right = 10;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
          margin: EdgeInsets.only(
            top: dy,
            left: _left,
            right: _right,
            // bottom: dy >= Get.height * .8 ? 0 : Get.height - (dy + 140),
          ),
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
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            // height: 40,
            width: 180.w,
            child: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () async {
                                Get.back();
                              },
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.camera_alt,
                                    size: 40.sp,
                                    color: colorPrimary,
                                  ),
                                  myStylesText14(
                                    "Camera",
                                    colorPrimary,
                                    FontWeight.w500,
                                  )
                                ],
                              )),
                          SizedBox(
                            width: 15.h,
                          ),
                          GestureDetector(
                              onTap: () async {
                                Get.back();
                              },
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.photo,
                                    size: 40.sp,
                                    color: colorPrimary,
                                  ),
                                  myStylesText14(
                                    "Gallery",
                                    colorPrimary,
                                    FontWeight.w500,
                                  )
                                ],
                              )),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
