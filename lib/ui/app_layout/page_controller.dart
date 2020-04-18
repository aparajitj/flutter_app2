import 'package:flutter/material.dart';
import 'package:flutterapp2/ui/app_layout/Events.dart';
import 'package:flutterapp2/ui/app_layout/homepage.dart';
import 'package:flutterapp2/ui/app_layout/job_updates.dart';
import 'package:flutterapp2/ui/app_layout/profile/profile.dart';
class MyAppa extends StatefulWidget {
  @override
  _MyAppaState createState() => _MyAppaState();
}

class _MyAppaState extends State<MyAppa> {
  int currentPageIndex=0;
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController=PageController();
  }
  @override
  Widget build(BuildContext context) {
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
          jobUpdates(),
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
