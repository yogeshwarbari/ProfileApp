import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

Myapp() {
  emailtoast() {
    Fluttertoast.showToast(
        msg: "ysbari@gmail.com",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  myfunc() {
    print("Using gesture...");
  }

  FlutterStatusbarcolor.setStatusBarColor(Colors.grey.shade900);

  var appbody = Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    //margin: EdgeInsets.all(2),
    color: Colors.grey.shade800,
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          width: 250,
          height: 200,
          //color: Colors.red,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
              border: Border.all(color: Colors.pink.shade800, width: 3)),
          padding: EdgeInsets.only(top: 50),
          margin: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Yogeshwar Bari",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, color: Colors.pink.shade600),
              ),
              Container(
                //padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Icon(Icons.email, color: Colors.pink.shade600),
                      margin: EdgeInsets.only(right: 10),
                    ),
                    Text(
                      "ys@gmail.com",
                      style: TextStyle(color: Colors.pink.shade600),
                    ),
                  ],
                ),
              ),
              Container(
                //padding: EdgeInsets.all(10),
                //margin: EdgeInsets.all(0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Icon(Icons.phone, color: Colors.pink.shade600),
                      margin: EdgeInsets.only(right: 15),
                    ),
                    Text(
                      "1234567890",
                      style: TextStyle(color: Colors.pink.shade600),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          //alternative to InkWell
          onLongPress: myfunc,
          child: Container(
            //child: Image.network(
            //"https://www.gstatic.com/webp/gallery/1.jpg",
            //fit: BoxFit.contain,
            //),
            width: 100,
            height: 100,
            //color: Colors.green,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    NetworkImage("https://www.gstatic.com/webp/gallery/1.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.pink.shade600,
                width: 3,
              ),
            ),
            //margin: EdgeInsets.only(left: 50),
          ),
        ),
      ],
    ),
  );

  return (MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "MyProfile",
          style: TextStyle(color: Colors.pink.shade600),
        ),
        leading: Image.network(
          "https://www.gstatic.com/webp/gallery/1.jpg",
          fit: BoxFit.fill,
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.email,
                color: Colors.pink.shade600,
              ),
              onPressed: emailtoast)
        ],
      ),
      body: appbody,
    ),
    debugShowCheckedModeBanner: false,
  ));
}
