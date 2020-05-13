import 'package:flutter/material.dart';
import 'package:flutterapp2/constant/data.dart';
import 'package:flutterapp2/ui/bottom_navigation_bar_page_controller/app_layout/homepage/homepage.dart';
import 'package:flutterapp2/ui/bottom_navigation_bar_page_controller/page_controller.dart';
import 'package:linkedin_login/linkedin_login.dart';
import 'package:flutterapp2/signup/user_signup_page.dart';

class LinkedinButton extends StatelessWidget {

  final String redirectUrl = 'https://gathrr.eu.auth0.com/login/callback' ;
  final String clientId = '86ni4y8ehe3is3';
  final String clientSecret = 'zybqebq1ZWITfV8L';
  //final onlinkedinSignUp;
  UserObject user;


  @override
  Widget build(BuildContext context) {
   /* return  LinkedInButtonStandardWidget(

      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => LinkedInUserWidget(
              appBar: AppBar(
                title: Text('OAuth User'),
              ),
              destroySession: userLogedIn,
              redirectUrl: redirectUrl,
              clientId: clientId,
              clientSecret: clientSecret,
              onGetUserProfile: (LinkedInUserModel linkedInUser) {
                print('Access token ${linkedInUser.token.accessToken}');

                print('User id: ${linkedInUser.userId}');

                user = UserObject(
                  name: linkedInUser.firstName.localized.label +" "+linkedInUser.lastName.localized.label,

                  email: linkedInUser
                      .email.elements[0].handleDeep.emailAddress,
                );

                signup(context,user.email,"123456",user.name,"9123456789","");
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Homepage()),
                );
              },
              catchError: (LinkedInErrorObject error) {
                print('Error description: ${error.description},'
                    ' Error code: ${error.statusCode.toString()}');
                Navigator.pop(context);
              },
            ),
            fullscreenDialog: true,
          ),
        );
      },
    );*/
   return  Padding(
     padding: const EdgeInsets.only(top:20),
     child: Container(

       height: 50,
       child: RaisedButton(
         shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.all(Radius.circular(5))
         ),
         elevation: 4,
         padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
         color: Color(0Xff027AB6),
         child: Align(
           alignment: Alignment.centerLeft,
           child: Row(
             children: <Widget>[
               Image(image: AssetImage("assets/images/linkedin.jpg"), height: 50,width: 50,),
               SizedBox(
                 width: 10,
               ),
               Text("Sign Up using Linkedin",style: TextStyle(
                 color: Colors.white,fontSize: 20,
               )),
             ],
           ),
         ),
         onPressed: (){

           Navigator.push(
             context,
             MaterialPageRoute(
               builder: (BuildContext context) => LinkedInUserWidget(
                 appBar: AppBar(
                   title: Text('OAuth User'),
                 ),
                 destroySession:userLogedIn,
                 redirectUrl: redirectUrl,
                 clientId: clientId,
                 clientSecret: clientSecret,
                 onGetUserProfile: (LinkedInUserModel linkedInUser) {
                   print('Access token ${linkedInUser.token.accessToken}');

                   print('User id: ${linkedInUser.userId}');

                   user = UserObject(
                     name: linkedInUser.firstName.localized.label +" "+linkedInUser.lastName.localized.label,

                     email: linkedInUser
                         .email.elements[0].handleDeep.emailAddress,
                   );

                   signup(context,user.email,"123456",user.name,"9123456789","");
                 if (isLinkedinSignUpSuccessful==true)
                   {Navigator.pushReplacement(
                     context,
                     MaterialPageRoute(
                         builder: (context) => MyPageController()),
                   );}
                 else
                 {Navigator.pop(context);}
                 },
                 catchError: (LinkedInErrorObject error) {
                   print('Error description: ${error.description},'
                       ' Error code: ${error.statusCode.toString()}');
                   Navigator.pop(context);
                 },
               ),
               fullscreenDialog: true,
             ),
           );
         }
       ),
     ),
   );
  }
}
class AuthCodeObject {
  String code, state;

  AuthCodeObject({this.code, this.state});
}

class UserObject {
  String email,name;

  UserObject({this.name, this.email});
}


