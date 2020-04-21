import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp2/constant/data.dart';
import 'package:flutterapp2/main.dart';
import 'package:flutterapp2/ui/splash_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'edit_profile.dart';
import 'package:flutterapp2/constant/globals.dart' as globals;
import 'package:http/http.dart' as http;


import 'profile_qr.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  Future<String>logout(context) async{
    runApp(new MaterialApp(debugShowCheckedModeBanner: false,
    home:SplashScreen()));
    sp=await SharedPreferences.getInstance();
    sp.clear();
    Fluttertoast.showToast(msg: "Logged out successfully!");
  }
  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    profile_info(context);

  }
  Future<String> profile_info(context) async {

    String url = globals.url + "getuserprofile";

    http.post(url, body: {
      'userID':userID,


    }).then((http.Response response) async {
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error fetching data");
      }
      var responseArray = json.decode(response.body);
      setState(() {
        editEmailID.text=responseArray['data']['uEmail'].toString();
        editContactNumber.text=responseArray['data']['uMobile'].toString();
        editCollege.text=responseArray['data']['uCollegeName'].toString();
        editInstagramLink.text=responseArray['data']['uInstagram'].toString();
        editFacebookLink.text=responseArray['data']['uFacebook'].toString();
        editLinkedLink.text=responseArray['data']['uLinkedin'].toString();
        editName.text=responseArray['data']['uName'].toString();

        editUserProfile.text=responseArray['data']['userprfpic'].toString();
      });

     // customer_name_controller.text=responseArray['data']['uEmail'].toString();


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
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.orange,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.grey.shade200,
                ),
              )
            ],
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*.1,right: 10,left: 10,bottom:100),
                child: Column(
                  children: <Widget>[
                    Expanded(

                      child: Container(
                        padding: EdgeInsets.only(top: 0,left: 20,bottom: 20,right: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(editName.text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                            Text("College: "+editCollege.text == null ? "Add college name" :editCollege.text ,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black87),),

                            /* Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(

                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage("https://cdn.clipart.email/aa3b89e8be9b0c92ae31a52a4ccf71c1_fb-icon-circle-iconset-martz90_512-512.png"),
                                          fit: BoxFit.fill

                                      )
                                  ),
                                  height: 40,
                                  width: 40,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(

                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage("https://cdn4.iconfinder.com/data/icons/social-media-icons-the-circle-set/48/linkedin_circle-512.png"),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                  height: 40,
                                  width: 40,
                                ),



//                              CircleAvatar(
//                              backgroundImage: NetworkImage("https://cdn4.iconfinder.com/data/icons/social-media-icons-the-circle-set/48/linkedin_circle-512.png"),
//                              radius: 20,
//                            ),
//
//                              CircleAvatar(
//                                radius: 20,
//                                backgroundImage: NetworkImage('https://cdn4.iconfinder.com/data/icons/social-media-icons-the-circle-set/48/linkedin_circle-512.png')
//
//
//                              ),
                              ],)*/

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Expanded(
                      flex: 4,
                      child: Container(

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(20),

                              child: Text("Your information",style: TextStyle(fontSize: 20,color: Colors.black)),
                            ),
                            Divider(
                              color: Colors.grey.shade200,
                            ),
                            Padding(
                              padding:  EdgeInsets.only(top:20,left:5),
                              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left:10.0),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.mail,color: Colors.black,size: 25,),
                                        SizedBox(width: 25,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Email",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black)),
                                            Text(editEmailID.text,style: TextStyle(fontSize: 13,color: Colors.black87)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.only(left:15.0,top: 18),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.phone,color: Colors.black,size: 25,),
                                        SizedBox(width: 25,),

                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: <Widget>[
                                            Text("Phone",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black)),
                                            Text(editContactNumber.text,style: TextStyle(fontSize: 13,color: Colors.black87)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20,),

                                  Padding(
                                    padding: const EdgeInsets.only(left:15.0,top: 18),
                                    child: Row(
                                      children: <Widget>[
                                        Container(

                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: NetworkImage("https://cdn.clipart.email/aa3b89e8be9b0c92ae31a52a4ccf71c1_fb-icon-circle-iconset-martz90_512-512.png"),
                                                  fit: BoxFit.fill

                                              )
                                          ),
                                          height: 30,
                                          width: 30,
                                        ),

                                        SizedBox(width: 25,),

                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: <Widget>[
                                            Text("Facebbok",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black)),
                                            Text(editFacebookLink.text,style: TextStyle(fontSize: 13,color: Colors.black87)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20),

                                  Padding(
                                    padding: const EdgeInsets.only(left:15.0,top: 18),
                                    child: Row(
                                      children: <Widget>[
                                        Container(

                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: NetworkImage("https://cdn4.iconfinder.com/data/icons/social-media-icons-the-circle-set/48/linkedin_circle-512.png"),
                                                  fit: BoxFit.fill
                                              )
                                          ),
                                          height: 30,
                                          width: 30,
                                        ),
                                        SizedBox(width: 25,),

                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: <Widget>[
                                            Text("LinkedIn",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black)),
                                            Text(editLinkedLink.text,style: TextStyle(fontSize: 13,color: Colors.black87)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Padding(
                                    padding: const EdgeInsets.only(left:15.0,top: 18),
                                    child: Row(
                                      children: <Widget>[
                                        Container(

                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: NetworkImage("https://i.pinimg.com/236x/6b/d4/d4/6bd4d4b8a16a7ec07ee9b9df0300a983.jpg"),
                                                  fit: BoxFit.fill

                                              )
                                          ),
                                          height: 30,
                                          width: 30,
                                        ),

                                        SizedBox(width: 25,),

                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: <Widget>[
                                            Text("Instagram",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black)),
                                            Text(editInstagramLink.text,style: TextStyle(fontSize: 13,color: Colors.black87)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right:40.0,left: 30,top: 35),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.grey.shade300,
                      backgroundImage: NetworkImage(globals.url + editUserProfile.text),
                    ),
                    Row(children: <Widget>[
                      Container(

                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                                color: Colors.grey.shade600,
                                blurRadius: 2
                            )]
                        ),
                        height: 40,
                        width: 40,
                        child: IconButton(icon:Icon(Icons.edit,color: Colors.black,size: 20),onPressed: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => EditProfile(

                          )));


                        },),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                                color: Colors.grey.shade600,
                                blurRadius: 2
                            )]
                        ),
                        height: 40,
                        width: 40,
                        child: IconButton(icon:Icon(Icons.scanner,color: Colors.black,size: 20),
                          onPressed: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => MyQR()));


                          },),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                                color: Colors.grey.shade600,
                                blurRadius: 2
                            )]
                        ),
                        height: 40,
                        width: 40,
                        child: IconButton(
                          icon:Icon(
                            Icons.exit_to_app,
                            color: Colors.black,
                            size: 20,
                          ),
                          onPressed: (){
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(Consts.padding),
                                    ),
                                    elevation: 0.0,
                                    backgroundColor: Colors.transparent,
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.only(
                                            top: Consts.avatarRadius ,
                                            bottom: Consts.padding,
                                            left: Consts.padding,
                                            right: Consts.padding,
                                          ),
                                          margin: EdgeInsets.only(top: Consts.avatarRadius),
                                          decoration: new BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.rectangle,
                                            borderRadius: BorderRadius.circular(Consts.padding),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black26,
                                                blurRadius: 10.0,
                                                offset: const Offset(0.0, 10.0),
                                              ),
                                            ],
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            // mainAxisAlignment: MainAxisAlignment.center,
                                            //crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Warning',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 19),
                                              ),
                                              SizedBox(height: 5,),
                                              Text(
                                                'Do you really want to exit?',style: TextStyle(color: Colors.black87,fontSize: 14,fontWeight: FontWeight.w600,),
                                              ),
                                              SizedBox(height: 15,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Container(

                                                      child: FlatButton(

                                                        onPressed: () {Navigator.pop(context);},
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(20)
                                                        ),
                                                        color:Colors.green.shade700,
                                                        child: Text(
                                                          "No",
                                                          style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
                                                        ),

                                                      ),
                                                      height: 40,
                                                    ),
                                                  ),

                                                  SizedBox(width: 20,),
                                                  Expanded(
                                                    child: Container(
                                                      child: FlatButton(

                                                        onPressed: () {

                                                          logout(context);



                                                        },
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(20)
                                                        ),
                                                        child: Text(
                                                          "Yes",
                                                          style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
                                                        ),
                                                        color:  Colors.red.shade700,
                                                      ),
                                                      height: 40,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
//                                  child: Column(
//                                    mainAxisSize: MainAxisSize.min, // To make the card compact
//                                    children: <Widget>[
//                                      Text(
//                                        "tite",
//                                        style: TextStyle(
//                                          fontSize: 24.0,
//                                          fontWeight: FontWeight.w700,
//                                        ),
//                                      ),
//                                      SizedBox(height: 16.0),
//                                      Text(
//                                        'description',
//                                        textAlign: TextAlign.center,
//                                        style: TextStyle(
//                                          fontSize: 16.0,
//                                        ),
//                                      ),
//                                      SizedBox(height: 24.0),
//                                      Align(
//                                        alignment: Alignment.bottomRight,
//                                        child: FlatButton(
//                                          onPressed: () {
//                                            Navigator.of(context).pop(); // To close the dialog
//                                          },
//                                          child: Text('buttonText'),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
                                        ),
                                        Positioned(
                                            left: Consts.padding,
                                            right: Consts.padding,
                                            child:Container(


                                              height: 100,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                              ),
                                              child: Icon(Icons.error,color: Colors.amber,size: 100,),
                                            )
                                        ),
                                      ],
                                    ),
                                  );

                                });

                          },),
                      )
                    ],)
                  ],
                ),
              )
            ],

          ),
        ],
      ),
    );
  }
}
class Consts {
  Consts._();

  static const double padding = 30.0;
  static const double avatarRadius = 50.0;
}