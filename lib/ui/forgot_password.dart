import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:flutterapp2/constant/data.dart';
import 'package:flutterapp2/constant/globals.dart'as globals;
import 'package:http/http.dart' as http;


bool _login;

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  Future<String> upcoming_event_det(context) async {

    String url = globals.url + "PHPMailer/recoverpassword";

    http.post(url, body: {
      "email": forgetPasswordEmailController.text,
    }).then((http.Response response) async {
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error fetching data");
      }
      var responseArray = json.decode(response.body);
      print(responseArray);

      var status = responseArray['status'];
      /* if(status == 200 || status == "200"){
        notifyTitle = List.generate(responseArray['data'].length, (i) =>responseArray['data'][i]['notifyTitle'].toString());
        notifyLink = List.generate(responseArray['data'].length, (i)=>responseArray['data'][i]['notifyURL'].toString());
      }else{

      }

      print(notifyTitle);
      print(notifyLink);*/
      //pr.show();


    });

  }

  @override
  void initState() {
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    debugPrint('kjlijhjkh');

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),

          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0,bottom: 10),
          child: Theme(
            data: ThemeData(primaryColor: Colors.amber),
            child: Form(
              //key: _formKey,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[ Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Forgot \nPassword",
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height/20,
                                color: Colors.grey.shade800
                            ),
                          )),
                    ),
                    TextFormField(
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.emailAddress,
                      controller: forgetPasswordEmailController,

                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(bottom: 3.0),
                          child: Icon(Icons.email,),
                        ),
                        hintText: "Email",



                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber),
                        ),

                      ),
                        validator: (values) {
                          return values.isEmpty ?
                          'Email is required' :
                          !emailid_exp.hasMatch(values)
                              ? 'Please enter valid Email'
                              : null;
                          /* validator: (val) => !EmailValidator.validate(val, true)
                            ? 'Not a valid email.'
                            : null,*/
                        }
                      /* validator: (val) => !EmailValidator.validate(val, true)
                          ? 'Not a valid email.'
                          : null,*/
                    ),


                  ],
                ),
                  Container(
                    height: 50,
                    child: RaisedButton(

                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      elevation: 4,
                      padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                      color: Colors.amber,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Reset",style: TextStyle(
                          color: Colors.white,fontSize: 20,
                        )),
                      ),
                    onPressed: (){upcoming_event_det(context);},
                    ),
                  )
                ],
              ),
            ),
          ),
        ),



    );
  }
}
