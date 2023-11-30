import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  File? pickedImageFile;

  var seletedImagePath = ''.obs;

  void _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    // ignore: unnecessary_null_comparison
    if (pickImage != null) {
      pickedImageFile = File(pickedImage!.path);
    }
    update();
  }
  void Function() get pickImage => _pickImage;
}
