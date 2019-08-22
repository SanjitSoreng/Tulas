import 'package:flutter/material.dart';
import 'package:tulas/home.dart';

void main() => runApp(FormCard());

class FormCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 15.0),
                blurRadius: 15.0),
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, -10.0),
                blurRadius: 15.0),
          ]),
      child: Padding(
        padding: EdgeInsets.only(
          top: 16.0,
          left: 16.0,
          right: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Login",
              style: TextStyle(fontFamily: "Poppins", fontSize: 20.0),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              "Username",
              style: TextStyle(
                fontFamily: "Poppins-Medium",
                fontSize: 15.0,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "username",
                hintStyle: TextStyle(
                  color: Colors.black26,
                  fontSize: 12.0,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Password",
              style: TextStyle(
                fontFamily: "Poppins-Medium",
                fontSize: 15.0,
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "password",
                hintStyle: TextStyle(
                  color: Colors.black26,
                  fontSize: 12.0,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    //Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  elevation: 4.0,
                  padding: const EdgeInsets.all(10.0),
                  textColor: Colors.white,
                  color: Colors.lightGreen,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontFamily: "Poppins-Medium",
                      fontSize: 13.0,
                    ),
                  ),
                ),
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 14.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
