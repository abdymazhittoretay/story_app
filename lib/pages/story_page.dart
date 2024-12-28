import 'package:flutter/material.dart';

class StoryPage extends StatelessWidget {
  final String title;
  final String story;

  const StoryPage({
    super.key,
    required this.title,
    required this.story,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(title),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.blue[100], borderRadius: BorderRadius.circular(10.0)),
        child: Text(
          story,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16.0, color: Colors.black),
        ),
      ),
    );
  }
}
