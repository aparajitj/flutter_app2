import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp2/main.dart';
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.orange,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.grey.shade200,
                ),
              )
            ],
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*.1,right: 10,left: 10,bottom:150),
                child: Column(
                  children: <Widget>[
                    Expanded(

                      child: Container(
                        padding: EdgeInsets.only(top: 0,left: 20,bottom: 20,right: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text("Shreyas Hosmani",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                            Text("College: coep",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black87),),

                           /* Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(

                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage("https://cdn.clipart.email/aa3b89e8be9b0c92ae31a52a4ccf71c1_fb-icon-circle-iconset-martz90_512-512.png"),
                                          fit: BoxFit.fill

                                      )
                                  ),
                                  height: 40,
                                  width: 40,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(

                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage("https://cdn4.iconfinder.com/data/icons/social-media-icons-the-circle-set/48/linkedin_circle-512.png"),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                  height: 40,
                                  width: 40,
                                ),



//                              CircleAvatar(
//                              backgroundImage: NetworkImage("https://cdn4.iconfinder.com/data/icons/social-media-icons-the-circle-set/48/linkedin_circle-512.png"),
//                              radius: 20,
//                            ),
//
//                              CircleAvatar(
//                                radius: 20,
//                                backgroundImage: NetworkImage('https://cdn4.iconfinder.com/data/icons/social-media-icons-the-circle-set/48/linkedin_circle-512.png')
//
//
//                              ),
                              ],)*/

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Expanded(
                      flex: 4,
                      child: Container(

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(20),

                              child: Text("Your information",style: TextStyle(fontSize: 20,color: Colors.black)),
                            ),
                            Divider(
                              color: Colors.grey.shade200,
                            ),
                            Padding(
                              padding:  EdgeInsets.only(top:20,left:5),
                              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left:10.0),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.mail,color: Colors.black,size: 25,),
                                        SizedBox(width: 25,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Email",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black)),
                                            Text("coolshryas1996123@gmail.com",style: TextStyle(fontSize: 13,color: Colors.black87)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.only(left:15.0,top: 18),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.phone,color: Colors.black,size: 25,),
                                        SizedBox(width: 25,),

                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: <Widget>[
                                            Text("Phone",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black)),
                                            Text("7775049481",style: TextStyle(fontSize: 13,color: Colors.black87)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20,),

                                  Padding(
                                    padding: const EdgeInsets.only(left:15.0,top: 18),
                                    child: Row(
                                      children: <Widget>[
                                        Container(

                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: NetworkImage("https://cdn.clipart.email/aa3b89e8be9b0c92ae31a52a4ccf71c1_fb-icon-circle-iconset-martz90_512-512.png"),
                                                  fit: BoxFit.fill

                                              )
                                          ),
                                          height: 30,
                                          width: 30,
                                        ),

                                        SizedBox(width: 25,),

                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: <Widget>[
                                            Text("Facebbok",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black)),
                                            Text("https://www.facebook.com",style: TextStyle(fontSize: 13,color: Colors.black87)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20),

                                  Padding(
                                    padding: const EdgeInsets.only(left:15.0,top: 18),
                                    child: Row(
                                      children: <Widget>[
                                        Container(

                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: NetworkImage("https://cdn4.iconfinder.com/data/icons/social-media-icons-the-circle-set/48/linkedin_circle-512.png"),
                                                  fit: BoxFit.fill
                                              )
                                          ),
                                          height: 30,
                                          width: 30,
                                        ),
                                        SizedBox(width: 25,),

                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: <Widget>[
                                            Text("LinkedIn",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black)),
                                            Text("hhtps://www.linkedin.com",style: TextStyle(fontSize: 13,color: Colors.black87)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Padding(
                                    padding: const EdgeInsets.only(left:15.0,top: 18),
                                    child: Row(
                                      children: <Widget>[
                                        Container(

                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: NetworkImage("https://i.pinimg.com/236x/6b/d4/d4/6bd4d4b8a16a7ec07ee9b9df0300a983.jpg"),
                                                  fit: BoxFit.fill

                                              )
                                          ),
                                          height: 30,
                                          width: 30,
                                        ),

                                        SizedBox(width: 25,),

                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: <Widget>[
                                            Text("Instagram",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black)),
                                            Text("https://www.instagram.com",style: TextStyle(fontSize: 13,color: Colors.black87)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right:40.0,left: 30,top: 25),
                child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.grey.shade300,
                      child: Icon(Icons.person,color: Colors.grey,size: 50,),
                    ),
                    Row(children: <Widget>[
                      Container(

                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                                color: Colors.grey.shade600,
                                blurRadius: 2
                            )]
                        ),
                        height: 40,
                        width: 40,
                        child: Icon(Icons.edit,color: Colors.black,size: 20,),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                                color: Colors.grey.shade600,
                                blurRadius: 2
                            )]
                        ),
                        height: 40,
                        width: 40,
                        child: Icon(Icons.scanner,color: Colors.black,size: 20,),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                                color: Colors.grey.shade600,
                                blurRadius: 2
                            )]
                        ),
                        height: 40,
                        width: 40,
                        child: Icon(Icons.exit_to_app,color: Colors.black,size: 20,),
                      )
                    ],)
                  ],
                ),
              )
            ],

          ),
        ],
      ),
    );
  }
}
