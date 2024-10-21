import 'package:flutter/material.dart';
import 'package:newsapp/views/home_viewo.dart';

void main() {
  runApp(const newsApp());
}



class newsApp extends StatelessWidget {
  const newsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeViewo(),
    );
  }
}
