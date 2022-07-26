import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:stea/Services/testimony_services.dart';
import 'package:stea/widgets/const.dart';
import 'package:stea/widgets/testimonyItem.dart';
import '../view_models/testimony_view_models.dart';
import 'AddTestimonyPage.dart';



class TestimonyPage extends StatelessWidget {
  late BuildContext _context;
  @override
  Widget build(BuildContext context) {
    this._context = context;

    TestimonyService testimonyService = TestimonyService();

      TestimonyVeiwModel testimonyVeiwModel = context.watch<TestimonyVeiwModel>();



    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: KdarkBlueColour,
          title: Title(
            color: Colors.white,
            child: Text("Testimony"),
          ),
        ),
        body:
        Container(

            child:
    RefreshIndicator(
    onRefresh:testimonyVeiwModel.getTestimony,
    child:
  _ui(testimonyVeiwModel),
          ),
        ),
          );
  }

  _ui(TestimonyVeiwModel testimonyVeiwModel){
    if(testimonyVeiwModel.loading){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Center( child:
          AlertDialog(

      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
      SpinKitCubeGrid(
        //duration: Duration(milliseconds: 1200),
      color: Colors.blueAccent,
        size: 25.0,
      ),
    SizedBox(width: 16,),
    Text("Loading Testimony..."),
    ],
    ),
    ),
          ),
        ],
      );
    }if(testimonyVeiwModel.testimonyError != null){
      return Container(
        child:  AlertDialog(
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SizedBox(width: 16,),
              Text("Can't Load Testimony slide down to refresh...", style: TextStyle(color: KdarkBlueColour), ),
            ],
          ),
        ),
      );
    }
    return Stack( children: [

      Padding(
        padding: EdgeInsets.only(
            left: 5.0.w, right: 5.0.w, top: 10.0.h),
        child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: testimonyVeiwModel.testimonyModel.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          testimonyItem(
                            testifyerName:testimonyVeiwModel.testimonyModel[index].name,
                            testifyerText:testimonyVeiwModel.testimonyModel[index].details,
                          ),
                          SizedBox(height: 10.0.h),
                        ],
                      ),
                    ),
                  ],
                );
              }),
      ),
      Positioned(
        right: 20.0,
        bottom: 20.0,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(_context).push(MaterialPageRoute(
                builder: (BuildContext context) => AddTestimony()));
          },
          backgroundColor: Colors.white,
          child: const Icon(
            FontAwesomeIcons.plus,
            color: KdarkBlueColour,
          ),
        ),
      ),
    ]
    );
  }
}