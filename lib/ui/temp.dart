import 'package:path/path.dart';
import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class temp extends StatefulWidget {
  @override
  _tempState createState() => _tempState();
}

class _tempState extends State<temp> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Example'),
      ),
      body: Center(
        child: _image == null
            ? Text('No image selected.')
            : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: _image == null
            ? CircleAvatar(radius:45,backgroundColor:Colors.grey.shade300 ,child: Icon(Icons.account_circle))
            : Image.file(_image),

      ),
    );
  }
}
/*

import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:wc_flutter_share/wc_flutter_share.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_share_plugin/social_share_plugin.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import 'package:social_share_plugin/social_share_plugin.dart';

class share extends StatefulWidget {
  @override
  _shareState createState() => _shareState();
}

class _shareState extends State<share> {
  void _shareImage() async {
    try {
      var image = await ImagePicker.pickImage(source: ImageSource.gallery);
      String fn=image.path.split("/").last;
      final ByteData bytes = await rootBundle.load(image.path);
      await WcFlutterShare.share(
          sharePopupTitle: 'share',
          fileName: fn,
          mimeType: 'image/jpg',
          bytesOfFile: bytes.buffer.asUint8List());
    } catch (e) {
      print('error: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.only(top:700.0,left:10),
        child: Column(
          children: <Widget>[
            Container(
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

                  SizedBox(width: 5,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[

                      InkWell(
                          child: new Text("Share on Fb",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black)
                          ),
                          onTap: () => launch('https://www.facebook.com/')
                      ),
                    ],
                  ),
                  SizedBox(width: 100,),
                  Container(

                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage("https://cdn4.iconfinder.com/data/icons/social-media-icons-the-circle-set/48/twitter_circle-512.png"),
                            fit: BoxFit.fill

                        )
                    ),
                    height: 30,
                    width: 30,
                  ),

                  SizedBox(width: 5,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[

                      InkWell(
                          child: new Text("Share on Twitter",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),
                          ),
                          onTap: () => _shareImage()
                      ),

                    ],
                  ),




                ],

              ),
            ),
            RaisedButton(
              child: Text('Share to Facebook'),
              onPressed: () async {
                */
/* await WcFlutterShare.share(
                    sharePopupTitle: 'share',
                    subject: 'This is subject',
                    text: 'This is text',
                    fileName: 'share.png',
                    mimeType: 'image/png',
                    bytesOfFile: bytes.buffer.asUint8List());*//*

              },
            ),
          ],
        ),
      ),
    );

  }
}
*/
