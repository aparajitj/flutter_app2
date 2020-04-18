import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    TextEditingController editName = new TextEditingController();
    TextEditingController editContactNumber = new TextEditingController();
    TextEditingController editCollege = new TextEditingController();
    TextEditingController editFacebookLink= new TextEditingController();
    TextEditingController editLinkedLink= new TextEditingController();
    TextEditingController editInstagramLink= new TextEditingController();

    editCollege.text = 'coep';
    editName.text = 'Shreyas Hosmani';
    editFacebookLink.text = 'https://www.facebook.com';
    editLinkedLink.text = 'https://www.linkedin.com';
    editInstagramLink.text = 'https://www.instagram.com';
    editContactNumber.text = '7775049481';




    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0Xffff6d00), Colors.amber])),
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),onPressed: (){
          Navigator.pop(context);
        },),
        title: Text("Edit Profile"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top:30,left: 15,right: 15,bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: <Widget>[

            Flexible(
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width/7,
                    backgroundColor: Colors.grey.shade300,
                    child: Icon(Icons.person,color: Colors.grey,size: MediaQuery.of(context).size.width/5,),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: <Widget>[
                      Text("Name:   ",style: TextStyle(color: Colors.black,fontSize: 17),),

                      Expanded(child: DrawEditTextField(keyboardType: TextInputType.text,textfieldController: editName,
                        onChangedVaue: (value){
                        editName = value;
                      },)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text("Contact no.:   ",style: TextStyle(color: Colors.black,fontSize: 17),),

                      Expanded(child: DrawEditTextField(keyboardType: TextInputType.number,textfieldController: editContactNumber,
                          onChangedVaue: (value){
                            editContactNumber = value;
                          })),
                    ],
                  ),

                  Row(
                    children: <Widget>[
                      Text("College:   ",style: TextStyle(color: Colors.black,fontSize: 17),),

                      Expanded(child: DrawEditTextField(keyboardType: TextInputType.text,textfieldController: editCollege,
                          onChangedVaue: (value){
                            editCollege = value;
                          })),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Facebook:   ",style: TextStyle(color: Colors.black,fontSize: 17),),

                          Expanded(child: DrawEditTextField(keyboardType: TextInputType.text,textfieldController: editFacebookLink,
                              onChangedVaue: (value){
                          editFacebookLink = value;
                          },)),
                        ],
                      ),
                      SizedBox(height: 3,),
                      Text("https://www.example.com",style: TextStyle(color: Colors.grey.shade600),textAlign: TextAlign.left,)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Linked In:   ",style: TextStyle(color: Colors.black,fontSize: 17),),

                          Expanded(child: DrawEditTextField(keyboardType: TextInputType.text,textfieldController: editLinkedLink,
                            onChangedVaue: (value){
                              editLinkedLink = value;
                            },)),
                        ],
                      ),
                      SizedBox(height: 3,),
                      Text("https://www.example.com",style: TextStyle(color: Colors.grey.shade600),textAlign: TextAlign.left,)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Instagram:   ",style: TextStyle(color: Colors.black,fontSize: 17),),

                          Expanded(child: DrawEditTextField(keyboardType: TextInputType.text,textfieldController: editInstagramLink,
                            onChangedVaue: (value){
                              editInstagramLink = value;
                            },)),
                        ],
                      ),
                      SizedBox(height: 3,),
                      Text("https://www.example.com",style: TextStyle(color: Colors.grey.shade600),textAlign: TextAlign.left,)
                    ],
                  ),


                ],
              ),
            ),
            Container(
              height: 40,
              child: RaisedButton(
                color: Colors.amber.shade700,
                elevation: 4,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),

                ),
                onPressed: (){

                },
                child: Text("SAVE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DrawEditTextField extends StatelessWidget {
  final textfieldController;
  final keyboardType;
  final onChangedVaue;
  DrawEditTextField({this.textfieldController,this.keyboardType,this.onChangedVaue});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textfieldController,
      keyboardType: keyboardType,
        style: TextStyle(color: Colors.black,fontSize: 17),
      onChanged: onChangedVaue,
      decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade700,width: 2),
          ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey,width: 1),
        ),
        contentPadding: EdgeInsets.only(bottom: 10,left: 5),

      ),

    );
  }
}
