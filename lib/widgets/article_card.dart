import 'package:flutter/material.dart';
import 'package:mypage/models/news_article.dart';
import 'package:mypage/viewmodels/news_view_model.dart';


  class ArticleCard extends StatelessWidget {
    final NewsArticle article;
    final ViewModel viewModel;
    const ArticleCard({super.key, required this.article, required this.viewModel});
    

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
                    color: switch(article.category){
                      'Technology' =>
                        Colors.blue,
                      'Health' =>
                        Colors.green,
                      'Sports' =>
                        Colors.red,
                      'Business' =>
                        Colors.purple,
                      'Science' =>
                        Colors.orange,
                      _ => Colors.grey
                    }
                  ),
                  child: Text(article.category,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ))),
                ),
                IconButton(onPressed: () { 
                  viewModel.toggleBookmark(article.id);
                 },
                 icon: Icon(Icons.bookmark, color: article.isBookmarked ? Color(0xFFC8FF00) : Colors.grey), 
                 )
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
                padding: EdgeInsets.symmetric(horizontal: 16, vertical : 10),
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

