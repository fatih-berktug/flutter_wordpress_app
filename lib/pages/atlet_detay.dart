import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AtletDetay extends StatefulWidget {
  final int atlet_id;
  final int category_id;
  final int musabakaSiklet;
  final String musabakaSikletAdi;

  AtletDetay(
      {Key key,
      @required this.atlet_id,
      this.category_id,
      this.musabakaSiklet,
      this.musabakaSikletAdi})
      : super(key: key);

  @override
  _AtletDetayState createState() => _AtletDetayState();
}

class _AtletDetayState extends State<AtletDetay> {
  String data;

  var superheros_length;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    http.Response response = await http.get(
        "http://217.116.197.114:8080/fusio/public/index.php/athlete-detail?ath_id=" +
            widget.atlet_id.toString() +
            "" +
            "&competition_id=" +
            widget.category_id.toString());
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
        title: Text("Detaylar",
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
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    jsonDecode(data)['entry'][index]['aname'] +
                        " " +
                        jsonDecode(data)['entry'][index]['asurname'],
                    style: TextStyle(fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                      "Derece : " +
                          jsonDecode(data)['entry'][index]['degree']
                              .toString() +
                          "     " +
                          "Kilo : " +
                          widget.musabakaSikletAdi.toString() +
                          "     "
                              "D.Tarihi : " +
                          jsonDecode(data)['entry'][index]['birthDate']
                              .toString(),
                      style: TextStyle(color: Colors.black, fontSize: 14),
                      textAlign: TextAlign.center),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    "Koparma",
                    style: TextStyle(fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columnSpacing: 20,
                      dataRowHeight: 30,
                      headingRowHeight: 30,
                      columns: [
                        DataColumn(
                            label: Text('KD',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14))),
                        DataColumn(
                            label: Text('K1',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14))),
                        DataColumn(
                            label: Text('K2',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14))),
                        DataColumn(
                            label: Text('K3',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14))),
                        DataColumn(
                            label: Text('KT',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(
                              jsonDecode(data)['entry'][index]['kopDegree']
                                  .toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500))),
                          DataCell(Text(
                            jsonDecode(data)['entry'][index]['kop1'].toString(),
                            style: TextStyle(
                                color: jsonDecode(data)['entry'][index]['kop1b']
                                            .toString() ==
                                        "2"
                                    ? Colors.red
                                    : Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )),
                          DataCell(Text(
                            jsonDecode(data)['entry'][index]['kop2'].toString(),
                            style: TextStyle(
                                color: jsonDecode(data)['entry'][index]['kop2b']
                                            .toString() ==
                                        "2"
                                    ? Colors.red
                                    : Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )),
                          DataCell(Text(
                            jsonDecode(data)['entry'][index]['kop3'].toString(),
                            style: TextStyle(
                                color: jsonDecode(data)['entry'][index]['kop3b']
                                            .toString() ==
                                        "2"
                                    ? Colors.red
                                    : Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )),
                          DataCell(Text(
                              jsonDecode(data)['entry'][index]['kopTotal']
                                  .toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500))),
                        ]),
                      ],
                    )),
                ListTile(
                  title: Text(
                    "Silkme",
                    style: TextStyle(fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columnSpacing: 20,
                      dataRowHeight: 30,
                      headingRowHeight: 30,
                      columns: [
                        DataColumn(
                            label: Text('SD',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14))),
                        DataColumn(
                            label: Text('S1',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14))),
                        DataColumn(
                            label: Text('S2',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14))),
                        DataColumn(
                            label: Text('S3',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14))),
                        DataColumn(
                            label: Text('ST',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(
                              jsonDecode(data)['entry'][index]['silkDegree']
                                  .toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500))),
                          DataCell(Text(
                            jsonDecode(data)['entry'][index]['silk1']
                                .toString(),
                            style: TextStyle(
                                color: jsonDecode(data)['entry'][index]
                                                ['silk1b']
                                            .toString() ==
                                        "2"
                                    ? Colors.red
                                    : Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )),
                          DataCell(Text(
                            jsonDecode(data)['entry'][index]['silk2']
                                .toString(),
                            style: TextStyle(
                                color: jsonDecode(data)['entry'][index]
                                                ['silk2b']
                                            .toString() ==
                                        "2"
                                    ? Colors.red
                                    : Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )),
                          DataCell(Text(
                            jsonDecode(data)['entry'][index]['silk3']
                                .toString(),
                            style: TextStyle(
                                color: jsonDecode(data)['entry'][index]
                                                ['silk3b']
                                            .toString() ==
                                        "2"
                                    ? Colors.red
                                    : Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )),
                          DataCell(Text(
                              jsonDecode(data)['entry'][index]['silkTotal']
                                  .toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500))),
                        ]),
                      ],
                    )),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columnSpacing: 20,
                      dataRowHeight: 40,
                      headingRowHeight: 40,
                      columns: [
                        DataColumn(
                            label: Text("     " + 'Toplam ',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(
                              "       " +
                                  jsonDecode(data)['entry'][index]
                                          ['kopSilkTotal']
                                      .toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500))),
                        ]),
                      ],
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}
