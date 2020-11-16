import 'package:flutter/material.dart';
import '../util/router.dart';

import '../screens/orders_screen.dart';
import '../views/main_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Hi'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Dashboard'),
            onTap: () {
              Router.pushPageReplacement(
                context,
                MainScreen(),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('My Bag'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                OrdersScreen.routeName,
              );
            },
          ),
        ],
      ),
    );
  }
}
