import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class courseDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.of(context).pop(),
      ),
      backgroundColor: Colors.transparent,

      title: Text('Course Details',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
      flexibleSpace: Container(
        decoration: BoxDecoration(
            color: Colors.orange),
      ),
    ),
      body: Column(
        children: <Widget>[
          Image.asset(
              'assets/images/course.png',
              width: MediaQuery.of(context).size.height/4.5,
              height: MediaQuery.of(context).size.height/4.5,
            fit: BoxFit.fill,



          ),
          Column(crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:10.0,left: 15.0),
                child: Text('Digital Marketing', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top:10.0,left: 15.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(' by - FUEL Future Skills',style: TextStyle(color: Colors.grey.shade500),textAlign: TextAlign.left,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:15.0,top:10),
            child: Row(
                children: <Widget>[
                  Icon(Icons.link,color: Colors.redAccent,),
                  Text("   | About Fuel Future Skills")
                ]

            ),
          ),//location
          Padding(
            padding: const EdgeInsets.only(left:15.0,top: 10.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.link,color: Colors.blue,),
                Text('   | View more details')
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
                Text("Description", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              ],
            ),
          ),//Description
          Padding(
            padding: const EdgeInsets.only(left:15.0,top:10),
            child: Text("FUEL provides an opportunity to LEARN FROM HOME and utilize your Lockdown period.\nOnline training as a weapon for students to fight the current situation.\nLearn these courses to determine your strengths and weaknesses.\nGet Fuel Future Skill Training & Get Job ready for industry.The name and photo associated with your Google account will be recorded when you upload files and submit this form.\n", style: TextStyle(color: Colors.grey.shade600),),
          ),//data
          Padding(
            padding: const EdgeInsets.only(left:10.0,right: 10.0),
            child: Divider(
                color: Colors.grey
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:40.0,left: 15,right:10),
            child: Container(
              height: 50,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                elevation: 4,

                color: Colors.purple,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Register Now",style: TextStyle(
                    color: Colors.white,fontSize: 20,
                  )),
                ),
                onPressed: (){},
              ),
            ),
          )
//divider
        ],
      ),





    );
  }
}
