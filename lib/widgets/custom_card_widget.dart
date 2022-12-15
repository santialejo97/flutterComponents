import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              leading: Icon(Icons.ac_unit_outlined),
              title: Text('Soy un Titulo'),
              subtitle: Text(
                  ' Deserunt eiusmod consequat occaecat esse eiusmod adipisicing excepteur aliquip. Dolore nostrud minim velit eiusmod consequat duis. Amet adipisicing aute non labore pariatur commodo consequat sint velit excepteur.'),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Cancelar'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Ok'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
