//import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';
class jobUpdates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey.shade200,

        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true ,
          backgroundColor: Colors.transparent,

          title: Text('Job Updates',style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0Xffff6d00), Colors.amber])),
          ),
        ),
      body:


        Column(crossAxisAlignment: CrossAxisAlignment.start,



          children:     <Widget>[

            SizedBox(
              height: 3,
            ),


            Container(
              color: Colors.white,

              padding: EdgeInsets.only(left:20,top:10),


              child: Column(crossAxisAlignment: CrossAxisAlignment.start,




                  children: <Widget>[

                    Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image(
                            image: AssetImage('asset/images/fuel_logo1.png'),
                            height: 50,
                            width:50,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: new Text("You",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,)),
                          ),
                          new Text("8:15",style: TextStyle(fontSize:10,color: Colors.grey),textAlign: TextAlign.right,),

                        ] ),

                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:8.0,bottom:15),
                          child: new Text("Openings for: Job Title",style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        new Text("data : nbhjkhjlkhjhjlkhhjkllhhjklklh",style: TextStyle(color: Colors.grey.shade700),),

                        Padding(
                          padding: const EdgeInsets.only(bottom:20.0),
                          child: new InkWell(
                              child: new Text('https://docs.flutter.io/flutter/services/UrlLauncher', style: TextStyle(color: Colors.blue)
                              ),
                              onTap: () => launch('https://docs.flutter.io/flutter/services/UrlLauncher-class.html')
                          ),
                        ),
                      ],
                    ),


                  ],
                ),

              ),

            SizedBox(
              height: 3,
            ),
            Container(
              color: Colors.white,

              padding: EdgeInsets.only(left:20,top:10),


              child: Column(crossAxisAlignment: CrossAxisAlignment.start,




                  children: <Widget>[

                    Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image(
                            image: AssetImage('asset/images/fuel_logo1.png'),
                            height: 50,
                            width:50,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: new Text("You",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,)),
                          ),
                          new Text("8:15",style: TextStyle(fontSize:10,color: Colors.grey),textAlign: TextAlign.right,),

                        ] ),

                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:8.0,bottom:15),
                          child: new Text("Openings for: Job Title",style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        new Text("data\n   some more data\n      signinficantly more data\n          a lot more data",style: TextStyle(color: Colors.grey.shade700),),

                        Padding(
                          padding: const EdgeInsets.only(bottom:20.0),
                          child: new InkWell(
                              child: new Text('https://docs.flutter.io/flutter/services/UrlLauncher', style: TextStyle(color: Colors.blue)
                              ),
                              onTap: () => launch('https://docs.flutter.io/flutter/services/UrlLauncher-class.html')
                          ),
                        ),
                      ],
                    ),


                  ],
                ),

              ),
            SizedBox(
              height: 3,
            ),



              Container(
                color: Colors.white,
                padding: EdgeInsets.only(left:20,top:10),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image(
                            image: AssetImage('asset/images/fuel_logo1.png'),
                            height: 50,
                            width:50,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: new Text("You",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,)),
                          ),
                          new Text("8:15",style: TextStyle(fontSize:10,color: Colors.grey),textAlign: TextAlign.right,),

                        ] ),

                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:8.0,bottom:15),
                          child: new Text("Openings for: Job Title",style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        new Text("data : nbhjkhjlkhjhjlkhhjkllhhjklklh",style: TextStyle(color: Colors.grey.shade700),),

                        Padding(
                          padding: const EdgeInsets.only(bottom:20.0),
                          child: new InkWell(
                              child: new Text('https://docs.flutter.io/flutter/services/UrlLauncher', style: TextStyle(color: Colors.blue)
                              ),
                              onTap: () => launch('https://docs.flutter.io/flutter/services/UrlLauncher-class.html')
                          ),
                        ),
                      ],
                    ),


                  ],
                ),

              ),
            SizedBox(
              height: 3,
            ),


]),



    );


}
}
