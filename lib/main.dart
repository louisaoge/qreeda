import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_icons/flutter_icons.dart';
import './theme/theme_config.dart';
import 'providers/app_provider.dart';
import 'util/consts.dart';

 //import './screens/products_overview_screen.dart';
import './screens/cart_screen.dart';
import './screens/product_detail_screen.dart';
import './providers/products.dart';
import './providers/cart.dart';
import './providers/orders.dart';
import './views/splash/splash.dart';
import './screens/orders_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AppProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Orders(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (BuildContext context, AppProvider appProvider, Widget child) {
        return MaterialApp(
          key: appProvider.key,
          debugShowCheckedModeBanner: false,
          navigatorKey: appProvider.navigatorKey,
          title: Constants.appName,
          theme: themeData(appProvider.theme),
          darkTheme: themeData(ThemeConfig.darkTheme),
          home: Splash(),
          routes: {
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
            CartScreen.routeName: (ctx) => CartScreen(),
            OrdersScreen.routeName: (ctx) => OrdersScreen(),
          }
        );
      },
    );
  }
  // Widget build(BuildContext context) {
  //   return MultiProvider(
  //     providers: [
  //       ChangeNotifierProvider(
  //         create: (ctx) => Products(),
  //       ),
  //       ChangeNotifierProvider(
  //         create: (ctx) => Cart(),
  //       ),
  //       ChangeNotifierProvider(create: (_) => AppProvider()
  //       ),
  //     ],
  //     child: MaterialApp(
  //         title: 'Qreeda',
  //         // theme: ThemeData(
  //         //   primarySwatch: Colors.teal,
  //         //   accentColor: Colors.deepOrange[50],
  //         //   fontFamily: 'Lato',
  //         // ),
  //         theme: themeData(appProvider.theme),
  //         darkTheme: themeData(ThemeConfig.darkTheme),
  //         home: ProductsOverviewScreen(),
  //         routes: {
  //           ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
  //         }),
  //   );
  // }

  ThemeData themeData(ThemeData theme) {
    return 
    theme.copyWith(
      textTheme: GoogleFonts.sourceSansProTextTheme(
        theme.textTheme,
      ),
    );
  }
}
