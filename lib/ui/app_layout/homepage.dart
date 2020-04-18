import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatelessWidget {

  _launchFacebookURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          CustomPaint(
              painter: TitleDraw(),
              child: Container(
                padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("FUEL",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),),
                      Text("FUTURE SKILLS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30)),

                    ],
                  ))
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right:20.0,left: 20,top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[

                  Text("Groups",style: TextStyle(color: Colors.grey.shade700,fontSize: 25,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Container(
                    height: 2,width: 120,
                    color: Color(0Xffff9000),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: InkWell(
                            child: Container(
                              padding: EdgeInsets.only(top: 10,bottom: 10),
                              //height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Color(0Xff66bb6a),
                                  borderRadius: BorderRadius.all(Radius.circular(9)),

                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                        border: Border.all(
                                            color: Colors.white,
                                            width: 4
                                        ),
                                        image: DecorationImage(
                                          image: NetworkImage("https://www.pngitem.com/pimgs/m/510-5106766_whatsapp-png-icon-download-png-as-icon-logo.png"),
                                        )
                                    ),
                                    height: 35,
                                    width: 35,

                                  ),
                                  Text("Whatsapp",style: TextStyle(color: Colors.white,fontSize: 20),),
                                  Text("join group",style: TextStyle(color: Colors.white,fontSize: 10),),

                                ],
                              ),
                            ),
                            onTap: (){

                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            padding: EdgeInsets.only(top: 10,bottom: 10),
                            height: 80,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color(0Xff2196f3),
                              borderRadius: BorderRadius.all(Radius.circular(9)),

                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.white,
                                          width: 4
                                      ),
                                      image: DecorationImage(
                                        image: NetworkImage("https://cdn.clipart.email/aa3b89e8be9b0c92ae31a52a4ccf71c1_fb-icon-circle-iconset-martz90_512-512.png"),
                                      )
                                  ),
                                  height: 35,
                                  width: 35,

                                ),
                                Text("Facebook",style: TextStyle(color: Colors.white,fontSize: 20),),
                                Text("like page",style: TextStyle(color: Colors.white,fontSize: 10),),

                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            padding: EdgeInsets.only(top: 10,bottom: 10),
                            height: 80,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color(0Xff0e47a1),
                              borderRadius: BorderRadius.all(Radius.circular(9)),

                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.white,
                                          width: 4
                                      ),
                                      image: DecorationImage(
                                        image: NetworkImage("https://cdn4.iconfinder.com/data/icons/social-media-icons-the-circle-set/48/linkedin_circle-512.png"),
                                      )
                                  ),
                                  height: 35,
                                  width: 35,

                                ),
                                Text("LinkedIn",style: TextStyle(color: Colors.white,fontSize: 20),),
                                Text("connect",style: TextStyle(color: Colors.white,fontSize: 10),),

                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            padding: EdgeInsets.only(top: 10,bottom: 10),
                            height: 80,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color(0XffD53A6F),
                              borderRadius: BorderRadius.all(Radius.circular(9)),

                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.white,
                                          width: 4
                                      ),
                                      image: DecorationImage(
                                        image: NetworkImage("https://cdn2.iconfinder.com/data/icons/instagram-new/512/instagram-round-flat-512.png"),
                                        fit: BoxFit.fill
                                      )
                                  ),
                                  height: 35,
                                  width: 35,

                                ),
                                Text("Instagram",style: TextStyle(color: Colors.white,fontSize: 20),),
                                Text("follow",style: TextStyle(color: Colors.white,fontSize: 10),),

                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                  SizedBox(height: 20,),
                  Text("Courses",style: TextStyle(color: Colors.grey.shade700,fontSize: 25,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Container(
                    height: 2,width: 120,
                    color: Color(0Xffff9000),

                  ),
                  Expanded(
                    child: ListView(

                      
                      children: <Widget>[
                        Container(
                          height: 140,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(
                                child:  Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(

                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        boxShadow: [BoxShadow(color: Colors.grey.shade600,blurRadius: 2)]

                                    ),

                                    child: Column(
                                      children: <Widget>[
                                        Expanded(
                                            flex:3,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft:Radius.circular(10)),
                                                  image: DecorationImage(
                                                      image: NetworkImage("https://www.dexlabanalytics.com/wp-content/uploads/2017/04/How-Machine-Learning-Training-Course-and-AI-Made-Lives-Easier.png"),
                                                      fit: BoxFit.fill
                                                  )
                                              ),
                                            )),
                                        Expanded(
                                            flex: 1,
                                            child: Container(
                                              height: 160,
                                              padding: EdgeInsets.only(left: 15),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft:Radius.circular(10)),

                                              ),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: <Widget>[
                                                  Text("Learn IoT",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w700)),
                                                  Text("Rs 1780",style: TextStyle(color: Colors.grey.shade600,fontSize: 10),)
                                                ],
                                              ),
                                            )),
                                      ],
                                    ),

                                  ),
                                ),

                              ),
                              Expanded(
                                child:  Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(

                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        boxShadow: [BoxShadow(color: Colors.grey.shade600,blurRadius: 2)]

                                    ),

                                    child: Column(
                                      children: <Widget>[
                                        Expanded(
                                            flex:3,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft:Radius.circular(10)),
                                                  image: DecorationImage(
                                                      image: NetworkImage("https://d1jnx9ba8s6j9r.cloudfront.net/imgver.1551437392/img/co_img_491_1522328952.png"),
                                                      fit: BoxFit.fill
                                                  )
                                              ),
                                            )),
                                        Expanded(
                                            flex: 1,
                                            child: Container(
                                              padding: EdgeInsets.only(left: 15),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft:Radius.circular(10)),

                                              ),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: <Widget>[
                                                  Text("Learn IoT",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w700)),
                                                  Text("Rs 1780",style: TextStyle(color: Colors.grey.shade600,fontSize: 10),)
                                                ],
                                              ),
                                            )),
                                      ],
                                    ),

                                  ),
                                ),

                              )
                            ],
                          ),
                        ),

                        Container(
                          height: 140,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(
                                child:  Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(

                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        boxShadow: [BoxShadow(color: Colors.grey.shade600,blurRadius: 2)]

                                    ),

                                    child: Column(
                                      children: <Widget>[
                                        Expanded(
                                            flex:3,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft:Radius.circular(10)),
                                                  image: DecorationImage(
                                                      image: NetworkImage("https://i.ytimg.com/vi/aaz47m4sHb8/maxresdefault.jpg"),
                                                      fit: BoxFit.fill
                                                  )
                                              ),
                                            )),
                                        Expanded(
                                            flex: 1,
                                            child: Container(
                                              height: 160,
                                              padding: EdgeInsets.only(left: 15),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft:Radius.circular(10)),

                                              ),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: <Widget>[
                                                  Text("Learn IoT",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w700)),
                                                  Text("Rs 1780",style: TextStyle(color: Colors.grey.shade600,fontSize: 10),)
                                                ],
                                              ),
                                            )),
                                      ],
                                    ),

                                  ),
                                ),

                              ),
                              Expanded(
                                child:  Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(

                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        boxShadow: [BoxShadow(color: Colors.grey.shade600,blurRadius: 2)]

                                    ),

                                    child: Column(
                                      children: <Widget>[
                                        Expanded(
                                            flex:3,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft:Radius.circular(10)),
                                                  image: DecorationImage(
                                                      image: NetworkImage("https://i.ytimg.com/vi/h0gWfVCSGQQ/maxresdefault.jpg"),
                                                      fit: BoxFit.fill
                                                  )
                                              ),
                                            )),
                                        Expanded(
                                            flex: 1,
                                            child: Container(
                                              padding: EdgeInsets.only(left: 15),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft:Radius.circular(10)),

                                              ),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: <Widget>[
                                                  Text("Learn IoT",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w700)),
                                                  Text("Rs 1780",style: TextStyle(color: Colors.grey.shade600,fontSize: 10),)
                                                ],
                                              ),
                                            )),
                                      ],
                                    ),

                                  ),
                                ),

                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
//                  Expanded(
//                    child: GridView.count(
//                      scrollDirection: Axis.horizontal,
//
//                      crossAxisCount: 2,
//                      crossAxisSpacing: 25,
//                      mainAxisSpacing: 20,
//                      children: <Widget>[
////                        Container(
////                          decoration: BoxDecoration(
////                              borderRadius: BorderRadius.all(Radius.circular(10)),
////                              boxShadow: [BoxShadow(color: Colors.grey.shade600,blurRadius: 2)]
////
////                          ),
////
////                          child: Column(
////                            children: <Widget>[
////                              Expanded(
////                                flex:3,
////                                  child: Container(
////                                    decoration: BoxDecoration(
////                                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft:Radius.circular(10)),
////                                      image: DecorationImage(
////                                        image: NetworkImage("https://www.dexlabanalytics.com/wp-content/uploads/2017/04/How-Machine-Learning-Training-Course-and-AI-Made-Lives-Easier.png"),
////                                        fit: BoxFit.fill
////                                      )
////                                    ),
////                                  )),
////                              Expanded(
////                                flex: 1,
////                                  child: Container(
////                                    padding: EdgeInsets.only(left: 15),
////                                    decoration: BoxDecoration(
////                                      color: Colors.white,
////                                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft:Radius.circular(10)),
////
////                                    ),
////                                    child: Column(
////                                      crossAxisAlignment: CrossAxisAlignment.stretch,
////                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
////                                      children: <Widget>[
////                                        Text("Learn IoT",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w700)),
////                                        Text("Rs 1780",style: TextStyle(color: Colors.grey.shade600,fontSize: 10),)
////                                      ],
////                                    ),
////                                  )),
////                            ],
////                          ),
////
////                        ),
////                        Container(
////                          decoration: BoxDecoration(
////                              borderRadius: BorderRadius.all(Radius.circular(10)),
////                              boxShadow: [BoxShadow(color: Colors.grey.shade600,blurRadius: 2)]
////
////                          ),
////
////                          child: Column(
////                            children: <Widget>[
////                              Expanded(
////                                  flex:3,
////                                  child: Container(
////                                    decoration: BoxDecoration(
////                                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft:Radius.circular(10)),
////                                        image: DecorationImage(
////                                            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT4ECZ6GQe8zvGg-vt4sNKAJGUzVtPPqNk9wnKQPTtghVEarDRh&usqp=CAU"),
////                                            fit: BoxFit.fill
////                                        )
////                                    ),
////                                  )),
////                              Expanded(
////                                  flex: 1,
////                                  child: Container(
////                                    padding: EdgeInsets.only(left: 15),
////                                    decoration: BoxDecoration(
////                                      color: Colors.white,
////                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft:Radius.circular(10)),
////
////                                    ),
////                                    child: Column(
////                                      crossAxisAlignment: CrossAxisAlignment.stretch,
////                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
////                                      children: <Widget>[
////                                        Text("Learn IoT",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w700)),
////                                        Text("Rs 1780",style: TextStyle(color: Colors.grey.shade600,fontSize: 10),)
////                                      ],
////                                    ),
////                                  )),
////                            ],
////                          ),
////
////                        ),
////                        Container(
////                          decoration: BoxDecoration(
////                              borderRadius: BorderRadius.all(Radius.circular(10)),
////                              boxShadow: [BoxShadow(color: Colors.grey.shade600,blurRadius: 2)]
////
////                          ),
////
////                          child: Column(
////                            children: <Widget>[
////                              Expanded(
////                                  flex:3,
////                                  child: Container(
////                                    decoration: BoxDecoration(
////                                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft:Radius.circular(10)),
////                                        image: DecorationImage(
////                                            image: NetworkImage("https://www.dexlabanalytics.com/wp-content/uploads/2017/04/How-Machine-Learning-Training-Course-and-AI-Made-Lives-Easier.png"),
////                                            fit: BoxFit.fill
////                                        )
////                                    ),
////                                  )),
////                              Expanded(
////                                  flex: 1,
////                                  child: Container(
////                                    padding: EdgeInsets.only(left: 15),
////                                    decoration: BoxDecoration(
////                                      color: Colors.white,
////                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft:Radius.circular(10)),
////
////                                    ),
////                                    child: Column(
////                                      crossAxisAlignment: CrossAxisAlignment.stretch,
////                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
////                                      children: <Widget>[
////                                        Text("Learn IoT",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w700)),
////                                        Text("Rs 1780",style: TextStyle(color: Colors.grey.shade600,fontSize: 10),)
////                                      ],
////                                    ),
////                                  )),
////                            ],
////                          ),
////
////                        ),
////                        Container(
////                          decoration: BoxDecoration(
////                              borderRadius: BorderRadius.all(Radius.circular(10)),
////                              boxShadow: [BoxShadow(color: Colors.grey.shade600,blurRadius: 2)]
////
////                          ),
////
////                          child: Column(
////                            children: <Widget>[
////                              Expanded(
////                                  flex:3,
////                                  child: Container(
////                                    decoration: BoxDecoration(
////                                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft:Radius.circular(10)),
////                                        image: DecorationImage(
////                                            image: NetworkImage("https://www.dexlabanalytics.com/wp-content/uploads/2017/04/How-Machine-Learning-Training-Course-and-AI-Made-Lives-Easier.png"),
////                                            fit: BoxFit.fill
////                                        )
////                                    ),
////                                  )),
////                              Expanded(
////                                  flex: 1,
////                                  child: Container(
////                                    padding: EdgeInsets.only(left: 15),
////                                    decoration: BoxDecoration(
////                                      color: Colors.white,
////                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft:Radius.circular(10)),
////
////                                    ),
////                                    child: Column(
////                                      crossAxisAlignment: CrossAxisAlignment.stretch,
////                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
////                                      children: <Widget>[
////                                        Text("Learn IoT",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w700)),
////                                        Text("Rs 1780",style: TextStyle(color: Colors.grey.shade600,fontSize: 10),)
////                                      ],
////                                    ),
////                                  )),
////                            ],
////                          ),
////
////                        ),
////                        Container(
////                          decoration: BoxDecoration(
////                              borderRadius: BorderRadius.all(Radius.circular(10)),
////                              boxShadow: [BoxShadow(color: Colors.grey.shade600,blurRadius: 2)]
////
////                          ),
////
////                          child: Column(
////                            children: <Widget>[
////                              Expanded(
////                                  flex:3,
////                                  child: Container(
////                                    decoration: BoxDecoration(
////                                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft:Radius.circular(10)),
////                                        image: DecorationImage(
////                                            image: NetworkImage("https://www.dexlabanalytics.com/wp-content/uploads/2017/04/How-Machine-Learning-Training-Course-and-AI-Made-Lives-Easier.png"),
////                                            fit: BoxFit.fill
////                                        )
////                                    ),
////                                  )),
////                              Expanded(
////                                  flex: 1,
////                                  child: Container(
////                                    padding: EdgeInsets.only(left: 15),
////                                    decoration: BoxDecoration(
////                                      color: Colors.white,
////                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft:Radius.circular(10)),
////
////                                    ),
////                                    child: Column(
////                                      crossAxisAlignment: CrossAxisAlignment.stretch,
////                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
////                                      children: <Widget>[
////                                        Text("Learn IoT",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w700)),
////                                        Text("Rs 1780",style: TextStyle(color: Colors.grey.shade600,fontSize: 10),)
////                                      ],
////                                    ),
////                                  )),
////                            ],
////                          ),
////
////                        ),
////                        Container(
////                          decoration: BoxDecoration(
////                              borderRadius: BorderRadius.all(Radius.circular(10)),
////                              boxShadow: [BoxShadow(color: Colors.grey.shade600,blurRadius: 2)]
////
////                          ),
////
////                          child: Column(
////                            children: <Widget>[
////                              Expanded(
////                                  flex:3,
////                                  child: Container(
////                                    decoration: BoxDecoration(
////                                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft:Radius.circular(10)),
////                                        image: DecorationImage(
////                                            image: NetworkImage("https://www.dexlabanalytics.com/wp-content/uploads/2017/04/How-Machine-Learning-Training-Course-and-AI-Made-Lives-Easier.png"),
////                                            fit: BoxFit.fill
////                                        )
////                                    ),
////                                  )),
////                              Expanded(
////                                  flex: 1,
////                                  child: Container(
////                                    padding: EdgeInsets.only(left: 15),
////                                    decoration: BoxDecoration(
////                                      color: Colors.white,
////                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft:Radius.circular(10)),
////
////                                    ),
////                                    child: Column(
////                                      crossAxisAlignment: CrossAxisAlignment.stretch,
////                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
////                                      children: <Widget>[
////                                        Text("Learn IoT",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w700)),
////                                        Text("Rs 1780",style: TextStyle(color: Colors.grey.shade600,fontSize: 10),)
////                                      ],
////                                    ),
////                                  )),
////                            ],
////                          ),
////
////                        ),
//
//
//                      ],
//                    ),
//                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
class TitleDraw extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final p = Path();
    p.lineTo(0, size.height - 15);
    p.relativeQuadraticBezierTo(size.width / 2, 2 * 30.0, size.width, 0);
    p.lineTo(size.width, 0);
    p.close();

    canvas.drawPath(p, Paint()..color = Color(0Xffff6d00));
    final p1 = Path();

    p1.moveTo(size.width/3,0);
    p.relativeQuadraticBezierTo(size.width / 2, 2 * 30.0, size.width, 0);
    p1.lineTo(size.width, 0);
    p1.close();

    canvas.drawPath(p1, Paint()..color = Color(0Xffff9000));

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}
