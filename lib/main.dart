import 'package:flutter/material.dart';
import 'package:flutterapp2/ui/bottom_navigation_bar_page_controller/app_layout/events/Events.dart';
import 'package:flutterapp2/ui/bottom_navigation_bar_page_controller/app_layout/events/eventDetails.dart';
import 'package:flutterapp2/ui/bottom_navigation_bar_page_controller/app_layout/homepage/homepage.dart';
import 'package:flutterapp2/ui/bottom_navigation_bar_page_controller/app_layout/profile/edit_profile.dart';
import 'package:flutterapp2/ui/bottom_navigation_bar_page_controller/app_layout/profile/profile_page.dart';
import 'package:flutterapp2/ui/bottom_navigation_bar_page_controller/app_layout/updates/updates.dart';
import 'package:flutterapp2/ui/bottom_navigation_bar_page_controller/page_controller.dart';
import 'package:flutterapp2/ui/certificateSharing.dart';
import 'package:flutterapp2/ui/forgot_password.dart';
import 'package:flutterapp2/ui/login.dart';
import 'package:flutterapp2/ui/splash_screen.dart';
import 'package:flutterapp2/ui/temp.dart';



void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:share(),
    );
  }
}











/*Container(
            child: Column(

              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget>[
                new Text("Login",textScaleFactor: 5,textAlign: TextAlign.left,),
                new TextFormField(

                  decoration: const InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                ),]
                ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: passwordVisible,//This will obscure text dynamically
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                // Here is key idea
                suffixIcon: IconButton(
                  icon: Icon(
                    // Based on passwordVisible state choose the icon
                    passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {
                    // Update the state i.e. toogle the state of passwordVisible variable
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                  },
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              new InkWell(
                    child: new Text('New user?'),
                    //onTap: () => launch('https://docs.flutter.io/flutter/services/UrlLauncher-class.html')

                ),

                new InkWell(

                  child: new Text('Forgot Password?', textAlign: TextAlign.end,),
                  //onTap: () => launch('https://docs.flutter.io/flutter/services/UrlLauncher-class.html')


                ),]
            ),





              ],

            )

        ),*/

