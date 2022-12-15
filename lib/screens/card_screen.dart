import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('CardScreen')),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          children: const [
            CustomCard(),
            SizedBox(
              height: 20,
            ),
            CustomCard2(
                name: 'Paisaje en las montañas',
                imageUrl:
                    'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'),
            SizedBox(
              height: 20,
            ),
            CustomCard2(
                name: 'Hermoso rio entre montañas',
                imageUrl:
                    'https://i.ytimg.com/vi/c7oV1T2j5mc/maxresdefault.jpg'),
            SizedBox(
              height: 20,
            ),
            CustomCard2(
                imageUrl:
                    'https://www.amateurphotographer.co.uk/wp-content/uploads/2022/03/Landscape-South-Island-New-Zealand-820x500.jpg'),
            SizedBox(
              height: 100,
            ),
          ],
        ));
  }
}
