import 'package:flutter/material.dart';
import 'package:note_taking_app/utils/colors.dart';

import '../widgets/page_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: PageView(
          controller: _controller,
          scrollDirection: Axis.horizontal,
          children:[
            Page_View(pageController: _controller),
            Page_View(pageController: _controller),
            Page_View(pageController: _controller),
          ],
        ),
      ),
    );
  }
}