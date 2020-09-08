import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class KurumsalUye extends StatefulWidget {
  final int commission_id;
  final String commission_name;

  KurumsalUye({Key key, @required this.commission_id, this.commission_name})
      : super(key: key);

  @override
  _KurumsalUyeState createState() => _KurumsalUyeState();
}

class _KurumsalUyeState extends State<KurumsalUye> {
  String data;
  var superheros_length;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    http.Response response = await http.get(
        "http://217.116.197.114:8080/fusio/public/index.php/get-member?commission_id=" +
            widget.commission_id.toString());

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
        title: Text(widget.commission_name + " Üyeleri ",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
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
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "http://sbs.halter.gov.tr:81/media/" +
                        jsonDecode(data)['entry'][index]['profileImage']),
              ),
              title: Text(
                  jsonDecode(data)['entry'][index]['first_name'] +
                      " " +
                      jsonDecode(data)['entry'][index]['last_name'],
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  overflow: TextOverflow.ellipsis),
              subtitle: Text(
                jsonDecode(data)['entry'][index]['roleName'].toString() + "  ",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ),
          );
        },
      ),
    );
  }
}
