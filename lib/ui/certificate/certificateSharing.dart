import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp2/constant/data.dart';
import 'dart:async';
import 'dart:io';

import 'dart:ui' as ui;

import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wc_flutter_share/wc_flutter_share.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_share_plugin/social_share_plugin.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import 'package:social_share_plugin/social_share_plugin.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../bottom_navigation_bar_page_controller/app_layout/homepage/homepage.dart';

class ShareCertificate extends StatefulWidget {
  @override
  _ShareCertificateState createState() => _ShareCertificateState();
}

class _ShareCertificateState extends State<ShareCertificate> {
  GlobalKey globalKey = GlobalKey();


//  Future<void> _capturePng() async {
//
//    String imageName = '/screen_shot_scraw.png';
//    Directory tempDir = await getApplicationDocumentsDirectory();
//    String tempPath = '${tempDir.path}$imageName';
//
//    RenderRepaintBoundary boundary = globalKey.currentContext.findRenderObject();
//    ui.Image imageUI = await boundary.toImage();
//    ByteData byteData = await imageUI.toByteData(format: ui.ImageByteFormat.png);
//    Uint8List uint8List = byteData.buffer.asUint8List();
//
//
//
//    bool isDirExist = await Directory(tempDir.path).exists();
//    if (!isDirExist)
//      Directory(tempDir.path).create();
//
//    File image = File(tempPath);
////
////    bool isExist = await image.exists();
////    if (isExist)
////      await image.delete();
//
//    File(tempPath).writeAsBytes(uint8List);
//
//}

  Future<String> get _localPath async {
    final directory = await getTemporaryDirectory();
    print("directory path: ${directory.path}");

    return directory.path;
  }
  Future<File> get _localFile async {
    final path = await _localPath;

    bool isDirExist = await Directory(path).exists();
    if (!isDirExist)
      Directory(path).create();

    File file = File('$path/counter.png');
    return file;
  }
  Future<void> _downloadImage() async {
    final file = await _localFile;

    RenderRepaintBoundary boundary = globalKey.currentContext.findRenderObject();
    ui.Image imageUI = await boundary.toImage();
    ByteData byteData = await imageUI.toByteData(format: ui.ImageByteFormat.png);
    Uint8List uint8List = byteData.buffer.asUint8List();


    try{
      file.writeAsBytes(uint8List);
      print("hello");


    }
    catch(e){
      print("error: $e");
    }
  }

  void _shareImage() async {
    try {
      RenderRepaintBoundary boundary = globalKey.currentContext.findRenderObject();
      ui.Image imageUI = await boundary.toImage(pixelRatio: ui.window.devicePixelRatio);
      final ByteData bytes = await imageUI.toByteData(format: ui.ImageByteFormat.png,);

      await WcFlutterShare.share(
          sharePopupTitle: 'share',
          fileName: 'certificate.png',
          mimeType: 'image/png',
          bytesOfFile: bytes.buffer.asUint8List());
    } catch (e) {
      print('error: $e');
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body:Stack(
        children: <Widget>[
          CustomPaint(
              painter: TitleDraw(),
              child: Container(
                  padding: EdgeInsets.only(left:MediaQuery.of(context).size.height/25,top:MediaQuery.of(context).size.height/25,right:20,bottom:20),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Certificate',style: TextStyle(fontWeight:FontWeight.bold,color:Colors.white,fontSize: MediaQuery.of(context).size.height/23))
                    ],
                  ))
          ),
          Padding(
            padding: EdgeInsets.only(left:10.0,right:10,top:MediaQuery.of(context).size.height/4),
            child: Column(
            children: <Widget>[
              RepaintBoundary(
                key: globalKey,
                child: CertificateUI(),
              ),
              SizedBox(
                height: 20
              ),
              Container(
                padding: EdgeInsets.only(left:10,right:10),
                child: Builder(
                  builder:(context)=> GestureDetector(
                    child: new Text(textToCopy,style: TextStyle(fontSize: 15),textAlign: TextAlign.justify,),
                    onTap: () {
                      Clipboard.setData(new ClipboardData(text: textToCopy));

                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text('Copied to clipboard'),

                      )
                      );

                    },
                  ),
                ),
              ),
              SizedBox(
                  height: 20
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(

                    height: 50,
                    width: 130,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.amber.shade900)
                      ),
                      color: Colors.amber.shade900,
                      onPressed:_downloadImage,
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Download',style: TextStyle(color: Colors.white,fontSize: 15),),
                          Padding(
                            padding: const EdgeInsets.only(left:7.0),
                            child: Icon(Icons.arrow_downward,color: Colors.white,),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(

                    height: 50,
                    width: 125,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.amber.shade900)
                      ),
                      color: Colors.amber.shade900,
                      onPressed: _shareImage,
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Share',style: TextStyle(color: Colors.white,fontSize: 15),),
                          Padding(
                            padding: const EdgeInsets.only(left:7.0),
                            child: Icon(Icons.share,color: Colors.white,),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )


            ],
        ),
          ),]
      ),

    );

  }
}

class CertificateUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/3,
      width: MediaQuery.of(context).size.height/2,

      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.amber,
          border: Border.all(
              color:Colors.black,
              //color: Color(0XFF808080),
              width: 5

          )

      ),
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left:17,top: 10,bottom: 10,right: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color:Colors.black,
                    //color: Color(0XFF808080),
                    width:2

                )

            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("Certificate of Completion",
                      style: TextStyle(
                          fontFamily: 'certificate',
                          fontWeight: FontWeight.bold,color: Colors.black,fontSize: MediaQuery.of(context).size.width*.045),),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*.004,
                    ),
                    Text("This is to certify that",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,color: Colors.black,fontSize: MediaQuery.of(context).size.width*.03)), SizedBox(
                      height: MediaQuery.of(context).size.height*.004,
                    ),
                    Text("Priyanshu Chaudhary",
                        style: TextStyle(fontFamily: 'Name',
                            fontWeight: FontWeight.bold,color: Colors.black,fontSize: MediaQuery.of(context).size.width*.035)), SizedBox(
                      height: MediaQuery.of(context).size.height*.004,
                    ),
                    Text("has completed the course",style: TextStyle(
                        fontStyle: FontStyle.italic,color: Colors.black,fontSize: MediaQuery.of(context).size.width*.03)), SizedBox(
                      height: MediaQuery.of(context).size.height*.004,
                    ),
                    Text("Data Science",style: TextStyle(
                        color: Colors.black,fontSize: MediaQuery.of(context).size.width*.035)), SizedBox(
                      height: MediaQuery.of(context).size.height*.004,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "with score of",style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width*.03),
                          children: [TextSpan(
                              text: " 89.6%",style: TextStyle( color: Colors.black,fontSize: MediaQuery.of(context).size.width*.03,fontWeight: FontWeight.bold)
                          )]
                      ),
                    ),


                    SizedBox(
                      height: MediaQuery.of(context).size.height*.004,
                    ),

                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text("01-may-2020",style: TextStyle(

                            color: Colors.black,fontSize: MediaQuery.of(context).size.width*.025)),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*.004,
                        ),
                        Container(
                          color: Colors.black,
                          height: 1,
                          width: 80,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*.004,
                        ),
                        Text("Completed Date",style: TextStyle(

                            color: Colors.black,fontSize: MediaQuery.of(context).size.width*.025)),

                      ],
                    ),
                    Image(
                      image: AssetImage("assets/images/fuel_logo1.png"),
                      height: 50,
                      width: 50,
                    ),
                    Column(
                      children: <Widget>[
                        Text(""),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*.004,
                        ),
                        Container(
                          color: Colors.black,
                          height: 1,
                          width: 80,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*.004,
                        ),
                        Text("Signature",style: TextStyle(

                            color: Colors.black,fontSize: MediaQuery.of(context).size.width*.025)),

                      ],
                    )
                  ],
                )
              ],
            ),



          ),
          Padding(
            padding: const EdgeInsets.only(left:4.0),
            child: Image(
              image: AssetImage("assets/images/fuel_logo2.png"),
              height: 50,
              width: 50,
            ),
          )
        ],
      ),
    );
  }
}
