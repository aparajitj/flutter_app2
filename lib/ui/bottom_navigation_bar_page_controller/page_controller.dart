import 'package:flutter/material.dart';
import 'package:flutterapp2/constant/data.dart';
//import 'package:flutterapp2/ui/app_layout/events/Events.dart';
//import 'package:flutterapp2/ui/app_layout/homepage/homepage.dart';
//import 'package:flutterapp2/ui/updates/job_updates.dart';
//import 'package:flutterapp2/ui/app_layout/profile/profile_page.dart';
import 'package:flutterapp2/ui/bottom_navigation_bar_page_controller/app_layout/profile/profile_page.dart';
import 'package:flutterapp2/ui/bottom_navigation_bar_page_controller/app_layout/updates/updates.dart';
import 'package:flutterapp2/ui/bottom_navigation_bar_page_controller/app_layout/updates/job_updates.dart';
import 'package:flutterapp2/ui/bottom_navigation_bar_page_controller/app_layout/events/Events.dart';
import 'package:flutterapp2/ui/bottom_navigation_bar_page_controller/app_layout/homepage/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';




class MyPageController extends StatefulWidget {
  @override
  _MyPageControllerState createState() => _MyPageControllerState();
}

class _MyPageControllerState extends State<MyPageController> {
  int currentPageIndex=0;
  PageController _pageController;
  void getUserID() async{

    sp= await SharedPreferences.getInstance();
    // ui.login=sp.getBool('true')?? false;
    userID = sp.getString('userID');



  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserID();

    _pageController=PageController();
  }

  void temp()async{
    sp= await SharedPreferences.getInstance();


  }
  @override
  Widget build(BuildContext context) {
    temp();
    return Scaffold(
      body:PageView(
        controller: _pageController,
        onPageChanged: (index){
          setState(() {
            currentPageIndex=index;
          });

        },
        children: <Widget>[
          Homepage(),
        Events(),
          Updates(),
          ProfilePage(),
        ],

      ),
      bottomNavigationBar: BottomNavigationBar(currentIndex: currentPageIndex,
      selectedItemColor: Colors.amber,
      unselectedItemColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),

          title: Text("Home", ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event),


          title: Text("Events",),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.web_asset),


          title: Text("Updates",),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box),


          title: Text("Profiles",),
        ),
      ],
        onTap: (int index)  {setState(() {
          currentPageIndex=index;
        }

        );
        _pageController.jumpToPage(index);},
    ),
    );
  }
}
