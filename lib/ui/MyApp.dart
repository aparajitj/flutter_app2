import 'dart:convert';
import 'dart:ffi';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp2/ui/signup_page.dart';
import 'Responsive_Screen.dart';
import 'package:email_validator/email_validator.dart';
import 'forgot_password.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
bool login;
Screen size;
var _emailController= new TextEditingController();
var _passwordController= new TextEditingController();
bool loginstat;
/*
Future<Album> fetchAlbum() async {
  final response = await http.get('https://jsonplaceholder.typicode.com/albums/1');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
*/
class Album {
  final int userId;
  final int id;
  final String title;

  Album({this.userId, this.id, this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}
/*

class wis extends StatefulWidget {
  @override
  _wisState createState() => _wisState();

}

class _wisState extends State<wis> {
  final _formKey = GlobalKey<FormState>();
  int _index=0;
  Future<Album> futureAlbum;
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
              builder: (context) => HomeScreen()),
        );
      }else if(status == 404 || status == "404"){


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
   */
/* if(login==false)
      print('no luck');
    else
      print('luck');*//*

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

          padding: const EdgeInsets.only(top: 60.0, left: 25.0, right: 25.0),
          child:
          Theme(
            data: ThemeData(primaryColor: Colors.amber),
            child:
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

                          },
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.pushReplacement(
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
              */
/*Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgotPassword()),
              );*//*

              Login(context);
              var _formKey;
              */
/*if(_formKey.currentState.validate()){
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

          )



    );
  }


}
*/

class Bizcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BizCard"),
        ),
        backgroundColor: Colors.blueGrey,
        body: Container(
            alignment: Alignment.topCenter,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                _getCard(),
                new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.account_circle,
                    color: Colors.blue,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 75.0, bottom: 90),
                ),],
            )
        ),

      bottomNavigationBar: BottomNavigationBar( type: BottomNavigationBarType.fixed,items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), title: Text("Home")),
        BottomNavigationBarItem(
            icon: Icon(Icons.event), title: Text("Events")),

        BottomNavigationBarItem(
            icon: Icon(Icons.web_asset), title: Text("Updates")),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_box), title: Text("Profile")),

      ], onTap: (int index) => debugPrint("$index"),),
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
        /* DecorationImage(

            image: NetworkImage("https://picsum.photos/300/300"),
            fit: BoxFit.cover),
*/
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

class httpc extends StatefulWidget {
  httpc({Key key}) : super(key: key);

  @override
  _httpcState createState() => _httpcState();
}

class _httpcState extends State<httpc> {
  Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
/*
    futureAlbum = fetchAlbum();
*/
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.title);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}