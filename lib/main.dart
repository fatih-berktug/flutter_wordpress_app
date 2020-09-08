import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_wordpress_app/pages/anasayfa.dart';
import 'package:flutter_wordpress_app/pages/iletisim.dart';
import 'package:flutter_wordpress_app/pages/kurumsal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      title: 'Halter',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xFFe31e24),
        accentColor: Color(0xFFe31e24),
        textTheme: TextTheme(
            title: TextStyle(
              fontSize: 17,
              color: Colors.black,
              height: 1.2,
              fontWeight: FontWeight.w500,
              fontFamily: "Soleil",
            ),
            caption: TextStyle(color: Colors.black45, fontSize: 10),
            body1: TextStyle(
              fontSize: 16,
              height: 1.5,
              color: Colors.black87,
            )),
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [Anasayfa(), Kurumsal(), Iletisim()];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.w500, fontFamily: "Soleil"),
          unselectedLabelStyle: TextStyle(fontFamily: "Soleil"),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Anasayfa')),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle),
                title: Text('Kurumsal')),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone), title: Text('İletişim')),
          ],
          currentIndex: _selectedIndex,
          fixedColor: Theme.of(context).primaryColor,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
