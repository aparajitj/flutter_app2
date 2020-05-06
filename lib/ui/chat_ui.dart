import 'dart:async';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
List<Widget> message = [];
List <FileBubble> file=[];
String ext;
String _fileName;
String _path;
Map<String, String> _paths;
String _extension='';
bool _loadingPath = false;
bool _multiPick = false;
FileType _pickingType= FileType.any;
StreamController<Message> events= new StreamController<Message>();
class Message{

  final String text;
  final String type;
  Message({this.text,this.type});

}

class ChatUI extends StatefulWidget {
  @override
  _ChatUIState createState() => _ChatUIState();
}

class _ChatUIState extends State<ChatUI> {
  int _counter = 0;
  var messagetext;

  TextEditingController chatMsgController=new TextEditingController();
  @override
  initState() {
    super.initState();


  }
  void _openFileExplorer() async {
    setState(() => _loadingPath = true);

      if (_multiPick) {
        _path = null;
        _paths = await FilePicker.getMultiFilePath(
            type: _pickingType,
            allowedExtensions: (_extension?.isNotEmpty ?? false)
                ? _extension?.replaceAll(' ', '')?.split(',')
                : null);
      } else {
        _paths = null;
        _path = await FilePicker.getFilePath(
            type: _pickingType,
            allowedExtensions: (_extension?.isNotEmpty ?? false)
                ? _extension?.replaceAll(' ', '')?.split(',')
                : null);
      }

    if (!mounted) return;
    setState(() {
      _loadingPath = false;
      _fileName = _path != null
          ? _path.split('/').last
          : _paths != null ? _paths.keys.toString() : '...';
    });
    ext=_fileName.split('.').last;

    events.sink.add(Message(text:_fileName,type:ext));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true ,
        backgroundColor: Colors.transparent,

        title: Text("Let's Chat" ,style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0Xffff6d00), Colors.amber])),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          MsgStream(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(

              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(20.0),
                color: Colors.amber.shade600,
                border: Border.all(color:Colors.amberAccent, width: 2.0,
                ),

              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: chatMsgController,


                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                        hintText: 'Type your message here...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  Row(
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.attach_file,color: Colors.white,), onPressed:() {
                        _openFileExplorer();

                      }),
                      IconButton(icon: Icon(Icons.send,color:Colors.white), onPressed: (){events.sink.add(Message(text: chatMsgController.text,type: "text"));
                      chatMsgController.clear();


                      }),
                    ],
                  ),


                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
class MsgStream extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: events.stream,

      builder: (context, AsyncSnapshot snapshot){
        if (snapshot.data!=null){
          Widget messageTemp;
         /* print(snapshot.data);
          final messageTemp =MessageBubble(text:snapshot.data);
          message.add(messageTemp);*/
          if (snapshot.data.type=="text")
           { messageTemp=MessageBubble(text: snapshot.data.text,);
          message.add(messageTemp);
        }
          else
            {
              messageTemp=FileBubble(fileName: snapshot.data.text,);
              message.add(messageTemp);
            }
        }
        print(message.length);
        return Expanded(
          child: ListView(

            children: List.generate(message.length, (i) =>message[i])

          ),
        );/*ListView.builder(itemCount: message.length,itemBuilder: (BuildContext context, index){
          return MessageBubble(text: message[index],);
        });*/

              /* if(snapshot.hasData) {
                 final messages = snapshot.data;

                   print(messages);

                 List<MessageBubble> messageWidgets = [];
                 for (var message in messages) {
                   String messageText = message.data;
                   *//* final CurrentUser = loggedInUser.email;*//*

                   final messageWidget = MessageBubble(
*//*
            sender: messageSender,
*//*
                     text: messageText,
                     *//*IsMe: CurrentUser == messageSender,*//*
                   );

                   messageWidgets.add(messageWidget);
                 }


                 return Expanded(

                   child: ListView(
                     reverse: true,
                     padding: EdgeInsets.symmetric(
                         horizontal: 10.0,vertical: 20.0),
                     children: messageWidgets,
                   ),
                 );
               }
               else
                 return Container(
                   color: Colors.amber,
                 );*/
      },
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String text;
  MessageBubble({this.text});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: true ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[

          Material(
            elevation: 5.0,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0)

            ),
            color: true ? Colors.amber: Colors.white,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(text  ,
                style: TextStyle(
                    color: true ? Colors.white : Colors.black54,
                    fontSize: 15
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FileBubble extends StatelessWidget {
  final fileName;
  FileBubble({this.fileName});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: true ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        
        children: <Widget>[

        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.brown.shade400,
          ),

          width: MediaQuery.of(context).size.width*0.6,
          height:60,
          padding: EdgeInsets.all(5.0),
          child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.amberAccent,),

            child: Row(

              children: <Widget>[
                Icon(
                  Icons.insert_drive_file
                ),
                SizedBox(
                  width: 4,
                ),
                Flexible(
                  child: Text(fileName,  overflow: TextOverflow.ellipsis,

                  ),
                )
              ],
            ),
          ),
        )
        ],
      ),
    );
  }
}
