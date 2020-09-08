import 'package:flutter/material.dart';
import 'package:flutter_wordpress_app/widgets/searchBoxes.dart';

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image(
          image: AssetImage('assets/splash1.png'),
          height: 55,
        ),
        elevation: 5,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[searchBoxes(context)],
          ),
        ),
      ),
    );
  }
}
