import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp2/constant/data.dart';
import 'package:flutterapp2/ui/signup_page.dart';
import 'Responsive_Screen.dart';
import 'Forgot_password.dart';
Screen size;

class wis extends StatefulWidget {
  @override
  _wisState createState() => _wisState();
}

class _wisState extends State<wis> {

  int _index=0;


  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {


    bool _obscureText = true;
    var _emailController= new TextEditingController();
    var _passwordController= new TextEditingController();
    final _formKey = GlobalKey<FormState>();
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
          padding: const EdgeInsets.only(top: 60.0, left: 25.0, right: 25.0),
          child: Theme(
            data: ThemeData(primaryColor: Colors.amber),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Login",
                          style: TextStyle(
                              fontSize: 40.0,
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
                    /* validator: (val) => !EmailValidator.validate(val, true)
                        ? 'Not a valid email.'
                        : null,*/
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Stack(
                      children: <Widget>[
                       /* TextFormField(
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
                              borderSide: BorderSide(color: Colors.orange),
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
                        ),*/
                        drawText_form_field(leadingIcons: Icon(Icons.lock), hintText: 'Password',userDetailIndex: 3,globalKey: _formKey,keyboardType: TextInputType.text,userDetailControllerIndex: 3,endingIcons: IconButton(
                          icon: Icon(
                            Icons.remove_red_eye,
                          ),
                          onPressed: (){
                            setState(() {
                              showSignupPassword = !showSignupPassword;
                            });
                          },),showText: showSignupPassword, validationFunction: (values){
                          return values.isEmpty?
                          "Password can't be null":
                          values.length<6?'Password must be greater than 6':null;

                        },
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
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          child: Text("Forgot password?",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ForgotPassword()),
                            );
                          },
                        ),
                        InkWell(
                          onTap: (){
                            /*Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => CreateProfile()),
                            );*/
                          },
                          child: Text("New user? Sign up!",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: (
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
            )

        )



    );
  }


}
