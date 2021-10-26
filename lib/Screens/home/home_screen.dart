import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/profile/profile.dart';
import 'package:flutter_auth/Screens/tambah/add.dart';
import 'package:flutter_auth/Screens/detail/note1.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Dear Diary",
        theme: new ThemeData(primaryColor: Colors.purple[900], primarySwatch: Colors.blue, accentColor: Colors.red),
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text(
                "Dasboard",
                style: new TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              actions: <Widget>[
                InkWell(
                  child: IconButton(icon: new Icon(Icons.person, color: Colors.white)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => profile()));
                  },
                ),
              ],
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
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => add()));
              },
              tooltip: 'Increment Counter',
              child: const Icon(Icons.add, color: Colors.black),
            ),
            body: new Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            color: Colors.purple[400]),
                        child: Center(
                          child: new InkWell(child: new Text('Note 1'), onTap: () => note1),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            color: Colors.purple[400]),
                        child: Center(
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => note1()));
                            },
                            child: Text(
                              "Note 2",
                              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            color: Colors.purple[400]),
                        child: Center(
                          child: Text(
                            "Note 3",
                            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            color: Colors.purple[400]),
                        child: Center(
                          child: Text(
                            "Note 4",
                            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            color: Colors.purple[400]),
                        child: Center(
                          child: Text(
                            "Note 5",
                            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            color: Colors.purple[400]),
                        child: Center(
                          child: Text(
                            "Note 6",
                            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            color: Colors.purple[400]),
                        child: Center(
                          child: Text(
                            "Note 7",
                            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
