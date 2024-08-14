import 'package:flutter/material.dart';
import 'package:newsapp/widgets/news_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:
            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('News',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold)),
          Text('Cloud',
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 22,
                  fontWeight: FontWeight.bold)),
        ]),
      ),
      body: const NewsBody(),
    );
  }
}
