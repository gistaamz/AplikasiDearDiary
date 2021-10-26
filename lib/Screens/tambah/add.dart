import 'dart:async';
import 'package:flutter/material.dart';

class add extends StatefulWidget {
  _addState createState() => new _addState();
}

class _addState extends State<add> {
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Dear Diary",
      theme: new ThemeData(primaryColor: Colors.purple[900], primarySwatch: Colors.blue, accentColor: Colors.red),
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            "Note",
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
        body: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                // TextField(),
                TextFormField(
                  decoration: new InputDecoration(
                    hintText: "contoh: aku",
                    labelText: "Judul",
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'judul tidak boleh kosong';
                    }
                    return null;
                  },
                ),

                TextFormField(
                  decoration: new InputDecoration(
                    hintText: "contoh: yyyy-MM-dd hh-mm-ss",
                    labelText: "Tanggal",
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(10.0)),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'tanggal tidak boleh kosong';
                    }
                    return null;
                  },
                ),

                TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Tuliskan Ceritamu hari ini!",
                    labelText: "Note",
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(10.0)),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'masukan cerita anda';
                    }
                    return null;
                  },
                ),

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
                      "Simpan",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
