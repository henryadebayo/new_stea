import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:stea/widgets/const.dart';
import '../data/models/testimonyModel.dart';
import '../view_models/testimony_view_models.dart';

class AddTestimony extends StatelessWidget {
  late  BuildContext _context;
   AddTestimony({Key? key}) : super(key: key);
  late String name;
  late String details;
  final testimony = TestimonyModel();
  final formkey = GlobalKey<FormState>();
  final mainKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
this._context = context;

    TestimonyVeiwModel testimonyVeiwModel = context.watch<TestimonyVeiwModel>();

    return Scaffold(
      key: mainKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: KdarkBlueColour,
        title: const Text(
          "Upload Testimony",
          style: TextStyle(fontFamily: KfontFamily,
              letterSpacing: 1.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height / 12),

              Form(
                  key: formkey,
                  child:
                  Column(children: [
                    TextFormField(
                        decoration: InputDecoration(
                            labelText: "name",
                            focusColor: Colors.red,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            )
                        ),
                        maxLength: 25,
                        validator: (value){
                        value ?? "ncfcgfd";
                        },
                        onSaved: (String? value) {
                          name = value?? "Anonymous";
                        },
                    ),

                    SizedBox(height: MediaQuery
                        .of(context)
                        .size
                        .height / 30),

                    TextFormField(
                      //expands: true,

                        decoration: InputDecoration(
                            labelText: "Testimony",
                            // hintStyle: TextStyle(),
                            focusColor: Colors.red,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),

                            )
                        ),
                        maxLines: 10,
                        maxLength: 2000,
                        onSaved: (String? value) {
                         details = value!;
                        },
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "please input your Testimony text";
                          }
                          return null;
                        }
                    ),
                  ],)

              ),

              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height / 50),
              InkWell(
                onTap: () {
                  var form = formkey.currentState;
                  if (form!.validate()) {
                    print("THIS IS LOADING STATE 3::: ${testimonyVeiwModel.loadingg.toString()}");
                    form.save();
                    testimonyVeiwModel.sendTestimony(name, details);
                    if(testimonyVeiwModel.loadingg){
                      showLoadingIndicator(context);
                    } else{
                      Navigator.of(context).pop();
                      const SnackBar(
                        backgroundColor: KdarkBlueColour,
                        content: Text("Testimony uploaded successfully"),
                        duration: Duration(
                            seconds: 2
                        ),
                      );
                      print("THIS IS LOADING STATE 4::: ${testimonyVeiwModel.loadingg.toString()}");
                    }
                  }
                },
                child: Container(
                    width: 500.0,
                    height: 60.0,
                  color: KdarkBlueColour,
                  child: Center(
                    child: Text("Summit"),
                  ),
                ),
              ),

              // RoundWhiteButton(
              //   label: "Upload",
              //   width: 500.0,
              //   height: 60.0,
              //   //onTap: onPressed(),
              //   onTap: () {
              //     var form = formkey.currentState;
              //     if (form!.validate()) {
              //       print("THIS IS LOADING STATE 3::: ${testimonyVeiwModel.loadingg.toString()}");
              //       form.save();
              //       testimonyVeiwModel.sendTestimony(name, details);
              //       if(testimonyVeiwModel.loadingg){
              //         showLoadingIndicator(context);
              //       } else{
              //         Navigator.of(context).pop();
              //         const SnackBar(
              //           backgroundColor: KdarkBlueColour,
              //           content: Text("Testimony uploaded successfully"),
              //           duration: Duration(
              //               seconds: 2
              //           ),
              //         );
              //         print("THIS IS LOADING STATE 4::: ${testimonyVeiwModel.loadingg.toString()}");
              //       }
              //     }
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }

  void showLoadingIndicator(BuildContext context) {
    showDialog(context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Row(
              children: const [
                SpinKitCubeGrid(
                  color: Colors.blueAccent,
                  size: 25.0,
                ),
                SizedBox(width: 16,),
                Text("Uploading Testimony..."),
              ],
            ),
          );
        });
  }
  }