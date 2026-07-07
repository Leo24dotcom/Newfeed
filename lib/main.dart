import 'package:flutter/material.dart';
import 'package:mypage/models/news_article.dart';
import 'widgets/article_card.dart';
import 'widgets/category_filter.dart';
void main() {
  addSet();
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: 
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(         
            spacing: 16, 
            children: [
            HorizontalButtonList(),  
            ArticleCard(article: NewsArticle(id: '0', category: 'horror', headline: 'KIMCHI SHORTAGE wadhowhaodhwoahdoiashodhahodwqahdoajodawohdoahdoahowhdoawhd', summary: 'yesdwha9ohdoawhdoawhohd0wahd9w8ahsiudhowahdowadwajdpwajpdjwapjdpwajdawjdoawjdoajdowajd', source: 'me', minutesAgo: 0)),
          ArticleCard(article: NewsArticle(id: '0', category: 'horror', headline: 'KIMCHI SHORTAGE', summary: 'yes', source: 'me', minutesAgo: 0)),
            ],
          ),
        ),
      ),
      );
  }
}
