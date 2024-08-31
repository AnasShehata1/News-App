
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text('News',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold)),
      Text('Cloud',
          style: TextStyle(
              color: Colors.amber, fontSize: 22, fontWeight: FontWeight.bold)),
    ]);
  }
}
