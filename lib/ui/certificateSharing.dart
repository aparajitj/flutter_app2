import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:wc_flutter_share/wc_flutter_share.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_share_plugin/social_share_plugin.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import 'package:social_share_plugin/social_share_plugin.dart';

import 'bottom_navigation_bar_page_controller/app_layout/homepage/homepage.dart';

class share extends StatefulWidget {
  @override
  _shareState createState() => _shareState();
}

class _shareState extends State<share> {
  void _shareImage() async {
    try {
      final ByteData bytes = await rootBundle.load('assets/images/wisecrab.jpg');
      await WcFlutterShare.share(
          sharePopupTitle: 'share',
          fileName: 'share.jpg',
          mimeType: 'image/jpg',
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
          Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:200,left:10),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),

                ),
                child: Image.asset(
                    'assets/images/wisecrab.jpg',
                    width: MediaQuery.of(context).size.height/2.2,
                    height: MediaQuery.of(context).size.height/3,
                    fit:BoxFit.fill


                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0,),
              child: Container(

                height: 50,
                width: 105,
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.amber.shade900)
                              ),
                      color: Colors.amber.shade900,
                      onPressed: _shareImage,
                      child: Row(
                        children: <Widget>[
                          Text('Share',style: TextStyle(color: Colors.white),),
                          Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Icon(Icons.share,color: Colors.white,),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),]
      ),

    );

  }
}
