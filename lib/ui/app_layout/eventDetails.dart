import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class eventDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  'asset/images/download.jpg',
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
