import 'package:flutter/material.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: 200, child: Center(child: CircularProgressIndicator()));
  }
}
