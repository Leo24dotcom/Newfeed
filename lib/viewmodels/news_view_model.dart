import 'package:flutter/material.dart';
import 'package:mypage/models/news_article.dart';
import 'package:mypage/models/news_model.dart';

class ViewModel extends ChangeNotifier{
  bool isLoading;
  List<NewsArticle> Articles;
  String selectedCategory;

  ViewModel({
    this.isLoading = false,
    required this.Articles,
    this.selectedCategory = 'All',
});



  Future<void> loadArticles() async {
    isLoading = true;
    notifyListeners();

    Articles = await fetchArticles();

    isLoading = false;
    notifyListeners();
  }

  void selectCategory(String category) {
    selectedCategory = category;
    notifyListeners();
  }

  List<NewsArticle> get filteredArticles{
    if(selectedCategory.isEmpty) return Articles;
    else if(selectedCategory == 'All') return Articles;
    return Articles.where((a) => a.category == selectedCategory).toList();
  }
  
  void toggleBookmark(String id){
    final index = Articles.indexWhere((article) => article.id == id);
    Articles[index].isBookmarked = !Articles[index].isBookmarked;
    notifyListeners();
  }
}