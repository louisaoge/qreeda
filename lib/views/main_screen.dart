import 'package:flutter/material.dart';
import '../util/dialogs.dart';
//import 'package:flutter_ebook_app/views/explore/explore.dart';
//import 'package:flutter_ebook_app/views/home/home.dart';
import '../views/settings/settings.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../screens/products_overview_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController;
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Dialogs().showExitDialog(context),
      child: Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: onPageChanged,
          children: <Widget>[
            ProductsOverviewScreen(),
            //Explore(),
            Profile(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          elevation: 20,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Feather.home,
              ),
              title: Text(
                'Home',
              ),
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(
            //     Feather.compass,
            //   ),
            //   title: Text(
            //     'Explore',
            //   ),
            // ),
            BottomNavigationBarItem(
              icon: Icon(
                Feather.settings,
              ),
              title: Text(
                'Settings',
              ),
            ),
          ],
          onTap: navigationTapped,
          currentIndex: _page,
        ),
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }
}