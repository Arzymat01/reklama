import 'package:image_picker/image_picker.dart';

class ImagePicerServices {
  final ImagePicker _picker = ImagePicker();
  Future<List<XFile>?> pickImages() async {
    final images = await _picker.pickMultiImage();
    return images;
  }
}
