import 'package:flutter/material.dart';
import 'package:mypage/models/news_article.dart';
import 'package:mypage/models/news_model.dart';
import 'package:mypage/viewmodels/news_view_model.dart';
import 'package:mypage/views/news_screen.dart';


Set <String> categories = {};
void addSet(){
  categories.add('All');
  for(NewsArticle article in articleList){
    categories.add(article.category);
  }
}

class HorizontalButtonList extends StatelessWidget {
  List<String> get Categories => categories.toList();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Categories.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.only(right: 14),
            child: ElevatedButton(
              onPressed: (){
                debugPrint('${Categories[index]} pressed');
              
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: Colors.green,
              ),
              child: Text(Categories[index])
              )
            );
        },
        )
    );
  }

}

