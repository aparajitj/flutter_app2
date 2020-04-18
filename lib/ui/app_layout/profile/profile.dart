import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp2/ui/app_layout/profile/edit_profile.dart';
import 'package:flutterapp2/ui/app_layout/profile/profile_qr.dart';

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
                  color: Colors.deepOrange,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.orangeAccent,
                ),
              )
            ],
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*.1,right: 10,left: 10),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.only(top: 30,left: 20,bottom: 20,right: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text("Add Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                            SizedBox(height: 7,),
                            Text("College: Add College",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black87),),
                            SizedBox(height: 3,),
                            Text("Aptitude Score:",style: TextStyle(fontSize: 10,color: Colors.black54),),
                            SizedBox(height: 3,),
                            Text("Interested in learning: Add Skill",style: TextStyle(fontSize: 10,color: Colors.black54),),
                            SizedBox(height: 7,),
                            Row(
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

                              ],)

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
                            borderRadius: BorderRadius.only(topRight:Radius.circular(15),topLeft:Radius.circular(15) ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(20),

                              child: Text("Student information",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.black)),
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Padding(
                              padding:  EdgeInsets.all(20),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.mail,color: Colors.black,size: 25,),
                                      SizedBox(width: 25,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text("Email",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black)),
                                          Text("abc@gmail.com",style: TextStyle(fontSize: 13,color: Colors.black87)),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.phone,color: Colors.black,size: 25,),
                                      SizedBox(width: 25,),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: <Widget>[
                                          Text("Phone",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black)),
                                          Text("9876543210",style: TextStyle(fontSize: 13,color: Colors.black87)),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20,),

                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.person,color: Colors.black,size: 25,),
                                      SizedBox(width: 25,),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: <Widget>[
                                          Text("About",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black)),
                                          Text("Add Bio",style: TextStyle(fontSize: 13,color: Colors.black87)),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20,),

                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.monetization_on,color: Colors.black,size: 25,),
                                      SizedBox(width: 25,),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: <Widget>[
                                          Text("Dream Company",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black)),
                                          Text("Add dream company",style: TextStyle(fontSize: 13,color: Colors.black87)),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20,),

                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.people,color: Colors.black,size: 25,),
                                      SizedBox(width: 25,),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: <Widget>[
                                          Text("Family Income",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black)),
                                          Text("Add family income",style: TextStyle(fontSize: 13,color: Colors.black87)),
                                        ],
                                      ),
                                    ],
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
                padding:  EdgeInsets.only(right:40.0,left: 40,top: 35),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 45,
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
                        child: IconButton(icon:Icon(Icons.edit,color: Colors.black,size: 20),onPressed: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => EditProfile()));


                        },),
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
                        child: IconButton(icon:Icon(Icons.scanner,color: Colors.black,size: 20),
                        onPressed: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => MyQR()));


                        },),
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
                        child: IconButton(
                          icon:Icon(
                              Icons.exit_to_app,
                              color: Colors.black,
                              size: 20,
                          ),
                        onPressed: (){
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(Consts.padding),
                                  ),
                                  elevation: 0.0,
                                  backgroundColor: Colors.transparent,
                                  child: Stack(
                                    children: <Widget>[
                                  Container(
                                  padding: EdgeInsets.only(
                                  top: Consts.avatarRadius ,
                                    bottom: Consts.padding,
                                    left: Consts.padding,
                                    right: Consts.padding,
                                  ),
                                  margin: EdgeInsets.only(top: Consts.avatarRadius),
                                  decoration: new BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(Consts.padding),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 10.0,
                                        offset: const Offset(0.0, 10.0),
                                      ),
                                    ],
                                  ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      //crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Warning',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 19),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                          'Do you really want to exit?',style: TextStyle(color: Colors.black87,fontSize: 14,fontWeight: FontWeight.w600,),
                                        ),
                                        SizedBox(height: 15,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(

                                                child: FlatButton(

                                                  onPressed: () {},
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  color:Colors.green.shade700,
                                                  child: Text(
                                                    "No",
                                                    style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
                                                  ),

                                                ),
                                                height: 40,
                                              ),
                                            ),

                                            SizedBox(width: 20,),
                                            Expanded(
                                              child: Container(
                                                child: FlatButton(

                                                  onPressed: () {},
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  child: Text(
                                                    "Yes",
                                                    style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
                                                  ),
                                                  color:  Colors.red.shade700,
                                                ),
                                                height: 40,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
//                                  child: Column(
//                                    mainAxisSize: MainAxisSize.min, // To make the card compact
//                                    children: <Widget>[
//                                      Text(
//                                        "tite",
//                                        style: TextStyle(
//                                          fontSize: 24.0,
//                                          fontWeight: FontWeight.w700,
//                                        ),
//                                      ),
//                                      SizedBox(height: 16.0),
//                                      Text(
//                                        'description',
//                                        textAlign: TextAlign.center,
//                                        style: TextStyle(
//                                          fontSize: 16.0,
//                                        ),
//                                      ),
//                                      SizedBox(height: 24.0),
//                                      Align(
//                                        alignment: Alignment.bottomRight,
//                                        child: FlatButton(
//                                          onPressed: () {
//                                            Navigator.of(context).pop(); // To close the dialog
//                                          },
//                                          child: Text('buttonText'),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
                                ),
                                      Positioned(
                                        left: Consts.padding,
                                        right: Consts.padding,
                                          child:Container(


                                            height: 100,
                                            width: 100,
                                decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                            ),
                                            child: Icon(Icons.error,color: Colors.amber,size: 100,),
                                          )
                                      ),
                                    ],
                                  ),
                                );

                              });

                        },),
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



//                                return Dialog(
//                                  shape: RoundedRectangleBorder(
//                                      borderRadius:
//                                      BorderRadius.circular(15.0)), //this right here
//                                  child: Stack(
//                                    alignment: Alignment.topCenter,
//                                    children: <Widget>[
//
//                                      Container(
//                                        padding: EdgeInsets.only(top: 50,right: 20,left: 20),
//                                        margin: EdgeInsets.only(top: 50),
//
//                                        height: 150,
//                                        decoration: BoxDecoration(
//                                            color: Colors.white,
//                                          borderRadius: BorderRadius.all(Radius.circular(15))
//                                        ),
//                                        child: Column(
//                                         // mainAxisAlignment: MainAxisAlignment.center,
//                                          //crossAxisAlignment: CrossAxisAlignment.center,
//                                          children: [
//                                            Text(
//                                               'Warning',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),
//                                            ),
//                                            Text(
//                                              'Do you really want to exit?',style: TextStyle(color: Colors.black87,fontSize: 14,fontWeight: FontWeight.w600,),
//                                            ),
//                                            Row(
//                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                              children: <Widget>[
//                                                 Expanded(
//                                                   child: FlatButton(
//
//                                                    onPressed: () {},
//                                                     shape: RoundedRectangleBorder(
//                                                       borderRadius: BorderRadius.circular(20)
//                                                     ),
//                                                     color:Colors.green.shade700,
//                                                    child: Text(
//                                                      "No",
//                                                      style: TextStyle(color: Colors.white),
//                                                    ),
//
//                                                ),
//                                                 ),
//
//                                               SizedBox(width: 20,),
//                                                Expanded(
//                                                  child: FlatButton(
//
//                                                    onPressed: () {},
//                                                    shape: RoundedRectangleBorder(
//                                                        borderRadius: BorderRadius.circular(20)
//                                                    ),
//                                                    child: Text(
//                                                      "Yes",
//                                                      style: TextStyle(color: Colors.white),
//                                                    ),
//                                                    color:  Colors.red.shade700,
//                                                  ),
//                                                ),
//                                              ],
//                                            )
//                                          ],
//                                        ),
//                                      ),
//                                      Container(
//                                        height: 100,
//                                        width: 100,
//                                        decoration: BoxDecoration(
//                                          shape: BoxShape.circle,
//                                          color: Colors.white,
//                                        ),
//                                        child: Icon(Icons.error,color: Colors.amber,size: 95,),
//                                      )
//                                    ],
//                                  ),
//                                );

class Consts {
  Consts._();

  static const double padding = 30.0;
  static const double avatarRadius = 50.0;
}