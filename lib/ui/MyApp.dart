import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Responsive_Screen.dart';
import 'package:email_validator/email_validator.dart';
import 'Forgot_password.dart';
Screen size;


class wis extends StatefulWidget {
  @override
  _wisState createState() => _wisState();
}

class _wisState extends State<wis> {
  final _formKey = GlobalKey<FormState>();
  int _index=0;


    bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);


    bool _obscureText = true;
    var _emailController= new TextEditingController();
    var _passwordController= new TextEditingController();

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

          )



    );
  }


}

class Bizcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BizCard"),
        ),
        backgroundColor: Colors.blueGrey,
        body: Container(
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                _getCard(),
                _getAvatar()
              ],
            )
        )
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(60.0),
      decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(20.5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Aparajit Jha",
              style: TextStyle(fontSize: 20.9,
                  fontWeight: FontWeight.w500,
                  color: Colors.red)),
          Text("AJ.com"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person_outline),
              Text("Twitter : @Aj")
            ],
          )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.redAccent, width: 1.2),
        image: DecorationImage(
            image: NetworkImage("https://picsum.photos/300/300"),
            fit: BoxFit.cover),

      ),

    );
  }
}

class ScaffoldExample extends StatelessWidget {


  _tapButton() {
    debugPrint("Tapped button");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold"),
        centerTitle: true,
        backgroundColor: Colors.green.shade900,
        actions: <Widget>[
          Center(child: Text("kjklj"),),
          IconButton(
            icon: Icon(Icons.email), onPressed: () => debugPrint("abcd"),),
          IconButton(icon: Icon(Icons.access_alarms), onPressed: (_tapButton))
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlue,
          child: Icon(Icons.memory),
          onPressed: () => debugPrint("floating action button pressed")),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), title: Text("First")),
        BottomNavigationBarItem(
            icon: Icon(Icons.access_time), title: Text("Second")),

      ], onTap: (int index) => debugPrint("$index"),),
      backgroundColor: Colors.amberAccent.shade700,

      body: Container(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CB()
            /* InkWell(
    child: Text("xyz",
    style: TextStyle(fontSize: 80)),
        onDoubleTap: ()=>debugPrint("Double tap"),

    )*/

          ],
        ),

      ),
    );
  }
}

class CB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          final sb = SnackBar(
            backgroundColor: Colors.blue,
            content: Text("ytuai"),);
          Scaffold.of(context).showSnackBar(sb);
        },
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.circular(5.0)
          ),
          child: Text("Press"),
        )
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.deepOrange,
        child: Center(
            child: Text(
              "kljlkjlk",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 23.4,
                  fontStyle: FontStyle.italic
              ),
            )
        )
    );
  }
}