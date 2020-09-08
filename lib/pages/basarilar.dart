import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'musabakalar.dart';
import 'musabakalar_universal.dart';

class Basarilar extends StatefulWidget {
  @override
  _BasarilarState createState() => _BasarilarState();
}

class _BasarilarState extends State<Basarilar> {
  String data;

  var superheros_length;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    http.Response response = await http.get(
        "http://217.116.197.114:8080/fusio/public/index.php/get-achievements");
    if (response.statusCode == 200) {
      data = response.body; //store response as string
      setState(() {
        superheros_length = jsonDecode(
            data)['achivements']; //get all the data from json string superheros
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
        title: Text("Başarılar",
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
        itemCount: superheros_length == null ? 0 : 1,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: [
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columnSpacing: 20,
                      dataRowHeight: 50,
                      headingRowHeight: 60,
                      columns: [
                        DataColumn(
                            label: Text('Yıl',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14))),
                        DataColumn(
                            label: Image.asset("assets/more/1.png", width: 30)),
                        DataColumn(
                            label: Image.asset("assets/more/2.png", width: 30)),
                        DataColumn(
                            label: Image.asset("assets/more/3.png", width: 30)),
                        DataColumn(
                            label: Text('Toplam',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(
                            Text("2020",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MusabakalarUniversal(year: 2020),
                                ),
                              );
                            },
                          ),
                          DataCell(
                            Text(
                                " " +
                                    jsonDecode(data)['achivements']['2020']
                                            ['gold']
                                        .toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MusabakalarUniversal(year: 2020),
                                ),
                              );
                            },
                          ),
                          DataCell(
                            Text(
                                " " +
                                    jsonDecode(data)['achivements']['2020']
                                            ['silver']
                                        .toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MusabakalarUniversal(year: 2020),
                                ),
                              );
                            },
                          ),
                          DataCell(
                            Text(
                                " " +
                                    jsonDecode(data)['achivements']['2020']
                                            ['bronz']
                                        .toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MusabakalarUniversal(year: 2020),
                                ),
                              );
                            },
                          ),
                          DataCell(
                            Text(
                                " " +
                                    jsonDecode(data)['achivements']['2020']
                                            ['total']
                                        .toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MusabakalarUniversal(year: 2020),
                                ),
                              );
                            },
                          ),
                        ]),

//                        2019 başlangıç
                        DataRow(cells: [
                          DataCell(
                            Text("2019",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MusabakalarUniversal(year: 2019),
                                ),
                              );
                            },
                          ),
                          DataCell(
                            Text(
                                " " +
                                    jsonDecode(data)['achivements']['2019']
                                            ['gold']
                                        .toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MusabakalarUniversal(year: 2019),
                                ),
                              );
                            },
                          ),
                          DataCell(
                            Text(
                                " " +
                                    jsonDecode(data)['achivements']['2019']
                                            ['silver']
                                        .toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MusabakalarUniversal(year: 2019),
                                ),
                              );
                            },
                          ),
                          DataCell(
                            Text(
                                " " +
                                    jsonDecode(data)['achivements']['2019']
                                            ['bronz']
                                        .toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MusabakalarUniversal(year: 2019),
                                ),
                              );
                            },
                          ),
                          DataCell(
                            Text(
                                " " +
                                    jsonDecode(data)['achivements']['2019']
                                            ['total']
                                        .toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MusabakalarUniversal(year: 2019),
                                ),
                              );
                            },
                          ),
                        ]),
                        DataRow(cells: [
                          DataCell(
                            Text("2018",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MusabakalarUniversal(year: 2018),
                                ),
                              );
                            },
                          ),
                          DataCell(
                            Text(
                                " " +
                                    jsonDecode(data)['achivements']['2018']
                                            ['gold']
                                        .toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MusabakalarUniversal(year: 2018),
                                ),
                              );
                            },
                          ),
                          DataCell(
                            Text(
                                " " +
                                    jsonDecode(data)['achivements']['2018']
                                            ['silver']
                                        .toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MusabakalarUniversal(year: 2018),
                                ),
                              );
                            },
                          ),
                          DataCell(
                            Text(
                                " " +
                                    jsonDecode(data)['achivements']['2018']
                                            ['bronz']
                                        .toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MusabakalarUniversal(year: 2018),
                                ),
                              );
                            },
                          ),
                          DataCell(
                            Text(
                                " " +
                                    jsonDecode(data)['achivements']['2018']
                                            ['total']
                                        .toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MusabakalarUniversal(year: 2018),
                                ),
                              );
                            },
                          ),
                        ]),
                        DataRow(cells: [
                          DataCell(
                              Text("2017",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2017),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2017']
                                              ['gold']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2017),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2017']
                                              ['silver']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2017),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2017']
                                              ['bronz']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2017),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2017']
                                              ['total']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2017),
                              ),
                            );
                          }),
                        ]),
                        DataRow(cells: [
                          DataCell(
                              Text("2016",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2016),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2016']
                                              ['gold']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2016),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2016']
                                              ['silver']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2016),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2016']
                                              ['bronz']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2016),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2016']
                                              ['total']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2016),
                              ),
                            );
                          }),
                        ]),
                        DataRow(cells: [
                          DataCell(
                              Text("2015",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2015),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2015']
                                              ['gold']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2015),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2015']
                                              ['silver']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2015),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2015']
                                              ['bronz']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2015),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2015']
                                              ['total']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2015),
                              ),
                            );
                          }),
                        ]),
                        DataRow(cells: [
                          DataCell(
                              Text("2014",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2014),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2014']
                                              ['gold']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2014),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2014']
                                              ['silver']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2014),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2014']
                                              ['bronz']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2014),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2014']
                                              ['total']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2014),
                              ),
                            );
                          }),
                        ]),
                        DataRow(cells: [
                          DataCell(
                              Text("2013",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2013),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2013']
                                              ['gold']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2013),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2013']
                                              ['silver']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2013),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2013']
                                              ['bronz']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2013),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2013']
                                              ['total']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2013),
                              ),
                            );
                          }),
                        ]),
                        DataRow(cells: [
                          DataCell(
                              Text("2012",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2012),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2012']
                                              ['gold']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2012),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2012']
                                              ['silver']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2012),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2012']
                                              ['bronz']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2012),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2012']
                                              ['total']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2012),
                              ),
                            );
                          }),
                        ]),
                        DataRow(cells: [
                          DataCell(
                              Text("2011",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2011),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2011']
                                              ['gold']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2011),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2011']
                                              ['silver']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2011),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2011']
                                              ['bronz']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2011),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2011']
                                              ['total']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2011),
                              ),
                            );
                          }),
                        ]),
                        DataRow(cells: [
                          DataCell(
                              Text("2010",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2010),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2010']
                                              ['gold']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2010),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2010']
                                              ['silver']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2010),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2010']
                                              ['bronz']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2010),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2010']
                                              ['total']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2010),
                              ),
                            );
                          }),
                        ]),
                        DataRow(cells: [
                          DataCell(
                              Text("2009",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2009),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2009']
                                              ['gold']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2009),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2009']
                                              ['silver']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2009),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2009']
                                              ['bronz']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2009),
                              ),
                            );
                          }),
                          DataCell(
                              Text(
                                  " " +
                                      jsonDecode(data)['achivements']['2009']
                                              ['total']
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MusabakalarUniversal(year: 2009),
                              ),
                            );
                          }),
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
