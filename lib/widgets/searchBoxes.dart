import 'package:flutter/material.dart';
import 'package:flutter_wordpress_app/common/constants.dart';
import 'package:flutter_wordpress_app/pages/CategoryArticlesCircle.dart';
import 'package:flutter_wordpress_app/pages/basarilar.dart';
import 'package:flutter_wordpress_app/pages/category_articles.dart';
import 'package:flutter_wordpress_app/pages/faaliyet_program.dart';
import 'package:flutter_wordpress_app/pages/forms.dart';
import 'package:flutter_wordpress_app/pages/musabakalar.dart';
import 'package:flutter_wordpress_app/pages/musabakalar_yil.dart';
import 'package:flutter_wordpress_app/pages/records_category.dart';

Widget searchBoxes(BuildContext context) {
  return GridView.count(
    padding: EdgeInsets.all(16),
    shrinkWrap: true,
    physics: ScrollPhysics(),
    crossAxisCount: 2,
    children: List.generate(CUSTOM_CATEGORIES.length, (index) {
      var cat = CUSTOM_CATEGORIES[index];
      var name = cat[0];
      var image = cat[1];
      var catId = cat[2];

      return Card(
        child: InkWell(
          onTap: () {
            if (catId == 20) {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => MusabakalarYil()),
              );
            }
            if (catId == 21) {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => RecordsCategory()),
              );
            }

            if (catId == 22) {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => Forms()),
              );
            }
            if (catId == 23) {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => FaaliyetProgram()),
              );
            }
            if (catId == 24) {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => Basarilar()),
              );
            }

            if (catId == 1) {
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => CategoryArticles(catId, name),
                ),
              );
            }

            if (catId == 3) {
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => CategoryArticles(catId, name),
                ),
              );
            }

            if (catId == 13) {
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => CategoryArticlesCircle(catId, name),
                ),
              );
            }
          },
          child: Container(
            padding: EdgeInsets.fromLTRB(8, 1, 8, 18),
            child: Column(
              children: <Widget>[
                SizedBox(width: 90, height: 90, child: Image.asset(image)),
                Spacer(),
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.2,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }),
  );
}
