import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stea/widgets/bottomSheetCon.dart';
import 'package:stea/widgets/buton.dart';

import '../core/utils/app_colors/appColors.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({Key? key}) : super(key: key);

  @override
  _UploadImageState createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  /// late File _imageFile;
  //  final _picker = ImagePicker();

  Future getImage(bool isCamera) async {
    // File image;
    // if (isCamera) {
    //   image = (await _picker.pickImage(source: ImageSource.camera)) as File;
    // } else {
    //   image = (await _picker.pickImage(source: ImageSource.gallery)) as File;
    // }
    // setState(() {
    //   _imageFile = image;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor:,
      appBar: AppBar(
        title: Text(
          "Upload Slider Image",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: AppColors.darkBlueColour),
        ),
        elevation: 5.0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
            // mainAxisAlignment: Main,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  //child: Image.file(_imageFile),
                ),
              ),
              Center(
                child: RoundWhiteButton(
                  onTap: () {
                    setState(() {
                      showModalBottomSheet(
                          backgroundColor: Colors.white,
                          //shape: ShapeBorder:,
                          elevation: 10.0,
                          context: context,
                          builder: (BuildContext context) {
                            return Wrap(children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 10.0,
                                    width: 200.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: AppColors.darkBlueColour,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 50.0,
                                  ),
                                  Text(
                                    "Choose Image From",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: AppColors.darkBlueColour),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 40.0, horizontal: 20.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: GestureDetector(
                                            onTap: () {},
                                            child: GestureDetector(
                                              onTap: () {
                                                getImage(true);
                                              },
                                              child: const BottomSheetCon(
                                                name: "Camera",
                                                iconData:
                                                    FontAwesomeIcons.camera,
                                              ),
                                            ),
                                          )),
                                          const SizedBox(
                                            width: 20.0,
                                          ),
                                          Expanded(
                                              child: GestureDetector(
                                            onTap: () {
                                              getImage(false);
                                            },
                                            child: const BottomSheetCon(
                                              name: "Gallery",
                                              iconData: FontAwesomeIcons.images,
                                            ),
                                          )),
                                        ],
                                      )),
                                ],
                              )
                            ]);
                          });
                    });
                  },
                  label: "Select Image",
                  height: 50.0,
                  width: 200.0,
                ),
              ),
            ]),
      ),
    );
  }
}
