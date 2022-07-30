import 'package:flutter/material.dart';

import '../data/Services/api_status.dart';
import '../data/Services/testimony_services.dart';
import '../data/models/testimonyModel.dart';


class TestimonyVeiwModel extends ChangeNotifier{
  late TestimonyService testimonyService ;

  bool _loading = false;
  List<TestimonyModel> _testimonyModel = [];
  TestimonyError? _testimonyError;
  late Widget _testimonyPosted;
  late String _details;
 late String _name;

  TestimonyVeiwModel(){

    getTestimony();
  }

  bool get loading => _loading;
  bool get loadingg => _loading;
  List<TestimonyModel> get testimonyModel => _testimonyModel;
  TestimonyError? get testimonyError => _testimonyError;
  Widget get testimonyPostedResponse => _testimonyPosted;


  setLoading(bool loading)async{
    _loading = loading;
    notifyListeners();
  }
  setLoadingg(bool loadingg)async{
    _loading = loadingg;
    notifyListeners();
  }

  setTestimonyModel(List testimonyModel ){
    _testimonyModel = testimonyModel.cast<TestimonyModel>();
  }
  setTestimonyError(TestimonyError testimonyError) {
    _testimonyError = testimonyError;
  }

  setTestimonyPosted(Widget testimonyPostedResponse){
    _testimonyPosted = testimonyPostedResponse;
  }


  Future getTestimony()async{
    setLoading(true);
    var response = await TestimonyService
        .getTestimonies();
    if(response is Success){
     List data = response.response as List;
      setTestimonyModel(data);
    }
    if(response is Failure){
      TestimonyError testimonyError = TestimonyError(
        code: response.code,
        message:response.errorResponse,
      );
      setTestimonyError(testimonyError);
    }
    setLoading(false);
  }


  Future sendTestimony(name, details)async{
    setLoadingg(true);
    print("This is loading state 1:::${loading}");
    var response = await TestimonyService.sendTes(name, details);
    if(response is Success){
      String message = response.response as String;
    }
    setLoadingg(false);
    print("This is loading state 2:::${loading}");
  }
}