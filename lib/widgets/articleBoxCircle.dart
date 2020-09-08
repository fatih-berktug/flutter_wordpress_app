import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_wordpress_app/models/Article.dart';
import 'package:html/dom.dart' as dom;

Widget articleBoxCircle(BuildContext context, Article article, String heroId) {
  return ConstrainedBox(
    constraints: new BoxConstraints(
      minHeight: 80.0,
      maxHeight: 80.0,
    ),
    child: Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.bottomRight,
          margin: EdgeInsets.fromLTRB(20, 16, 8, 0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(8, 4, 4, 8),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Html(
                              data: article.title.length > 58
                                  ? "<h1>" +
                                      article.title.substring(0, 58) +
                                      "...</h1>"
                                  : "<h1>" + article.title + "</h1>",
                              customTextStyle:
                                  (dom.Node node, TextStyle baseStyle) {
                                if (node is dom.Element) {
                                  switch (node.localName) {
                                    case "h1":
                                      return baseStyle.merge(
                                          Theme.of(context).textTheme.title);
                                  }
                                }
                                return baseStyle;
                              }),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 80,
          width: 80,
          child: Card(
            child: Hero(
              tag: heroId,
              child: ClipOval(
                child: Image.network(
                  article.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 0,
            margin: EdgeInsets.all(10),
          ),
        ),
      ],
    ),
  );
}
