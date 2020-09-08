import 'package:flutter/material.dart';

import 'Faaliyet_program_detay.dart';

class FaaliyetProgramTur extends StatefulWidget {
  final int year;

  FaaliyetProgramTur({Key key, @required this.year}) : super(key: key);

  @override
  FaaliyetProgramTurState createState() => FaaliyetProgramTurState();
}

class FaaliyetProgramTurState extends State<FaaliyetProgramTur> {
  @override
  void initState() {
    super.initState();
  }

  final items = [
    'Yurt İçi Faaliyetleri',
    'Yurt Dışı Faaliyetleri',
    'Eğitim Faaliyetleri'
  ];
  final items2 = [0, 1, 2];

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
        title: Text("Faaliyet Türü Seçiniz",
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
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(items[index],
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  overflow: TextOverflow.ellipsis),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FaaliyetProgramDetay(
                      tur_id: items2[index],
                      turadi: items[index],
                      year: widget.year,
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
