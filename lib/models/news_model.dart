import 'news_article.dart';

List <NewsArticle> articleList = [
  NewsArticle(id: '1', category: 'Technology', headline: 'Flutter 4.0 Released with Native AI Support', summary: 'fawda', source: 'TechCrunch', minutesAgo: 5),
  NewsArticle(id: '2', category: 'Technology', headline: 'Google Unveils Next-Gen Tensor Chip for Pixel', summary: 'fawda', source: 'The Verge', minutesAgo: 22),
  NewsArticle(id: '3', category: 'Health', headline: 'New Study Links Daily Walking to Lower Dementia Risk', summary: 'fawda', source: 'BBC Health', minutesAgo: 10),
  NewsArticle(id: '4', category: 'Health', headline: 'WHO Recommends 8 Hours Sleep for Adults Over 40', summary: 'fawda', source: 'Reuters', minutesAgo: 45),
  NewsArticle(id: '5', category: 'Sports', headline: 'Son Heung-min Signs Two-Year Extension with Spurs', summary: 'fawda', source: 'ESPN', minutesAgo: 3),
  NewsArticle(id: '6', category: 'Sports', headline: 'Paris Olympics 2024 Breaks Streaming Records', summary: 'fawda', source: 'Sports Illustrated', minutesAgo: 60),
  NewsArticle(id: '7', category: 'Business', headline: 'Apple Market Cap Crosses 4 Trillion Again', summary: 'fawda', source: 'Bloomberg', minutesAgo: 15),
  NewsArticle(id: '8', category: 'Business', headline: 'Fed Holds Interest Rates Steady for Third Quarter', summary: 'fawda', source: 'Financial Times', minutesAgo: 90),
  NewsArticle(id: '9', category: 'Science', headline: 'James Webb Telescope Detects Water on Exoplanet', summary: 'fawda', source: 'NASA News', minutesAgo: 30),
  NewsArticle(id: '10', category: 'Science', headline: 'Scientists Grow Functional Mini-Liver in Lab', summary: 'fawda', source: 'Nature', minutesAgo: 120),
];

Future <List<NewsArticle>> fetchArticles() async{
  await Future.delayed(const Duration(seconds: 1));
  
  return articleList;
}