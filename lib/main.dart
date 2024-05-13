import 'package:automn/screens/second_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MainDart());
}

class MainDart extends StatelessWidget {
  const MainDart({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: SecondPage());
  }
}
