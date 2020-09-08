import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Records extends StatefulWidget {
  final int record_category_id;
  final String record_category_name;

  Records(
      {Key key, @required this.record_category_id, this.record_category_name})
      : super(key: key);

  @override
  RecordsState createState() => RecordsState();
}

class RecordsState extends State<Records> {
  String data;
  var superheros_length;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  void getData() async {
    http.Response response = await http.get(
        "http://217.116.197.114:8080/fusio/public/index.php/record-all?recordType=" +
            widget.record_category_id.toString());
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
        title: Text("Rekorlar - " + widget.record_category_name + " Rekorları",
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
          if (jsonDecode(data)['entry'][index]['recordWhich'].toString() ==
              "0") {
            if (jsonDecode(data)['entry'][index]['asex'].toString() == "0") {
              if (jsonDecode(data)['entry'][index]['aname'].toString() == "0") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : Yıldız Erkek" +
                          " Tür : Koparma ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else if (jsonDecode(data)['entry'][index]['aname'].toString() ==
                  "1") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : Genç Erkek" +
                          " Tür : Koparma ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else if (jsonDecode(data)['entry'][index]['aname'].toString() ==
                  "2") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : Büyük Erkek" +
                          " Tür : Koparma ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else if (jsonDecode(data)['entry'][index]['aname'].toString() ==
                  "3") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : U23 Erkek" +
                          " Tür : Koparma ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : U15 Erkek" +
                          " Tür : Koparma ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              }
            }

            if (jsonDecode(data)['entry'][index]['asex'].toString() == "1") {
              if (jsonDecode(data)['entry'][index]['aname'].toString() == "0") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : Yıldız Bayan" +
                          " Tür : Koparma ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else if (jsonDecode(data)['entry'][index]['aname'].toString() ==
                  "1") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : Genç Bayan" +
                          " Tür : Koparma ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else if (jsonDecode(data)['entry'][index]['aname'].toString() ==
                  "2") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : Büyük Bayan" +
                          " Tür : Koparma ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else if (jsonDecode(data)['entry'][index]['aname'].toString() ==
                  "3") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : U23 Bayan" +
                          " Tür : Koparma ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : U15 Bayan" +
                          " Tür : Koparma ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              }
            }
          }

//////2222

          if (jsonDecode(data)['entry'][index]['recordWhich'].toString() ==
              "1") {
            if (jsonDecode(data)['entry'][index]['asex'].toString() == "0") {
              if (jsonDecode(data)['entry'][index]['aname'].toString() == "0") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : Yıldız Erkek" +
                          " Tür : Silkme ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else if (jsonDecode(data)['entry'][index]['aname'].toString() ==
                  "1") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : Genç Erkek" +
                          " Tür : Silkme ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else if (jsonDecode(data)['entry'][index]['aname'].toString() ==
                  "2") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : Büyük Erkek" +
                          " Tür : Silkme ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else if (jsonDecode(data)['entry'][index]['aname'].toString() ==
                  "3") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : U23 Erkek" +
                          " Tür : Silkme ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : U15 Erkek" +
                          " Tür : Silkme ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              }
            }

            if (jsonDecode(data)['entry'][index]['asex'].toString() == "1") {
              if (jsonDecode(data)['entry'][index]['aname'].toString() == "0") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : Yıldız Bayan" +
                          " Tür : Silkme ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else if (jsonDecode(data)['entry'][index]['aname'].toString() ==
                  "1") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : Genç Bayan" +
                          " Tür : Silkme ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else if (jsonDecode(data)['entry'][index]['aname'].toString() ==
                  "2") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : Büyük Bayan" +
                          " Tür : Silkme ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else if (jsonDecode(data)['entry'][index]['aname'].toString() ==
                  "3") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : U23 Bayan" +
                          " Tür : Silkme ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : U15 Bayan" +
                          " Tür : Silkme ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              }
            }
          }

////////3

          if (jsonDecode(data)['entry'][index]['recordWhich'].toString() ==
              "2") {
            if (jsonDecode(data)['entry'][index]['asex'].toString() == "0") {
              if (jsonDecode(data)['entry'][index]['aname'].toString() == "0") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : Yıldız Erkek" +
                          " Tür : Toplam ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else if (jsonDecode(data)['entry'][index]['aname'].toString() ==
                  "1") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : Genç Erkek" +
                          " Tür : Toplam ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else if (jsonDecode(data)['entry'][index]['aname'].toString() ==
                  "2") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : Büyük Erkek" +
                          " Tür : Toplam ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else if (jsonDecode(data)['entry'][index]['aname'].toString() ==
                  "3") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : U23 Erkek" +
                          " Tür : Toplam ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : U15 Erkek" +
                          " Tür : Toplam ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              }
            }

            if (jsonDecode(data)['entry'][index]['asex'].toString() == "1") {
              if (jsonDecode(data)['entry'][index]['aname'].toString() == "0") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : Yıldız Bayan" +
                          " Tür : Toplam ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else if (jsonDecode(data)['entry'][index]['aname'].toString() ==
                  "1") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : Genç Bayan" +
                          " Tür : Toplam ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else if (jsonDecode(data)['entry'][index]['aname'].toString() ==
                  "2") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : Büyük Bayan" +
                          " Tür : Toplam ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else if (jsonDecode(data)['entry'][index]['aname'].toString() ==
                  "3") {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : U23 Bayan" +
                          " Tür : Toplam ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              } else {
                return Card(
                  child: ListTile(
                    title: Text(
                        jsonDecode(data)['entry'][index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Rkr :" +
                          jsonDecode(data)['entry'][index]['record']
                              .toString() +
                          "  " +
                          "Yaş.K : U15 Bayan" +
                          " Tür : Toplam ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Text(
                        jsonDecode(data)['entry'][index]['wweight'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                );
              }
            }
          }
        },
      ),
    );
  }
}
