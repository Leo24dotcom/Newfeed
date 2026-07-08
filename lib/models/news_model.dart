import 'news_article.dart';

List <NewsArticle> articleList = [
  NewsArticle(id: '1', category: 'Technology', headline: 'Flutter 4.0 Released with Native AI Support', summary: 'Flutter 4.0 introduces built-in AI capabilities, making it easier for developers to create smarter cross-platform applications.', source: 'TechCrunch', minutesAgo: 5),
  NewsArticle(id: '2', category: 'Technology', headline: 'Google Unveils Next-Gen Tensor Chip for Pixel', summary: 'Google has revealed a new Tensor processor designed to boost AI performance, efficiency, and features across Pixel devices', source: 'The Verge', minutesAgo: 22),
  NewsArticle(id: '3', category: 'Health', headline: 'New Study Links Daily Walking to Lower Dementia Risk', summary: 'Research suggests that maintaining a daily walking routine may help reduce the risk of developing dementia by supporting brain health', source: 'BBC Health', minutesAgo: 10),
  NewsArticle(id: '4', category: 'Health', headline: 'WHO Recommends 8 Hours Sleep for Adults Over 40', summary: 'The WHO advises adults over 40 to aim for around 8 hours of sleep to support overall health and well-being', source: 'Reuters', minutesAgo: 45),
  NewsArticle(id: '5', category: 'Sports', headline: 'Son Heung-min Signs Two-Year Extension with Spurs', summary: 'Son Heung-min has agreed to a two-year contract extension with Tottenham Hotspur, continuing his role as a key player for the club', source: 'ESPN', minutesAgo: 3),
  NewsArticle(id: '6', category: 'Sports', headline: 'Paris Olympics 2024 Breaks Streaming Records', summary: 'The Paris 2024 Olympics achieved record-breaking streaming numbers, highlighting the growing shift toward digital sports viewing.', source: 'Sports Illustrated', minutesAgo: 60),
  NewsArticle(id: '7', category: 'Business', headline: 'Apple Market Cap Crosses \$4 Trillion Again', summary: 'Apple\'s market value surpassed \$4 trillion once more, reflecting strong investor confidence in the company\'s future growth.', source: 'Bloomberg', minutesAgo: 15),
  NewsArticle(id: '8', category: 'Business', headline: 'Fed Holds Interest Rates Steady for Third Quarter', summary: 'The Federal Reserve kept interest rates unchanged for the third consecutive quarter while monitoring economic condtions', source: 'Financial Times', minutesAgo: 90),
  NewsArticle(id: '9', category: 'Science', headline: 'James Webb Telescope Detects Water on Exoplanet', summary: 'The James Webb Space Telescope has identifed signs of water on a distant exoplanet, offering new insights into planetary atmospheres', source: 'NASA News', minutesAgo: 30),
  NewsArticle(id: '10', category: 'Science', headline: 'Scientists Grow Functional Mini-Liver in Lab', summary: 'Researchers have successfully created lab-grown mini livers that perform key biological functions, advancing possibilities for future medical treatments', source: 'Nature', minutesAgo: 120),
];

Future <List<NewsArticle>> fetchArticles() async{
  await Future.delayed(const Duration(seconds: 1));
  
  return articleList;
}