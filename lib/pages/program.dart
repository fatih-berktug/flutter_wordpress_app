import 'package:flutter/material.dart';

class Program extends StatefulWidget {
  @override
  _ProgramState createState() => _ProgramState();
}

class _ProgramState extends State<Program> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: Text("Faaliyet Programı",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Poppins')),
            elevation: 5,
            backgroundColor: Colors.white,
            bottom: TabBar(
                indicatorColor: Color(0xFFe31e24),
                unselectedLabelColor: Colors.black,
                labelColor: Color(0xFFe31e24),
                labelPadding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                tabs: <Widget>[
                  Text("Yurt İçi ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins')),
                  Text("Yurt Dışı ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins')),
                  Text("Eğitim ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins')),
                ]),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: DataTable(
                    columnSpacing: 20,
                    dataRowHeight: 30,
                    headingRowHeight: 30,
                    columns: [
                      DataColumn(
                          label: Text('Tarih',
                              style:
                                  TextStyle(color: Colors.red, fontSize: 14))),
                      DataColumn(
                          label: Text('Faaliyet Adı',
                              style:
                                  TextStyle(color: Colors.red, fontSize: 14))),
                      DataColumn(
                          label: Text('Yeri',
                              style:
                                  TextStyle(color: Colors.red, fontSize: 14))),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text("10-12 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Yıldızlar Okullararası Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Aydın",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                    ],
                  )),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: DataTable(
                    columnSpacing: 20,
                    dataRowHeight: 30,
                    headingRowHeight: 30,
                    columns: [
                      DataColumn(
                          label: Text('Tarih',
                              style:
                                  TextStyle(color: Colors.red, fontSize: 14))),
                      DataColumn(
                          label: Text('Faaliyet Adı',
                              style:
                                  TextStyle(color: Colors.red, fontSize: 14))),
                      DataColumn(
                          label: Text('Yeri',
                              style:
                                  TextStyle(color: Colors.red, fontSize: 14))),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text("10-12 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Yıldızlar Okullararası Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Aydın",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                    ],
                  )),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: DataTable(
                    columnSpacing: 20,
                    dataRowHeight: 30,
                    headingRowHeight: 30,
                    columns: [
                      DataColumn(
                          label: Text('Tarih',
                              style:
                                  TextStyle(color: Colors.red, fontSize: 14))),
                      DataColumn(
                          label: Text('Faaliyet Adı',
                              style:
                                  TextStyle(color: Colors.red, fontSize: 14))),
                      DataColumn(
                          label: Text('Yeri',
                              style:
                                  TextStyle(color: Colors.red, fontSize: 14))),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text("10-12 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Yıldızlar Okullararası Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Aydın",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("23-26 Ocak 2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text(
                            "Naim Süleymanoğlu Büyükler Ferdi Türkiye Şamp. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                        DataCell(Text("Manavgat/Antalya",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                      ]),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
