import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';


final mainReference = FirebaseDatabase.instance.reference();
final devotionalDataBase = mainReference.child("DevotionalDataBase");


Future getPdf()async{

  //Generate Random name for pdf file
  var rnd = Random();
  String randomName = "";
  for (var i = 0; i< 20; i++ ){
    randomName+= rnd.nextInt(100).toString();
  }

  //Pick file from phone storage
  FilePickerResult? file = await FilePicker.platform.pickFiles();
  Uint8List? fileBytes = file?.files.first.bytes;


  //create randomName for pdf
  String fileName = "${randomName}.pdf";

  // add file name and upload file
 savePdf(fileBytes, fileName);

}

savePdf(dynamic asset, String name)async {
  final storageRef = FirebaseStorage.instance.ref();
  final ref = storageRef.child(name);
  final uploadTask =  ref.putData(asset);


  // Get pdf download/view url
  String? url;
  uploadTask.whenComplete(() {
    url = ref.getDownloadURL() as String;
  }).catchError((onError) {
    print(onError);
  });

//  return url;
  // String url = await (await upload.whenComplete(() => null)).ref.getDownloadURL();

  //return pdf download url
  documentFileUpload(url!);
}





//creates Random string as Id to store individual devotionals and it properties
 String CreateRandomCryptoString([int length = 32]){
  final Random _random = Random.secure();

  var value = List<int>.generate(length, (i) => _random.nextInt(256));

  return base64.encode(value);

}


//store pdf download url and properties
void documentFileUpload(String str){
  var data = {
    "pdf": str,
    "name": "Random Book"


  };

  devotionalDataBase.child(CreateRandomCryptoString()).set(data).then((value) => null);
}














// import 'dart:convert';
// import 'dart:io';
// import 'dart:math';
// import 'package:file_picker/file_picker.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:stea/models/devotionalModel.dart';
// class SteaDevotionals extends ChangeNotifier {
//
//   final DatabaseReference databaseReference =
//   FirebaseDatabase.instance.reference().child("devotionals");
//   File? _file;
//   bool? _loading;
//
//
//    get file => _file;
//    get loading => _loading;
//
//    setFile(File file){
//      _file = file;
//      notifyListeners();
//    }
//
//    setLoading(bool loading){
//      _loading = loading;
//    }
//
//
//   late FilePicker filePicker;
//   DevotionalModel devotional = DevotionalModel(id: '', devotionalPath: '', devotionalDescription: '', devotionalName: '');
//
//
//   Future getPdfFromDevice()async{
//     setFile(await filePicker.pickFiles(type: FileType.custom) as File);
//   }
//
//   Future uploadPdf(DevotionalModel devotional) async {
//
//     Reference ref = FirebaseStorage.instance.ref().child("devotional").child(
//         "/${devotional.devotionalName}.pdf");
//     UploadTask uploadTask = ref.putData(
//         _file.readAsBytesSync(), SettableMetadata(
//         contentType: "pdf",
//         customMetadata: {
//           "devotionalName": devotional.devotionalName,
//           "devotionalPath": devotional.devotionalPath,
//           "devotionalDescription": devotional.devotionalDescription,
//           "devotionalId": devotional.id,
//         }
//     ));
//   }
//
//   Future<List<Map<String, dynamic>>> loadDevotional()async{
//     FirebaseStorage.instance;
//     List<Map<String, dynamic>> devos = [];
//     final ListResult result = await storage.ref().list();
//   }
//
//
//
//
// Future getPdfUpload()async{
//    setFile((await filePicker.pickFiles(type: FileType.custom)) as File);
//  String fileName = _file!.path;
//   savePdf(_file!.readAsBytesSync(), fileName);
// }
//
//   void savePdf(asset, name)async {
//     setLoading(true);
//   Reference ref = FirebaseStorage.instance.ref().child("devotional").child("/$name.pdf");
//  UploadTask upload = ref.putData(asset);
//  String? url;
//   upload.whenComplete(() {
//     url = ref.getDownloadURL() as String;
//   }).catchError((onError) {
//     print(onError);
//   });
//   //return url;
//   // String url = await (await upload.whenComplete(() => null)).ref.getDownloadURL();
//   documentFileUpload(url!,devotional);
//   setLoading(false);
//   }
//
//   CreateCryptoRandomString([int length = 32]){
//     final Random _random = Random.secure();
//     var values = List<int>.generate(length, (index) => _random.nextInt(256));
//     return base64UrlEncode(values);
//   }
//
// void documentFileUpload(String url,DevotionalModel devotional) {
// var devotionalModel = {
//   "devotionalName": devotional.devotionalName,
//   "devotionalPath": devotional.devotionalPath,
//   "devotionalDescription": devotional.devotionalDescription,
//
// };
// databaseReference.child(CreateCryptoRandomString()).set(devotional).then((value) => print("success"));
// }
//   // static Future<File> loadDevotional(String url)async {
//   //   final refPDF = FirebaseStorage.instance.ref().child(url);
//   //   final byte = await refPDF.getData();
//   //  return _storeFile(url, byte);
//   // }
//
//
// }


//API Key
//AIzaSyDvXu1laeo29tsd3wCl7rVGc0DXHPdkUSU