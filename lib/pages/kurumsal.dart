import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'kurumsal_uye.dart';

class Kurumsal extends StatefulWidget {
  @override
  _KurumsalState createState() => _KurumsalState();
}

class _KurumsalState extends State<Kurumsal> {
  String data;
  var superheros_length;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    http.Response response = await http.get(
        "http://217.116.197.114:8080/fusio/public/index.php/get-commissions");
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
        centerTitle: true,
        title: Text(
          'Kurul Listesi',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'Poppins'),
        ),
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KurumsalUye(
                        commission_id: jsonDecode(data)['entry'][index]['id'],
                        commission_name: jsonDecode(data)['entry'][index]
                                ['name']
                            .toString()),
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
