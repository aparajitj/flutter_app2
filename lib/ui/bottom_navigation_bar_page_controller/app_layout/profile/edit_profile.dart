import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp2/constant/data.dart';
import 'package:flutterapp2/ui/bottom_navigation_bar_page_controller/app_layout/profile/profile_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutterapp2/constant/globals.dart' as globals;
import 'package:http/http.dart' as http;

class EditProfile extends StatelessWidget
{

Future<String> edit_profile(context) async {
  print(userID);
  String url = globals.url + "edituserprofile";

  http.post(url, body: {
    "uID":userID,
    "college": editCollege.text,
    "fullname": editName.text,
    "mobileno" : editContactNumber.text,
    "linkedin": editLinkedLink.text,
    "facebook": editFacebookLink.text,
    "instagram": editInstagramLink.text,


  }).then((http.Response response) async {
    final int statusCode = response.statusCode;

    if (statusCode < 200 || statusCode > 400 || json == null) {
      throw new Exception("Error fetching data");
    }
    var responseArray = json.decode(response.body);
    print(responseArray);

    var status = responseArray['status'];
    /* if(status == 200 || status == "200"){
        notifyTitle = List.generate(responseArray['data'].length, (i) =>responseArray['data'][i]['notifyTitle'].toString());
        notifyLink = List.generate(responseArray['data'].length, (i)=>responseArray['data'][i]['notifyURL'].toString());
      }else{

      }

      print(notifyTitle);
      print(notifyLink);*/
    //pr.show();


  });

}








@override
  Widget build(BuildContext context) {






    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0Xffff6d00), Colors.amber])),
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),onPressed: (){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ProfilePage(        )));
        },),
        title: Text("Edit Profile"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top:30,left: 15,right: 15,bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: <Widget>[

            Flexible(
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width/7,
                    backgroundColor: Colors.grey.shade300,
                    child: Icon(Icons.person,color: Colors.grey,size: MediaQuery.of(context).size.width/5,),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: <Widget>[
                      Text("Name:   ",style: TextStyle(color: Colors.black,fontSize: 17),),

                      Expanded(child: DrawEditTextField(keyboardType: TextInputType.text,textfieldController: editName,
                       /* onChangedVaue: (value){
                        editName = value;
                      },*/)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text("Contact no.:   ",style: TextStyle(color: Colors.black,fontSize: 17),),

                      Expanded(child: DrawEditTextField(keyboardType: TextInputType.number,textfieldController: editContactNumber,
                          )),
                    ],
                  ),

                  Row(
                    children: <Widget>[
                      Text("College:   ",style: TextStyle(color: Colors.black,fontSize: 17),),

                      Expanded(child: DrawEditTextField(keyboardType: TextInputType.text,textfieldController: editCollege,
                         )),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Facebook:   ",style: TextStyle(color: Colors.black,fontSize: 17),),

                          Expanded(child: DrawEditTextField(keyboardType: TextInputType.text,textfieldController: editFacebookLink,
                              )),
                        ],
                      ),
                      SizedBox(height: 3,),
                      Text("https://www.example.com",style: TextStyle(color: Colors.grey.shade600),textAlign: TextAlign.left,)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Linked In:   ",style: TextStyle(color: Colors.black,fontSize: 17),),

                          Expanded(child: DrawEditTextField(keyboardType: TextInputType.text,textfieldController: editLinkedLink,
                            )),
                        ],
                      ),
                      SizedBox(height: 3,),
                      Text("https://www.example.com",style: TextStyle(color: Colors.grey.shade600),textAlign: TextAlign.left,)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Instagram:   ",style: TextStyle(color: Colors.black,fontSize: 17),),

                          Expanded(child: DrawEditTextField(keyboardType: TextInputType.text,textfieldController: editInstagramLink,
                           )),
                        ],
                      ),
                      SizedBox(height: 3,),
                      Text("https://www.example.com",style: TextStyle(color: Colors.grey.shade600),textAlign: TextAlign.left,)
                    ],
                  ),


                ],
              ),
            ),
            Container(
              height: 40,
              child: RaisedButton(

                color: Colors.amber.shade700,
                elevation: 4,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),

                ),
                onPressed:() {
                          edit_profile(context);
                                },
                      child:
                  Text("SAVE",style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),)


              ),
            )
          ],
        ),
      ),
    );
  }
}

class DrawEditTextField extends StatelessWidget {
  final textfieldController;
  final keyboardType;

  DrawEditTextField({this.textfieldController,this.keyboardType,});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textfieldController,
      keyboardType: keyboardType,
        style: TextStyle(color: Colors.black,fontSize: 17),

      decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade700,width: 2),
          ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey,width: 1),
        ),
        contentPadding: EdgeInsets.only(bottom: 10,left: 5),

      ),

    );
  }
}
