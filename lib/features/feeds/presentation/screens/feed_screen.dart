import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Feed',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
