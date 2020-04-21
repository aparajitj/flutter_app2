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