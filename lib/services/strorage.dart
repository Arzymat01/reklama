import 'dart:developer';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class StroageServices {
  final storageRef = FirebaseStorage.instance.ref();

  Future<List<String>?> uploadImage(List<XFile> images) async {
    if (images.isNotEmpty) {
      List<String> ulrs = [];
      for (var i in images) {
        try {
          final mountainsRef =
              storageRef.child("images/${DateTime.now().day}/${i.name}");
          final file = File(i.path);
          final upLoadTask = await mountainsRef.putFile(file);
          final url = await upLoadTask.ref.getDownloadURL();
          ulrs.add(url);
        } catch (error) {
          log(error.toString());
        }
      }
      return ulrs;
    } else {
      return null;
    }
  }
}
