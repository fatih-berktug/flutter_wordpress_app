import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:package_info/package_info.dart';
import '../main.dart';
import 'favoutite_articles.dart';

class Iletisim extends StatefulWidget {
  @override
  _IletisimState createState() => _IletisimState();
}

class _IletisimState extends State<Iletisim> {
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
  );

  bool _notification = false;

  @override
  void initState() {
    super.initState();
    checkNotificationSetting();
    _initPackageInfo();
  }

  Future<void> _initPackageInfo() async {
    final PackageInfo info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  checkNotificationSetting() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'notification';
    final value = prefs.getInt(key) ?? 0;
    if (value == 0) {
      setState(() {
        _notification = false;
      });
    } else {
      setState(() {
        _notification = true;
      });
    }
  }

  saveNotificationSetting(bool val) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'notification';
    final value = val ? 1 : 0;
    prefs.setInt(key, value);
    if (value == 1) {
      setState(() {
        _notification = true;
      });
    } else {
      setState(() {
        _notification = false;
      });
    }
    Future.delayed(const Duration(milliseconds: 500), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'İletişim',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'Poppins'),
        ),
        elevation: 5,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                child: Image(
                  image: AssetImage('assets/splash1.png'),
                  height: 60,
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: Text(
                  "Versiyon 1.0.0 ",
                  textAlign: TextAlign.center,
                  style: TextStyle(height: 1.0, color: Colors.black87),
                ),
              ),
              Divider(
                height: 1,
                thickness: 2,
              ),
              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                primary: false,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FavouriteArticles(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Image.asset(
                        "assets/more/favourite.png",
                        width: 30,
                      ),
                      title: Text('Favoriler',
                          style: TextStyle(color: Colors.black, fontSize: 17)),
                      subtitle: Text("Favorilerinizi görün"),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/more/location.png",
                      width: 30,
                    ),
                    title: Text('Adres',
                        style: TextStyle(color: Colors.black, fontSize: 17)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () async {
                              const url =
                                  'https://www.google.com/maps/place/T%C3%BCrkiye+Halter+Federasyonu/@39.9043272,32.8151179,15z/data=!4m2!3m1!1s0x0:0x27f990d403bf01d9?sa=X&ved=2ahUKEwiLjsi38IrpAhVFBhAIHS34AVgQ_BIwE3oECBIQCA';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Yüklenemedi $url';
                              }
                            },
                            child: Text(
                              "Balgat Mahallesi, Mevlana Blv. No:139/30 , Yelken Plaza 06520 Çankaya/ANKARA",
                              style: TextStyle(color: Colors.black45),
                            )),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/more/mail.png",
                      width: 30,
                    ),
                    title: Text('Mail',
                        style: TextStyle(color: Colors.black, fontSize: 17)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () async {
                              const url = 'mailto:halter@sgm.gov.tr';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Yüklenemedi $url';
                              }
                            },
                            child: Text(
                              "halter@gsb.gov.tr",
                              style: TextStyle(color: Colors.black45),
                            )),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/more/contact.png",
                      width: 30,
                    ),
                    title: Text('Telefon',
                        style: TextStyle(color: Colors.black, fontSize: 17)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () async {
                              const url = 'tel:+903124334330';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Yüklenemedi $url';
                              }
                            },
                            child: Text(
                              "+90 312 433 43 30",
                              style: TextStyle(color: Colors.black45),
                            )),
                        FlatButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () async {
                              const url = 'tel:+903124330051';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Yüklenemedi $url';
                              }
                            },
                            child: Text(
                              "+90 312 433 00 51",
                              style: TextStyle(color: Colors.black45),
                            )),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/more/fax.png",
                      width: 30,
                    ),
                    title: Text('Faks',
                        style: TextStyle(color: Colors.black, fontSize: 17)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                            onPressed: () async {},
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "+90 312 433 00 56",
                              style: TextStyle(color: Colors.black45),
                            )),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Share.share(
                          'https://play.google.com/store/apps/details?id=' +
                              this._packageInfo.packageName);
                    },
                    child: ListTile(
                      leading: Image.asset(
                        "assets/more/share.png",
                        width: 30,
                      ),
                      title: Text('Paylaş',
                          style: TextStyle(color: Colors.black, fontSize: 17)),
                      subtitle: Text("Uygulamamıza göz atmak ister misiniz ?"),
                    ),
                  ),
                  ListTile(
                    onTap: () async {
                      const url = 'http://www.kobiltek.com';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Yüklenemedi $url';
                      }
                    },
                    subtitle: Text('Copyright 2020 KOBILTEK',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black45, fontSize: 14)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
