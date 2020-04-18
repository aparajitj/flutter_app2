//import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';
class Updates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey.shade200,

      appBar: AppBar(

        centerTitle: true ,
        backgroundColor: Colors.transparent,

        title: Text('Updates',style: TextStyle(fontSize: 25),textAlign: TextAlign.center,),
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
                          height: 30,
                          width:30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Text("Fuel Future Skills",style: TextStyle(fontSize:20,color: Colors.grey.shade600)),
                        ),


                      ] ),

                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:8.0,bottom:15),
                        child: new Text("Our Courses",style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      new Text("FUEL has partnered with Nasscom FutureSkills, to offer all the students an exciting\nopportunity to learn more while sitting at home during COVID19 pandemic.In this,\nstudents will get a chance to earn ssc Nascom Certifications.\n",style: TextStyle(color: Colors.grey.shade700),),

                      Padding(
                        padding: const EdgeInsets.only(bottom:20.0),
                        child: new InkWell(
                            child: new Text('http://www.fuelfornation.com/fuel-future-skills-institute/', style: TextStyle(color: Colors.blue)
                            ),
                            onTap: () => launch('http://www.fuelfornation.com/fuel-future-skills-institute/')
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
                    height: 30,
                    width:30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("FUEL Future Skills",style: TextStyle(fontSize:20,color: Colors.grey.shade600)),
                  ),


                ] ),

            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:8.0,bottom:15),
                  child: new Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                new Text("Friends Union of Energising Lives(FUEL)\nis a non-profit organisation with a mission to provide the\n youth of the\nnation with access to essential information about career opportunities\n",style: TextStyle(color: Colors.grey.shade700),),

                Padding(
                  padding: const EdgeInsets.only(bottom:20.0),
                  child: new InkWell(
                      child: new Text('http://www.fuelfornation.com', style: TextStyle(color: Colors.blue)
                      ),
                      onTap: () => launch('http://www.fuelfornation.com/')
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
