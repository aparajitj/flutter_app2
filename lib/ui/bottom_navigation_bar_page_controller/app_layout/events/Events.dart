//import 'dart:html';

//import 'dart:html';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp2/constant/globals.dart' as globals;
import 'package:http/http.dart' as http;
import 'eventDetails.dart';
import '../homepage/homepage.dart';





class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  Future<String> upcoming_event_det(context) async {

    String url = globals.url + "getallupcomingevent";

    http.post(url, body: {
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
  Future<String> past_event_det(context) async {

    String url = globals.url + "getallpastevent";

    http.post(url, body: {

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
    //past_event_det(context);
    past_event_det(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,




      body:



        Column(


          children:     <Widget>[

            Stack(
                children: <Widget>[
                  CustomPaint(
                      painter: TitleDraw(),
                      child: Container(
                          padding: EdgeInsets.only(left:MediaQuery.of(context).size.height/25,top:MediaQuery.of(context).size.height/25,right:20,bottom:20),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height/4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Events',style: TextStyle(fontWeight:FontWeight.bold,color:Colors.white,fontSize: MediaQuery.of(context).size.height/23))
                            ],
                          ))
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:MediaQuery.of(context).size.height/9.15),
                    child:GestureDetector(

                        onTap: () {Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => eventDetails()),
                        );},
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),

                            ),
                            child: Image.asset(
                                'asset/images/download.jpg',
                                width: MediaQuery.of(context).size.height/2.125,
                                height: MediaQuery.of(context).size.height/4,
                                fit:BoxFit.fill


                            ),
                          ),
                        ),
                    ),

                  ),
                  //Align(alignment:Alignment.bottomLeft,child: Text("#Fuel For Nation",style: TextStyle(fontSize:25,color: Colors.white),))
                ]

            ),//top image

            Column(

              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left:10.0,top:20.0,bottom:20),
                  child: Align(alignment:Alignment.centerLeft,child: Text("Past Events",style: TextStyle(fontSize: MediaQuery.of(context).size.height/40),textAlign: TextAlign.left,/*style:FontWeight.w400,*/)),
                ),
              ],
            ),
            Container(
              color: Colors.white,




              child:  Column(          crossAxisAlignment: CrossAxisAlignment.start,





                children: <Widget>[

                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:10.0,top:10,bottom:10,right:10),
                        child: Image(
                          image: AssetImage('asset/images/fuel_logo1.png'),
                          height: MediaQuery.of(context).size.width-300,
                          width: MediaQuery.of(context).size.width-300,

                        ),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text("Fuel Future Skills Summit...",style: TextStyle(fontSize:20)),

                          new Text("9th Feb 2020 | 2:30 pm",style: TextStyle(color: Colors.grey)),

                          new Text("till 7 pm",style: TextStyle(color: Colors.grey)),
                          new Text("Sunny's World Lavale, Pune",style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),

                ],

              ),

            ),
            SizedBox(
              height: 3,
            ),



          ],
        ),





    );
  }
}
