import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FaaliyetProgramDetay extends StatefulWidget {
  final int year;
  final int tur_id;
  final String turadi;

  FaaliyetProgramDetay({Key key, @required this.year, this.tur_id, this.turadi})
      : super(key: key);

  @override
  _FaaliyetProgramDetayState createState() => _FaaliyetProgramDetayState();
}

class _FaaliyetProgramDetayState extends State<FaaliyetProgramDetay> {
  String data;
  var superheros_length;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    http.Response response = await http.get(
        "http://217.116.197.114:8080/fusio/public/index.php/get-activities?year=" +
            widget.year.toString() +
            "&type=" +
            widget.tur_id.toString());
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
        title: Text(widget.year.toString() + " " + widget.turadi,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'Poppins',
            )),
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
                "Başlama Tarihi: " +
                    jsonDecode(data)['entry'][index]['startDate'].toString() +
                    "  " +
                    " \nBitiş Tarihi: " +
                    jsonDecode(data)['entry'][index]['finishDate'].toString() +
                    "  ",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              trailing: Text(jsonDecode(data)['entry'][index]['eventPlace'],
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  overflow: TextOverflow.ellipsis),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}
