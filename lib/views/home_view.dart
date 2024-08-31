import 'package:flutter/material.dart';
import 'package:newsapp/widgets/custom_appbar.dart';
import 'package:newsapp/widgets/news_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const CustomAppBar(),
      ),
      body: const NewsBody(),
    );
  }
}
