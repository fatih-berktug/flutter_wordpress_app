import 'package:flutter/material.dart';
import 'package:flutter_wordpress_app/pages/records.dart';

class RecordsCategory extends StatefulWidget {
  @override
  RecordsCategoryState createState() => RecordsCategoryState();
}

class RecordsCategoryState extends State<RecordsCategory> {
  @override
  void initState() {
    super.initState();
  }

  final items = ['Türkiye', 'Dünya', 'Olimpiyat', 'Avrupa'];
  final items2 = [0, 1, 2, 3];

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
        title: Text("Rekorlar",
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
        itemCount: 4,
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
                    builder: (context) => Records(
                        record_category_id: items2[index],
                        record_category_name: items[index]),
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
