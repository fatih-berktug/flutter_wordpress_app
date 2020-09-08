import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'atletler.dart';

class MusabakaKategori extends StatefulWidget {
  final int musabakaId;
  final int musabakaCinsiyet;
  final String musabakaCinsiyetAdi;

  MusabakaKategori(
      {Key key,
      @required this.musabakaId,
      this.musabakaCinsiyet,
      this.musabakaCinsiyetAdi})
      : super(key: key);

  @override
  _MusabakaKategoriState createState() => _MusabakaKategoriState();
}

class _MusabakaKategoriState extends State<MusabakaKategori> {
  String data;
  var superheros_length;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    http.Response response = await http.get(
        "http://217.116.197.114:8080/fusio/public/index.php/compCategory?competition_id=" +
            widget.musabakaId.toString() +
            "&gender_id=" +
            widget.musabakaCinsiyet.toString());

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
        title: Text("Siklet Seçiniz",
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
              title: Text(jsonDecode(data)['entry'][index]['weight'] + " kg",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  overflow: TextOverflow.ellipsis),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Atletler(
                      musabakaSiklet: jsonDecode(data)['entry'][index]['id'],
                      musabakaId: widget.musabakaId,
                      musabakaCinsiyet: widget.musabakaCinsiyet,
                      musabakaCinsiyetAdi: widget.musabakaCinsiyetAdi,
                      musabakaSikletAdi: jsonDecode(data)['entry'][index]
                          ['weight'],
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
