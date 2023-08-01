import 'package:flutter/material.dart';

import 'home/homeView.dart';

void main() {
  runApp(const AppPageNav());
}

class AppPageNav extends StatefulWidget {
  const AppPageNav({Key? key}) : super(key: key);

  @override
  State<AppPageNav> createState() => _AppPageNavState();
}

class _AppPageNavState extends State<AppPageNav> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePageView(),
    );
  }
}
