import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';

final mainReference = FirebaseDatabase.instance.reference();
final devotionalDataBase = mainReference.child("DevotionalDataBase");

class DevotionServices {
  Future getPdf() async {
    //Generate Random name for pdf file
    var rnd = Random();
    String randomName = "";
    for (var i = 0; i < 20; i++) {
      randomName += rnd.nextInt(100).toString();
    }

    //Pick file from phone storage
    FilePickerResult? file = await FilePicker.platform.pickFiles();
    Uint8List? fileBytes = file?.files.first.bytes;

    //create randomName for pdf
    String fileName = "${randomName}.pdf";

    // add file name and upload file
    savePdf(fileBytes, fileName);
  }

  savePdf(dynamic asset, String name) async {
    final storageRef = FirebaseStorage.instance.ref();
    final ref = storageRef.child(name);
    final uploadTask = ref.putData(asset);

    // Get pdf download/view url
    String? url;
    uploadTask.whenComplete(() {
      url = ref.getDownloadURL() as String;
    }).catchError((onError) {
      print(onError);
    });

    //return pdf download url
    documentFileUpload(url!);
  }

//creates Random string as Id to store individual devotionals and it properties
  String CreateRandomCryptoString([int length = 32]) {
    final Random _random = Random.secure();

    var value = List<int>.generate(length, (i) => _random.nextInt(256));

    return base64.encode(value);
  }

//store pdf download url and properties
  void documentFileUpload(String str) {
    var data = {"pdf": str, "name": "Random Book"};

    devotionalDataBase
        .child(CreateRandomCryptoString())
        .set(data)
        .then((value) => null);
  }
}
//API Key
//AIzaSyDvXu1laeo29tsd3wCl7rVGc0DXHPdkUSU
