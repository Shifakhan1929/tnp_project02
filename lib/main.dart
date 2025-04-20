import 'package:flutter/material.dart';
import 'package:myapp/practice_session.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice Screen',
      home: PracticeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

