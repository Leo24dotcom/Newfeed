class NewsArticle {
  final String id;
  final String category; //'Technology' | 'Health' | 'Sports' | 'Business' | 'Science'
  final String headline;
  final String summary;
  final String source;
  final int minutesAgo;
  bool isBookmarked;

  NewsArticle({
    required this.id,
    required this.category,
    required this.headline,
    required this.summary,
    required this.source,
    required this.minutesAgo,
    this.isBookmarked = false,
});
}
