import 'dart:convert';
import 'dart:ffi';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp2/constant/data.dart';
import 'package:flutterapp2/ui/MyApp.dart';
import 'package:flutterapp2/ui/app_layout/abcd.dart';
import 'package:flutterapp2/ui/app_layout/homepage.dart';
import 'package:flutterapp2/ui/signup_page.dart';
import 'Responsive_Screen.dart';
import 'package:email_validator/email_validator.dart';
import 'forgot_password.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

bool login;
Screen size;
var _emailController= new TextEditingController();
var _passwordController= new TextEditingController();
bool loginstat;
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  int _index=0;
  void login_var() async{
    SharedPreferences sp;
    sp= await SharedPreferences.getInstance();
    // login=sp.getBool('true')?? false;

    sp.setBool('true', login);

  }
  Future<String> Login(context) async {

    String url ="https://test.gathrr.in/userapp/userlogin";

    http.post(url, body: {

      "email": _emailController.text,
      "password": _passwordController.text,
      "device_id" : "",

    }).then((http.Response response) async {
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error fetching data");
      }
      var responseArray = json.decode(response.body);
      print(responseArray);
      var status = responseArray['status'];
      if(status == "200" || status == 200){
        Fluttertoast.showToast(msg: "Logged in successfully!");
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => MyAppa()),
        );
      }else if(status == 404 || status == "404"){
        Fluttertoast.showToast(
            msg: "Userd doesn't exist",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
//            timeInSecForIosWeb: 1,
            textColor: Colors.black,
            fontSize: 16.0
        );

      }
      //pr.show();


    });
  }

  @override
  void initState() {
    super.initState();


  }

  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    /* if(login==false)
      print('no luck');
    else
      print('luck');*/
    size = Screen(MediaQuery.of(context).size);


    bool _obscureText = true;


    String _password;
    bool showLoading = false;
    void _toggle() {
      setState(() {
        _obscureText = !_obscureText;
      });
    }

    return Scaffold(

        backgroundColor: Colors.white,
        body:
        Padding(

          padding: const EdgeInsets.only(top: 60.0, left: 25.0, right: 25.0, bottom: 10),
          child:
          Theme(
            data: ThemeData(primaryColor: Colors.amber),
            child:
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[Column(
                children: <Widget>[
                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Login",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height/20,
                                    color: Colors.grey.shade800
                                ),
                              )),
                        ),
                        TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailController,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(bottom: 3.0),
                              child: Icon(Icons.email),
                            ),
                            hintText: "Email",

                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            ),
                          ),
                          validator: (val) => !EmailValidator.validate(val, true)
                              ? 'Not a valid email.'
                              : null,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Stack(
                            children: <Widget>[
                              TextFormField(
                                obscureText: _obscureText,
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(bottom: 3.0),
                                    child: Icon(Icons.lock),
                                  ),
                                  hintText: "Password",

                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.amber),
                                  ),
                                ),
                                validator: (value) {
                                  if (value.length == 0) {
                                    return 'Password is compulsary!';
                                  } else if (value.length < 6) {
                                    return 'Password must be more than 6 charecters';
                                  }
                                  return null;
                                },
                                controller: _passwordController,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: InkWell(
                                    // onTap: toggle,
                                    child: Icon(Icons.remove_red_eye,
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        child: Text("Forgot password?",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        onTap: (){ Navigator.push(
                            context, MaterialPageRoute(builder: (context) => ForgotPassword())
                        );

                        },
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignupPage()),
                          );
                        },
                        child: Text("New user? Sign up!",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  )
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
                    color: Color(0Xfffaa926),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Login",style: TextStyle(
                        color: Colors.white,fontSize: 20,
                      )),
                    ),
                    onPressed: (){

                      setState(() {
                        if(!_formKey.currentState.validate())
                        {
                          autoValidation = true;

                          return;
                        }

                        else
                        {Login(context);

                        _formKey.currentState.save();
                        customer_name_controller.clear();
                        customer_email_id_controller.clear();
                        customer_contact_number_controller.clear();
                        customer_password_controller.clear();
                        autoValidation = false;

                        }
                      });

                    },
                  ),
                )
              ],
            ),
          ),
        ),

        /*bottomNavigationBar: (
            InkWell(
              onTap: (){
                var _formKey;
                if(_formKey.currentState.validate()){
                  setState(() {
                    showLoading = true;
                  });
                  // Login(context);
//                if(status == 200 || status == "200"){
//                  setState(() {
//                    showLoading = false;
//                  });
//                }
                }
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 35, 20, 20),
                child: Card(
                  child: Container(
                    height: 55,
                    //width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.orange,
                            Colors.orange,
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            //fontWeight: FontWeight.bold,
                            fontSize: 18,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ))*/
      /*bottomNavigationBar: (
            InkWell(
              onTap: (){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgotPassword()),
              );
                Login(context);
                var _formKey;
                *//*if(_formKey.currentState.validate()){
                setState(() {
                  showLoading = true;
                });
                login=true;
                login_temp();
                // Login(context);
//                if(status == 200 || status == "200"){
//                  setState(() {
//                    showLoading = false;
//                  });
//                }
              }*//*
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 35, 20, 20),
                child: Card(
                  child: Container(
                    height: 55,
                    //width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.amber,
                            Colors.amber,
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            //fontWeight: FontWeight.bold,
                            fontSize: 18,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
        )*/



    );
  }


}