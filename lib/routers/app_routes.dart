import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initalRoute = 'home';

  static final menuOption = <MenuOption>[
    MenuOption(
        router: 'home',
        icon: Icons.home,
        name: 'home',
        screen: const HomeScreen()),
    MenuOption(
        router: 'listview1',
        icon: Icons.list,
        name: 'Lista2',
        screen: const ListView1Screen()),
    MenuOption(
        router: 'listview2',
        icon: Icons.list,
        name: 'Lista',
        screen: const ListView2Screen()),
    MenuOption(
        router: 'alert',
        icon: Icons.add_alert_sharp,
        name: 'Alertas',
        screen: const AlertScreen()),
    MenuOption(
        router: 'card',
        icon: Icons.credit_card,
        name: 'Tarjetas',
        screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> router = {};

    menuOption.forEach((routerMenu) {
      router.addAll({routerMenu.router: (context) => routerMenu.screen});
    });

    return router;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => const ListView1Screen(),
  //   'listview2': (context) => const ListView2Screen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  // };

  static Route<dynamic> Function(RouteSettings) onGenerateRoute = (settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  };
}
