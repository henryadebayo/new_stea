import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:stea/Services/api_status.dart';
import 'package:stea/models/testimonyModel.dart';
import 'package:stea/utils/constants.dart';
import 'package:http/http.dart'as http;


class TestimonyService {

  static Future<Object?> getTestimonies()async{
    try{
      var url = Uri.parse(TESTIMONY_URL);
      var response = await http.get(url);
      if(response.statusCode == 200){

        final Map<String, dynamic > testimonyPayload = jsonDecode(response.body);
        List<TestimonyModel> test = [];
        var testt = test.reversed;
        testimonyPayload.forEach((String id, dynamic payLoadData) {
          TestimonyModel _testimonies = TestimonyModel(
            id: payLoadData["id"],
            name: payLoadData["name"],
            details: payLoadData["details"],
          );
         test.add(_testimonies);
        });

     return Success(response:testt.toList());
      }
      return Failure(code:HTTPEXCEPTION, errorResponse: "invalid response");
    }on HttpException{
      return Failure(code:NO_INTERNET, errorResponse: "No Internet Connection");
    }
    catch(e){
    }
  }


  static Future<Object?> sendTes(String name,details) async {
    try {

      final Map<String, dynamic> tdata = {
        "name": name,
        "details":details,
      };
      http.Response response = await http.post(Uri.parse(TESTIMONY_URL),
          body: json.encode(tdata));
      print("this is status code:::: ${response.statusCode}");
      print("THIS IS RES.BODDY ::::${response.body}");

      if(response.statusCode == 200) {
       return Success(response: response.body);
      }
      return Failure(errorResponse: "Failed to Upload Testimony, check internet connection");
    }on HttpException{
      return Failure(code:NO_INTERNET, errorResponse: "No Internet Connection");
    }
    catch (e) {
      print("${e}");
      print("connection error $e");
    }
  }
}