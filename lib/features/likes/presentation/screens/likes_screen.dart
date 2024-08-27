import 'package:flutter/material.dart';

class LikesScreen extends StatelessWidget {
  const LikesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Likes',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
