import 'package:fl_components/routers/app_routes.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menu = AppRoutes.menuOption;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemCount: menu.length + 1,
        separatorBuilder: (BuildContext context, int index) {
          return ListTile(
            trailing: Icon(menu[index].icon),
            title: Text(menu[index].name),
            onTap: () {
              // final route = MaterialPageRoute(
              //     builder: (context) => const ListView1Screen());
              // Navigator.push(context, route);
              Navigator.pushNamed(context, menu[index].router);
            },
          );
        },
        itemBuilder: (_, __) {
          return const Divider();
        },
      ),
    );
  }
}
