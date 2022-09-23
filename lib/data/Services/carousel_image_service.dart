import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_storage/firebase_storage.dart';

class CarouselServices {
  Reference get firebaseStorage => FirebaseStorage.instance.ref();

  final storageRef = FirebaseStorage.instance.ref().child("Devotionals");
  final List<String> images = [];
  final List<dynamic> images2 = [];

  Future<dynamic> listFiles() async {
    images.clear();
    try {
      firebase_storage.ListResult results = await storageRef.listAll();
      for (var ref in results.items) {
        images.add(ref.name);
      }
      print("THIS ARE IMAGES ${images}");
      return images;
    } catch (e) {
      print(e);
    }
  }

  Future<String?> getImgDownloadUrl(String? imgName) async {
    if (imgName == null) {
      return null;
    }
    try {
      var urlRef = storageRef.child("${imgName}.png");
      var imgUrl = await urlRef.getDownloadURL();
    } catch (e) {
      print(e.toString());
      return null;
    }
    // var downloadUrl = storageRef.getDownloadURL();
    // print(
    //     "This is second Download Url:::::::::: ${storageRef.getDownloadURL()}");
    // return downloadUrl;
  }
}
