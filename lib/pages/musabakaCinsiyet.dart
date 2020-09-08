import 'package:flutter/material.dart';

import 'musabakaKategori.dart';

class MusabakaCinsiyet extends StatefulWidget {
  final int musabakaId;

  MusabakaCinsiyet({Key key, @required this.musabakaId}) : super(key: key);

  @override
  MusabakaCinsiyetState createState() => MusabakaCinsiyetState();
}

class MusabakaCinsiyetState extends State<MusabakaCinsiyet> {
  @override
  void initState() {
    super.initState();
  }

  final items = ['Erkek', 'Kadın'];
  final items2 = [0, 1];

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
        title: Text("Cinsiyet Seçiniz",
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
        itemCount: 2,
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
                    builder: (context) => MusabakaKategori(
                        musabakaId: widget.musabakaId,
                        musabakaCinsiyet: items2[index],
                        musabakaCinsiyetAdi: items[index]),
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
