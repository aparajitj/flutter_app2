import 'package:flutter/material.dart';
import 'package:flutterapp2/ui/Responsive_Screen.dart';
Screen size;

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Scaffold(
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
          padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
          child: Theme(
            data: ThemeData(primaryColor: Colors.amber),
            child: Form(
              //key: _formKey,
              child: Column(
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
                  //  controller: _emailController,
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
                    /* validator: (val) => !EmailValidator.validate(val, true)
                        ? 'Not a valid email.'
                        : null,*/
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        /*InkWell(
                          child: Text("Forgot password?",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          onTap: (){
                            *//* Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ForgotPassword()),
                            );*//*
                          },
                        ),*/
                        /*InkWell(
                          onTap: (){
                            *//*Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => CreateProfile()),
                            );*//*
                          },
                          child: Text("New user? Sign up!",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),*/
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
                  //  showLoading = true;
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
                          'Reset Password',
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
