import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController {
  var selectPrimaryImagePath = "".obs;
  var seleectSignstureImagePath = "".obs;
  var selectQrImagePath = "".obs;
  var selectReferenceImagePath = "".obs;
  var selectPrimaryAdminImagePath = "".obs;
//Select Primary Screen Image path
  void getPrimaryImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      selectPrimaryImagePath.value = pickedFile.path;
    } else {
      Get.snackbar(
        "Error",
        "No Image Selected",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

// select others infoamtion screen reference photo

  void getReferenceImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      selectReferenceImagePath.value = pickedFile.path;
    } else {
      Get.snackbar(
        "Error",
        "No Image Selected",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  // select Personal screen SIgnsture photo

  void getSignstureImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      seleectSignstureImagePath.value = pickedFile.path;
    } else {
      Get.snackbar(
        "Error",
        "No Image Selected",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  // select Personal screen QR Code photo

  void getQRCodeImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      selectQrImagePath.value = pickedFile.path;
    } else {
      Get.snackbar(
        "Error",
        "No Image Selected",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

//Select Primary Screen adminImage path
  void getPrimaryAdminImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      selectPrimaryAdminImagePath.value = pickedFile.path;
    } else {
      Get.snackbar(
        "Error",
        "No Image Selected",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
