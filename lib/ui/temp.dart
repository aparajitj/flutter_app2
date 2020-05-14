import 'dart:io';

import 'package:apple_sign_in/apple_sign_in.dart';
import 'package:apple_sign_in/apple_sign_in_button.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
class Apple_SignIn extends StatefulWidget {

  @override
  _Apple_SignInState createState() => _Apple_SignInState();
}

class _Apple_SignInState extends State<Apple_SignIn> {
  bool supportsAppleSignIn = false;
  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    if(Platform.isIOS){                                                      //check for ios if developing for both android & ios
      AppleSignIn.onCredentialRevoked.listen((_) {
        print("Credentials revoked");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(

          height:50,
          width:  MediaQuery.of(context).size.width-40,
          child: AppleSignInButton(
            style: ButtonStyle.black,
            type: ButtonType.continueButton,
            onPressed: () {
              initiateSignInWithApple();
            },
          ),
        ),
      ),
    );
  }
}

void initiateSignInWithApple() async
{if(await AppleSignIn.isAvailable()) {
  final AuthorizationResult result = await
  AppleSignIn.performRequests([
    AppleIdRequest(requestedScopes: [Scope.email, Scope.fullName])
  ]);
}else{
  print('Apple SignIn is not available for your device');
}





  /*
  final AuthorizationResult result = await AppleSignIn.performRequests([
  AppleIdRequest(requestedScopes: [Scope.email, Scope.fullName])
]);

  switch (result.status) {
    case AuthorizationStatus.authorized:

      print("successfull sign in");
      final AppleIdCredential appleIdCredential = result.credential;


      break;
    case AuthorizationStatus.error:
      print("error");
      break;

    case AuthorizationStatus.cancelled:
      print('User cancelled');
      break;
  }*/
}
