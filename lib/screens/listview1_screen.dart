import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final option = const ['Megaman', 'Superman', 'Batman', 'Deadpool'];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView 1'),
        ),
        body: ListView(
          children: [
            ...option
                .map((e) => ListTile(
                      title: Text(e),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList()
          ],
        ));
  }
}
