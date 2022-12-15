import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final option = const ['Megaman', 'Superman', 'Batman', 'Deadpool'];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView 1'),
          leading: const Icon(Icons.list),
          backgroundColor: Colors.deepOrange,
        ),
        body: ListView.separated(
            itemBuilder: (_, index) => ListTile(
                  leading: const Icon(Icons.abc),
                  title: Text(option[index]),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.deepOrange,
                  ),
                  onTap: () {},
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: option.length));
  }
}
