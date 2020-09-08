import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final items = [
    'Antrenör Formu',
    'Kulüp Formu',
    'Yarışma Kartı',
    'Hakem Formu',
    'Sporcu Formu',
    'Sporcu İzin Formu (Tekli)',
    'Sporcu İzin Formu (Çoklu)',
    'Müsabaka İzin Formu',
    'Milli Sporcu Belgesi Başvuru Formu',
    'TOHM Dilekçe',
    'APEL Fişi'
  ];
  final items2 = [
    "http://halter.gov.tr/wp-content/uploads/2016/04/antrenor.doc",
    "http://halter.gov.tr/wp-content/uploads/2016/04/kulup.doc",
    "http://halter.gov.tr/wp-content/uploads/2016/04/yarismakarti.pdf",
    "http://halter.gov.tr/wp-content/uploads/2016/04/hakem.doc",
    "http://halter.gov.tr/wp-content/uploads/2016/04/sporcu.doc",
    "http://halter.gov.tr/wp-content/uploads/2016/04/sporcu-izin-talep-formu.docx",
    "http://halter.gov.tr/wp-content/uploads/2016/04/sporcu-izin-talep-formu_coklu.docx",
    "http://halter.gov.tr/wp-content/uploads/2016/04/MUSABAKA-IZIN-FORMU13012015.docx",
    "http://halter.gov.tr/wp-content/uploads/2016/04/milli-sporcu.doc",
    "http://halter.gov.tr/wp-content/uploads/2016/04/tohmDilekce.docx",
    "http://halter.gov.tr/wp-content/uploads/2016/04/APELL.xlsx"
  ];

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
        title: Text("Formlar",
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
        itemCount: 11,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
                title: Text(items[index],
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    overflow: TextOverflow.ellipsis),
                trailing: Icon(Icons.file_download),
                onTap: () => launch(items2[index])),
          );
        },
      ),
    );
  }
}
