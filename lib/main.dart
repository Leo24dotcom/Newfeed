import 'package:flutter/material.dart';
import 'package:mypage/views/news_screen.dart';
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
        backgroundColor: Colors.black,
        body: 
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(         
            spacing: 16, 
            children: [
              Expanded(
            child: NewsScreen(),
              ),
            ],
          ),
        ),
      ),
      );
  }
}
