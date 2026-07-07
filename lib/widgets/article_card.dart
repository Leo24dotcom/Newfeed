import 'package:flutter/material.dart';
import 'package:mypage/models/news_article.dart';

  class ArticleCard extends StatelessWidget {
    final NewsArticle article;

    const ArticleCard({super.key, required this.article});

    @override
    Widget build(BuildContext context){
      return Card(
        color: Color(0xFF1C1C1C),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blue
                  ),
                  child: Text(article.category)),
                ),
                IconButton(icon: Icon(Icons.bookmark), onPressed: () { 
                  debugPrint('Bookmarked!');
                 },)
              ],
            ),      
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(article.headline,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [           
              Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(article.summary,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              )),
              ),
              ), 
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Text('${article.minutesAgo} min ago', style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              )),
              ),
              ],
            ),
          ],
            ),
        );

    }

  }

