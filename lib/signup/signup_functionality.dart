import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterapp2/ui/bottom_navigation_bar_page_controller/page_controller.dart';
import 'package:flutterapp2/ui/login/login_functionality.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;




Future<String> signup(context,emailID,password,name,mobileNo,deviceID) async {

  String url ="https://dashboard.fuelngoindia.com/userapp/userregister";

  http.post(url, body: {

    "email": emailID,
    "password":password,
    "name": name,
    "mobileno" : mobileNo,

    "device_id" : deviceID,

  }).then((http.Response response) async {
    final int statusCode = response.statusCode;

    if (statusCode < 200 || statusCode > 400 || json == null) {
      throw new Exception("Error fetching data");
    }
    var responseArray = json.decode(response.body);
    print(responseArray);
    var status = responseArray['status'];
    if(status == "200" || status == 200){
      Fluttertoast.showToast(msg: "Sign up successfully!");
      Login(context, emailID, password, deviceID);

    }else if(status == 404 || status == "404"){
      Navigator.pop(context);
      Fluttertoast.showToast(
          msg: "sign up not successful",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
//            timeInSecForIosWeb: 1,
          textColor: Colors.black,
          fontSize: 16.0
      );


    }
    //pr.show();


  });
}
