import 'package:flutter/material.dart';
import 'package:flutterapp2/ui/MyApp.dart';
import 'package:flutterapp2/ui/Splash_Screen.dart';
import 'package:flutterapp2/ui/app_layout/Events.dart';
import 'package:flutterapp2/ui/app_layout/Updates.dart';
import 'package:flutterapp2/ui/app_layout/abcd.dart';
import 'package:flutterapp2/ui/app_layout/courseDetails.dart';
import 'package:flutterapp2/ui/app_layout/eventDetails.dart';
import 'package:flutterapp2/ui/app_layout/job_updates.dart';
//import 'package:flutterapp2/ui/app_layout/profile.dart';
import 'package:flutterapp2/ui/login.dart';

import 'ui/temp.dart';
void main() => runApp(new MaterialApp(
  //home: ScaffoldExample(),
   //home: wis(),
  //home: httpc(),
  //home: SplashScreen()
  //home: http_post(),
  //home: MyAppa(),
  //home: CB(),*/
  //home:updates(),
  //home:Events(),
 //home:eventDetails(),
   home:courseDetails(),
  //home:ProfilePage(),
  //home:LoginPage(),
));














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

