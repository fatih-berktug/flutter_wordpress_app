import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'atlet_detay.dart';

class Atletler extends StatefulWidget {
  final int musabakaId;
  final int musabakaCinsiyet;
  final String musabakaCinsiyetAdi;
  final int musabakaSiklet;
  final String musabakaSikletAdi;

  Atletler(
      {Key key,
      @required this.musabakaId,
      this.musabakaCinsiyet,
      this.musabakaSiklet,
      this.musabakaCinsiyetAdi,
      this.musabakaSikletAdi})
      : super(key: key);

  @override
  _AtletlerState createState() => _AtletlerState();
}

class _AtletlerState extends State<Atletler> {
  String data;
  var superheros_length;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    http.Response response = await http.get(
        "http://217.116.197.114:8080/fusio/public/index.php/compResult?competition_id=" +
            widget.musabakaId.toString() +
            " " +
            "&gender_id=" +
            widget.musabakaCinsiyet.toString() +
            " " +
            "&siklet_id=" +
            widget.musabakaSiklet.toString());

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
        title: Text(
            widget.musabakaCinsiyetAdi +
                "  " +
                widget.musabakaSikletAdi +
                " kg",
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
              title: Text(
                  jsonDecode(data)['entry'][index]['aname'] +
                      " " +
                      jsonDecode(data)['entry'][index]['asurname'],
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  overflow: TextOverflow.ellipsis),
              subtitle: Text(
                "Drc :" +
                    jsonDecode(data)['entry'][index]['degree'].toString() +
                    "  " +
                    "Koparma :" +
                    jsonDecode(data)['entry'][index]['kopTotal'].toString() +
                    "  " +
                    " Silkme :" +
                    jsonDecode(data)['entry'][index]['silkTotal'].toString() +
                    " " +
                    " Toplam :" +
                    jsonDecode(data)['entry'][index]['kopSilkTotal'].toString(),
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AtletDetay(
                      atlet_id: jsonDecode(data)['entry'][index]['id'],
                      category_id: widget.musabakaId,
                      musabakaSikletAdi: widget.musabakaSikletAdi,
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
