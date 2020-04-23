import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp2/ui/bottom_navigation_bar_page_controller/app_layout/updates/updates.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'package:flutterapp2/constant/globals.dart' as globals;
class EventDetails extends StatefulWidget {
  @override
  _EventDetailsState createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  Future<String> event_det(context) async {

    String url = globals.url + "getuserongoingevent";

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
    event_det(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,

        title: Text('Event Details',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
        flexibleSpace: Container(
          decoration: BoxDecoration(
             color: Colors.orange),
        ),
      ),
      body: Column(
        children: <Widget>[
          Column(crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                  'assets/images/wisecrab.jpg',
                  width: MediaQuery.of(context).size.height/2.25,
                  height: MediaQuery.of(context).size.height/3.5,
                  fit:BoxFit.fill


              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top:10.0,left: 15.0),
            child: Text('Fuel Future Skills Summit and Sanam Live Concert', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10.0,left: 15.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(' by - FUEL',style: TextStyle(color: Colors.grey.shade500),textAlign: TextAlign.left,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:15.0,top:10),
            child: Row(
              children: <Widget>[
                Icon(Icons.location_on,color: Colors.green,),
                Text("   | Locate Us")
              ]

                ),
          ),//location
          Padding(
            padding: const EdgeInsets.only(left:15.0,top: 10.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.link,color: Colors.blue,),
                Text('   | '),
                new InkWell(
                    child: new Text('Website',),
                    onTap: () => launch('http://fuelngo.in/')
                )
              ],
            ),
          ),//website
          Padding(
            padding: const EdgeInsets.only(left:10.0,right: 10.0),
            child: Divider(
                color: Colors.grey
            ),
          ),//divider
          Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text("About", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              ],
            ),
          ),//about
          Padding(
            padding: const EdgeInsets.only(left:15.0,top:10),
            child: Text("FUEL Organised a mega Aptitude CHampionship2020- for the Students Around 15000 students paricipated and trained in it to sharpen the aptitude skills.in the celeberation of their success FUEL is hosting, A fundraising Musical Concert by SANAM band. This concert is arranged to celeberate the success of FUEL Aptitude Championship. It is the musical tribute that is not only a concert nut a game changing initiative for every girl child of our Army Jawans. Melodies of this music concert will be the India's one of the biggest musical Band - SANAM band\n", style: TextStyle(color: Colors.grey.shade600),),
          ),//data
          Padding(
            padding: const EdgeInsets.only(left:10.0,right: 10.0),
            child: Divider(
                color: Colors.grey
            ),
          ),//divider
            ],
          ),





    );
  }
}
