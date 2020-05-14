import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutterapp2/constant/data.dart';
import 'package:flutterapp2/ui/bottom_navigation_bar_page_controller/page_controller.dart';

import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
var tempUserID;
bool login;

void login_var() async{

  sp= await SharedPreferences.getInstance();
  // ui.login=sp.getBool('true')?? false;

  sp.setBool('userLogedIn', login);
  sp.setString('userID', tempUserID);

}


Future<String> Login(context,email,password,deviceID) async {

  String url ="https://dashboard.fuelngoindia.com/userapp/userlogin";

  http.post(url, body: {

    "email":email,
    "password": password,
    "device_id" : deviceID,

  }).then((http.Response response) async {
    final int statusCode = response.statusCode;

    if (statusCode < 200 || statusCode > 400 || json == null) {
      throw new Exception("Error fetching data");
    }
    var responseArray = json.decode(response.body);
    print(responseArray);
    /* var UserID = responseArray['data'] ['uID'];*/
    tempUserID = responseArray['data'][0]['uID'].toString();
    //List.generate(responseArray['data'].length, (i)=>responseArray['data'][i]['uID'].toString());
    print(userID);


    var status = responseArray['status'];

    if(status == "200" || status == 200){
      login=true;
      login_var();
     /**/
      Fluttertoast.showToast(msg: "Logged in successfully!");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MyPageController()),
      );
    }else if(status == 404 || status == "404"){
      Fluttertoast.showToast(
          msg: "Userd doesn't exist",
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