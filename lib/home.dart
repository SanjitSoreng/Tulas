import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.black87,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(70.0),
                          ),
                        ),
                        margin: EdgeInsets.only(bottom: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                padding:
                                    EdgeInsets.only(left: 20.0, right: 40.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Hi, Sanjit",
                                      style: TextStyle(
                                          fontFamily: "Poppins-Medium",
                                          fontSize: 28.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      "Have a great day",
                                      style: TextStyle(
                                        fontSize: 13.0,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                              ),
                              width: 150.0,
                              //color: Colors.yellow,
                            )
                          ],
                        ),
                      ),
                      //color: Colors.white,
                    ),
                    Container(
                      height: 350.0,
                      width: double.maxFinite,
                      padding: EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "YOUR SCHEDULE",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.white70,
                                  ),
                                ),
                                Text(
                                  "See all",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "Today",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.white),
                          ),

                          /**********TIME TABLE*********/

                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(bottom: 20.0),
                              child: ListView(
                                physics: BouncingScrollPhysics(),
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: 20.0, right: 20.0),
                                    child: Container(
                                      height: 150.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.0, vertical: 16.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            height: 70.0,
                                            width: 70.0,
                                            decoration: BoxDecoration(
                                                color: Colors.yellow,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0)),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  "09:45",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  "AM",
                                                  style:
                                                      TextStyle(fontSize: 12.0),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20.0,
                                          ),
                                          Expanded(
                                            child: Column(
                                              //spacing: 5.0,
                                              //direction: Axis.vertical,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    Text(
                                                      "Artificial Intelligence",
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        "ON GOING",
                                                        style: TextStyle(
                                                            fontSize: 12.0,
                                                            backgroundColor:
                                                                Colors
                                                                    .greenAccent),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.person,
                                                      size: 16.0,
                                                    ),
                                                    Text(
                                                      " Dr.Vijay Thakur",
                                                      style: TextStyle(
                                                          fontSize: 14.0),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.business,
                                                      size: 16.0,
                                                    ),
                                                    Text(
                                                      " H Block",
                                                      style: TextStyle(
                                                          fontSize: 14.0),
                                                    ),
                                                  ],
                                                ),
                                                LinearPercentIndicator(
                                                  width: 140.0,
                                                  lineHeight: 3.0,
                                                  animation: true,
                                                  progressColor:
                                                      Colors.lightGreen,
                                                  percent: 0.6,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                ),
                                                Text("60%"),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: 20.0, right: 20.0),
                                    child: Container(
                                      height: 150.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.0, vertical: 16.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            height: 70.0,
                                            width: 70.0,
                                            decoration: BoxDecoration(
                                                color: Colors.yellow,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0)),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  "10:45",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  "AM",
                                                  style:
                                                      TextStyle(fontSize: 12.0),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20.0,
                                          ),
                                          Expanded(
                                            child: Column(
                                              //spacing: 5.0,
                                              //direction: Axis.vertical,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    Text(
                                                      "Operating System",
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        "ON GOING",
                                                        style: TextStyle(
                                                            fontSize: 12.0,
                                                            backgroundColor:
                                                                Colors
                                                                    .greenAccent),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.person,
                                                      size: 16.0,
                                                    ),
                                                    Text(
                                                      " Mr.Sandeep Kumar",
                                                      style: TextStyle(
                                                          fontSize: 14.0),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.business,
                                                      size: 16.0,
                                                    ),
                                                    Text(
                                                      " H Block",
                                                      style: TextStyle(
                                                          fontSize: 14.0),
                                                    ),
                                                  ],
                                                ),
                                                LinearPercentIndicator(
                                                  width: 140.0,
                                                  lineHeight: 3.0,
                                                  animation: true,
                                                  progressColor:
                                                      Colors.lightGreen,
                                                  percent: 0.6,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                ),
                                                Text("60%"),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: 20.0, right: 20.0),
                                    child: Container(
                                      height: 150.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.0, vertical: 16.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            height: 70.0,
                                            width: 70.0,
                                            decoration: BoxDecoration(
                                                color: Colors.yellow,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0)),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  "11:45",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  "AM",
                                                  style:
                                                      TextStyle(fontSize: 12.0),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20.0,
                                          ),
                                          Expanded(
                                            child: Column(
                                              //spacing: 5.0,
                                              //direction: Axis.vertical,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    Text(
                                                      "Graph Theory",
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        "ON GOING",
                                                        style: TextStyle(
                                                            fontSize: 12.0,
                                                            backgroundColor:
                                                                Colors
                                                                    .greenAccent),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.person,
                                                      size: 16.0,
                                                    ),
                                                    Text(
                                                      " Sachin Rastogi",
                                                      style: TextStyle(
                                                          fontSize: 14.0),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.business,
                                                      size: 16.0,
                                                    ),
                                                    Text(
                                                      " H Block",
                                                      style: TextStyle(
                                                          fontSize: 14.0),
                                                    ),
                                                  ],
                                                ),
                                                LinearPercentIndicator(
                                                  width: 140.0,
                                                  lineHeight: 3.0,
                                                  animation: true,
                                                  progressColor:
                                                      Colors.lightGreen,
                                                  percent: 0.6,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                ),
                                                Text("60%"),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: 20.0, right: 20.0),
                                    child: Container(
                                      height: 150.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.0, vertical: 16.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            height: 70.0,
                                            width: 70.0,
                                            decoration: BoxDecoration(
                                                color: Colors.yellow,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0)),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  "1:45",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  "PM",
                                                  style:
                                                      TextStyle(fontSize: 12.0),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20.0,
                                          ),
                                          Expanded(
                                            child: Column(
                                              //spacing: 5.0,
                                              //direction: Axis.vertical,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    Text(
                                                      "Visual Programming",
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        "ON GOING",
                                                        style: TextStyle(
                                                            fontSize: 12.0,
                                                            backgroundColor:
                                                                Colors
                                                                    .greenAccent),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.person,
                                                      size: 16.0,
                                                    ),
                                                    Text(
                                                      " Ms.Preety Kumari",
                                                      style: TextStyle(
                                                          fontSize: 14.0),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.business,
                                                      size: 16.0,
                                                    ),
                                                    Text(
                                                      " H Block",
                                                      style: TextStyle(
                                                          fontSize: 14.0),
                                                    ),
                                                  ],
                                                ),
                                                LinearPercentIndicator(
                                                  width: 140.0,
                                                  lineHeight: 3.0,
                                                  animation: true,
                                                  progressColor:
                                                      Colors.lightGreen,
                                                  percent: 0.6,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                ),
                                                Text("60%"),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: 20.0, right: 20.0),
                                    child: Container(
                                      height: 150.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.0, vertical: 16.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            height: 70.0,
                                            width: 70.0,
                                            decoration: BoxDecoration(
                                                color: Colors.yellow,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0)),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  "2:45",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  "PM",
                                                  style:
                                                      TextStyle(fontSize: 12.0),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20.0,
                                          ),
                                          Expanded(
                                            child: Column(
                                              //spacing: 5.0,
                                              //direction: Axis.vertical,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    Text(
                                                      "Compiler Design",
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        "ON GOING",
                                                        style: TextStyle(
                                                            fontSize: 12.0,
                                                            backgroundColor:
                                                                Colors
                                                                    .greenAccent),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.person,
                                                      size: 16.0,
                                                    ),
                                                    Text(
                                                      " Dr.B.K.Sharma",
                                                      style: TextStyle(
                                                          fontSize: 14.0),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.business,
                                                      size: 16.0,
                                                    ),
                                                    Text(
                                                      " H Block",
                                                      style: TextStyle(
                                                          fontSize: 14.0),
                                                    ),
                                                  ],
                                                ),
                                                LinearPercentIndicator(
                                                  width: 140.0,
                                                  lineHeight: 3.0,
                                                  animation: true,
                                                  progressColor:
                                                      Colors.lightGreen,
                                                  percent: 0.6,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                ),
                                                Text("60%"),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: 20.0, right: 20.0),
                                    child: Container(
                                      height: 150.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.0, vertical: 16.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            height: 70.0,
                                            width: 70.0,
                                            decoration: BoxDecoration(
                                                color: Colors.yellow,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0)),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  "3:45",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  "PM",
                                                  style:
                                                      TextStyle(fontSize: 12.0),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20.0,
                                          ),
                                          Expanded(
                                            child: Column(
                                              //spacing: 5.0,
                                              //direction: Axis.vertical,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    Text(
                                                      "Principles of Management",
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        "ON GOING",
                                                        style: TextStyle(
                                                            fontSize: 12.0,
                                                            backgroundColor:
                                                                Colors
                                                                    .greenAccent),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.person,
                                                      size: 16.0,
                                                    ),
                                                    Text(
                                                      " Ms.Anaya Sharma",
                                                      style: TextStyle(
                                                          fontSize: 14.0),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.business,
                                                      size: 16.0,
                                                    ),
                                                    Text(
                                                      " H Block",
                                                      style: TextStyle(
                                                          fontSize: 14.0),
                                                    ),
                                                  ],
                                                ),
                                                LinearPercentIndicator(
                                                  width: 140.0,
                                                  lineHeight: 3.0,
                                                  animation: true,
                                                  progressColor:
                                                      Colors.lightGreen,
                                                  percent: 0.6,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                ),
                                                Text("60%"),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          /*********TIME TABLE END*******/
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            12.0,
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "NOTES",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "See all",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w900),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          offset: Offset(10.0, 10.0),
                                          blurRadius: 20.0)
                                    ],
                                    color: Colors.white),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Operating System",
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          "Unit-1 Notes/ Questions",
                                          style: TextStyle(fontSize: 12.0),
                                        )
                                      ],
                                    ),
                                    Icon(
                                      Icons.check_circle,
                                      color: Colors.greenAccent,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
