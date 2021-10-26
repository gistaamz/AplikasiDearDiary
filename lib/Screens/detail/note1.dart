import 'dart:async';
import 'package:flutter/material.dart';

class note1 extends StatefulWidget {
  _note1State createState() => new _note1State();
}

class _note1State extends State<note1> {
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Dear Diary",
        theme: new ThemeData(primaryColor: Colors.purple[900], primarySwatch: Colors.blue, accentColor: Colors.red),
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text(
              "NOTE 1",
              style: new TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
          body: Container(
            color: Colors.white,
            width: double.infinity,
            height: double.infinity,
            // Batas Alas

            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 0.8, bottom: 10.0),
                      child: Align(alignment: Alignment.centerLeft, child: new Text("Agenda Solosong", style: TextStyle(color: Colors.blue[800]))),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 0.2, bottom: 8.0),
                      child: Align(alignment: Alignment.centerLeft, child: new Text("Gunakan kata - kata yang sopan untuk mengomentar dan mengkritik.Jangan lupa memberikan saran dan laporan bila terdapat sesuatu yang ingin kamu sampaikan.Katakan bila ingin ada materi atau pembahasan yang ingin ditambahkan atau yang kurang lengkap.", style: TextStyle(color: Colors.black))),
                    ),
                  ],
                ),

                //edit button
                Container(
                  width: 340,
                  height: 45,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.purple[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Edit",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                //edit product display
              ],
            ),
          ),
        ));
  }
}
