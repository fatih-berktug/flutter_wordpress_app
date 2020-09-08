import 'package:flutter/material.dart';
import 'package:flutter_wordpress_app/pages/musabakaCinsiyet.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Musabakalar extends StatefulWidget {
  final int year;

  Musabakalar({Key key, @required this.year}) : super(key: key);

  @override
  _MusabakalarState createState() => _MusabakalarState();
}

class _MusabakalarState extends State<Musabakalar> {
  String data;
  var superheros_length;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    http.Response response = await http.get(
        "http://217.116.197.114:8080/fusio/public/index.php/get-competitions-as-year?year=" +
            widget.year.toString());
    if (response.statusCode == 200) {
      data = response.body; //store response as string
      setState(() {
        superheros_length = jsonDecode(
            data)['entry']; //get all the data from json string superheros
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Müsabakalar",
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'Poppins')),
        elevation: 5,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: superheros_length == null ? 0 : superheros_length.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(jsonDecode(data)['entry'][index]['name'],
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              subtitle: Text(
                jsonDecode(data)['entry'][index]['startdate'] == null
                    ? ""
                    : jsonDecode(data)['entry'][index]['startdate'],
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MusabakaCinsiyet(
                      musabakaId: jsonDecode(data)['entry'][index]['id'],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
