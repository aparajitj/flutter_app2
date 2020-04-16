//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'homepage.dart';
Container _getCard() {
  return Container(

    decoration: new BoxDecoration(
        borderRadius: new BorderRadius.all(Radius.circular(30)
    )
    ),
    child: /*Image(

      image: AssetImage('assets/images/download.jpg'),
      height: 150,
      width:150,
    )*/
    Center(
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(20),

        ),
        child: Image.asset(
            'asset/images/download.jpg',
            width: 350,
            height: 250,
            fit:BoxFit.fill

        ),
      ),
    ),

  );
}



    /*height: 250,
    margin: EdgeInsets.only(left:10.0,top:30.0,right: 10.0,bottom: 10.0 ),
    decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(20.5)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Upcoming event",
            style: TextStyle(fontSize: 20.9,
                fontWeight: FontWeight.w500,
                color: Colors.red)),
        Text("AJ.com"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.person_outline),
            Text("Info")
          ],
        )
      ],
    ),*/

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,




      body:


          
        Column(


          children:     <Widget>[
            CustomPaint(
                painter: TitleDraw(),
                child: Container(
                    padding: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Events',style: TextStyle(color:Colors.white,fontSize: 30))
                      ],
                    ))
            ),
            Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),

                        ),
                        child: Image.asset(
                            'asset/images/download.jpg',
                            width: 375,
                            height: 225,
                            fit:BoxFit.fill

                        ),
                      ),
                    ),
                  ),
                  //Align(alignment:Alignment.bottomLeft,child: Text("#Fuel For Nation",style: TextStyle(fontSize:25,color: Colors.white),))
                ]

            ),
            //_getCard(),
            Column(

              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left:10.0,top:10.0,bottom:10),
                  child: Align(alignment:Alignment.centerLeft,child: Text("Past Events",style: TextStyle(fontSize: 25),textAlign: TextAlign.left,/*style:FontWeight.w400,*/)),
                ),
              ],
            ),
            Container(
              color: Colors.white,




              child:  Column(          crossAxisAlignment: CrossAxisAlignment.start,





                children: <Widget>[

                  Row(
                    children: <Widget>[
                      Image(
                        image: AssetImage('asset/images/fuel_logo1.png'),
                        height: MediaQuery.of(context).size.width-300,
                        width: MediaQuery.of(context).size.width-300,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text("Event Name Example",style: TextStyle(fontSize:15)),

                          new Text("9th Feb 2020",style: TextStyle(color: Colors.grey)),

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
            Container(
              color: Colors.white,




              child:  Column(          crossAxisAlignment: CrossAxisAlignment.start,





                children: <Widget>[

                  Row(
                    children: <Widget>[
                      Image(
                        image: AssetImage('asset/images/fuel_logo1.png'),
                        height: MediaQuery.of(context).size.width-300,
                        width: MediaQuery.of(context).size.width-300,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text("Event Name Example",style: TextStyle(fontSize:15)),

                          new Text("9th Feb 2020",style: TextStyle(color: Colors.grey)),

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
            Container(
              color: Colors.white,




              child:  Column(          crossAxisAlignment: CrossAxisAlignment.start,





                children: <Widget>[

                  Row(
                    children: <Widget>[
                      Image(
                        image: AssetImage('asset/images/fuel_logo1.png'),
                        height: MediaQuery.of(context).size.width-300,
                        width: MediaQuery.of(context).size.width-300,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text("Event Name Example",style: TextStyle(fontSize:15)),

                          new Text("9th Feb 2020",style: TextStyle(color: Colors.grey)),

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
