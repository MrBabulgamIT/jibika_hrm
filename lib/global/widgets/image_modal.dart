import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jibika_plexus_hrmm/utils/text/text_widget.dart';
import '../../../../../../utils/color/color_widget.dart';
import '../controllers/image_controller.dart';

class ImageModal extends StatelessWidget {
  final double dx, dy;

  ImageModal({Key? key, required this.dx, required this.dy}) : super(key: key);

  ImageController imageController = Get.put(ImageController());

  @override
  Widget build(BuildContext context) {
    const _fromTop = 0;
    double _width = MediaQuery.of(context).size.width;
    double _left = 80;
    double _right = 80;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
          margin: EdgeInsets.only(
            top: dy > 100 ? dy - _fromTop : dy + 0,
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
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            width: 150.w,
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
                              onTap: () {
                                Get.back();
                                imageController
                                    .getPrimaryAdminImage(ImageSource.camera);
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
                              onTap: () {
                                Get.back();
                                imageController
                                    .getPrimaryAdminImage(ImageSource.gallery);
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

//referrence page image

class ImageModalReference extends StatelessWidget {
  final double dx, dy;

  ImageModalReference({Key? key, required this.dx, required this.dy})
      : super(key: key);

  ImageController imageController = Get.put(ImageController());

  @override
  Widget build(BuildContext context) {
    const _fromTop = 0;
    double _width = MediaQuery.of(context).size.width;
    double _left = 80;
    double _right = 80;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
          margin: EdgeInsets.only(
            top: dy > 100 ? dy - _fromTop : dy + 0,
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
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: 170.w,
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
                              onTap: () {
                                Get.back();
                                imageController
                                    .getReferenceImage(ImageSource.camera);
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
                              onTap: () {
                                Get.back();
                                imageController
                                    .getReferenceImage(ImageSource.gallery);
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
