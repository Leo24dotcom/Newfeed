import 'package:flutter/material.dart';
import 'package:mypage/models/news_article.dart';
import 'package:mypage/models/news_model.dart';
import 'package:mypage/viewmodels/news_view_model.dart';



Set <String> categories = {};
void addSet(){
  categories.add('All');
  for(NewsArticle article in articleList){
    categories.add(article.category);
  }
}



class HorizontalButtonList extends StatelessWidget {
  final ViewModel viewModel;
  const HorizontalButtonList({super.key, required this.viewModel});
  List<String> get Categories => categories.toList();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Categories.length,
        itemBuilder: (context, index){
          final category = Categories[index];
          final isSelected = category == viewModel.selectedCategory;
          return Padding(
            padding: const EdgeInsets.only(right: 14),
            child: ElevatedButton(
              onPressed: (){
                viewModel.selectCategory(Categories[index]);
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: isSelected ? Color(0xFFC8FF00): Color(0xFF1C1C1C),
              ),
              child: Text(Categories[index],
              style: TextStyle(
                color: isSelected ? Colors.black : Colors.grey,
                fontWeight: isSelected? FontWeight.bold : FontWeight.normal
              ))
              )
            );
        },
        )
    );
  }

}

