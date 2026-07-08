import 'package:flutter/material.dart';
import 'package:mypage/viewmodels/news_view_model.dart';
import 'package:mypage/widgets/article_card.dart';
import 'package:mypage/widgets/category_filter.dart';


class NewsScreen extends StatefulWidget{
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
final ViewModel viewModel = ViewModel(Articles: [], selectedCategory: 'All');

  @override
  void initState() {
    super.initState();
    viewModel.loadArticles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('News Feed',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        )),
        actions: [
        IconButton(
          icon: Icon(Icons.bookmarks), 
          onPressed: () { 
            final snackBar = SnackBar(
                  content: const Text('COMING SOON!'),
                  duration: const Duration(seconds: 1));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ], 
      ),
      body: ListenableBuilder(
        listenable: viewModel, 
        builder: (context, _) => _buildPage(context),
        
      
      )
    );
  }

  Widget _buildPage(BuildContext context){
    if(viewModel.isLoading){
      return const Center(child: CircularProgressIndicator());
    }

    return Column(
      children: [
        HorizontalButtonList(viewModel: viewModel),
        SizedBox(
          height: 16,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: viewModel.filteredArticles.length,
            itemBuilder: (context, index){
              return ArticleCard(article: viewModel.filteredArticles[index], viewModel: viewModel,);
            }
          ),
        )
      ],);
  }


}