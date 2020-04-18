import 'package:flutter/material.dart';
class MyQR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        title: Text("My QR-ID"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:40.0,right: 15,left: 15),
        child: Container(
          padding: EdgeInsets.only(top:10,bottom: 40),
          height: MediaQuery.of(context).size.height*.6,
          width:  MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              Text("Shreyas Hosmani",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height*.4,
                width:  MediaQuery.of(context).size.height*.4,

                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                    width: 10
                  ),
                  image: DecorationImage(
                    image: NetworkImage("https://cdn5.vectorstock.com/i/1000x1000/74/44/sample-qr-code-vector-9417444.jpg"),
                    fit: BoxFit.fill
                  )
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
