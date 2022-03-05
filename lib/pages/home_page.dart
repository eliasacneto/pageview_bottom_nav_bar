import 'package:flutter/material.dart';
import 'package:pageview_bottom_nav_bar/pages/page_views/first_page.dart';
import 'package:pageview_bottom_nav_bar/pages/page_views/second_page.dart';
import 'package:pageview_bottom_nav_bar/pages/page_views/third_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();

  int indexBottomNav = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PageViewer and Nav Bar',
        ),
        centerTitle: true,
      ),
      body: PageView(
        controller: _pageController,
        children: const [
          FirstPage(),
          SecondPage(),
          ThirdPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottomNav,
        onTap: (int page) {
          setState(() {
            indexBottomNav = page;
          });
          _pageController.animateToPage(page,
              duration: const Duration(milliseconds: 300), curve: Curves.ease);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
