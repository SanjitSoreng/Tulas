import 'package:flutter/material.dart';
import 'Widgets/formCard.dart';
import 'package:flutter/services.dart';

void main() => runApp(Mat());

class Mat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext contextmain) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Image.asset("assets/images/tulaslogo.jpg"),
              ),
              Expanded(
                child: Container(),
              ),
              //Image.asset("assets/images/tulaslogo.jpg")
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[Image.asset("logo.png")],
                  ),
                  SizedBox(
                    height: 160.0,
                  ),
                  FormCard(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
