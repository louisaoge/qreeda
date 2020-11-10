import 'dart:async';
import 'package:flutter/material.dart';

import '../main_screen.dart';
//import './../screens/product_detail_screen.dart';
import '../../util/router.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  startTimeout() {
    return new Timer(Duration(seconds: 2), handleTimeout);
  }

  void handleTimeout() {
    changeScreen();
  }

  changeScreen() async {
    Router.pushPageReplacement(
      context,
      MainScreen(),
  //         routes: {
  //           ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
  //         }),
    );
  }

  @override
  void initState() {
    super.initState();
    startTimeout();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/splash.png"), fit: BoxFit.cover)),
    );
  }
}
