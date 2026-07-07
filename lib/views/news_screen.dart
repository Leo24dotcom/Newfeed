import 'package:flutter/material.dart';
import 'package:mypage/viewmodels/news_view_model.dart';
import 'package:mypage/widgets/article_card.dart';


class NewsScreen extends StatefulWidget{
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
final ViewModel viewModel = ViewModel(Articles: [], selectedCategory: '');

  @override
  void initState() {
    super.initState();
    viewModel.loadArticles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
        actions: [
        IconButton(
          icon: Icon(Icons.chevron_left), 
          onPressed: () { 
            debugPrint('hi');
            },
          ),
        ], 
      ),
      body: ListenableBuilder(listenable: viewModel, 
      builder: (context, _){
        return switch((
          viewModel.isLoading,
          viewModel.selectedCategory,
        )) {
          (true, _) => const CircularProgressIndicator(),
          (false, null) => throw UnimplementedError(),
          // TODO: Handle this case.
          (false, final category) => throw UnimplementedError(),
        };
      }
      )


    );
  }
}