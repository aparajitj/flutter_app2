import 'package:flutter/material.dart';
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
        Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Card(
                  child: Container(
                    padding: EdgeInsets.only(top: 30),

                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
