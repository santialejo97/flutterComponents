import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text('Alerta'),
        content: Column(
          children: const [
            Text('Informacion de la alerta'),
            SizedBox(
              height: 10,
            ),
            FlutterLogo(
              size: 100,
            )
          ],
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('cancelar'))
        ],
      ),
    );
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('este es el contenido de la alerta'),
            SizedBox(
              height: 10,
            ),
            FlutterLogo(
              size: 100,
            )
          ],
        ),
        title: const Text('Alerta'),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
      body: Center(
          child: ElevatedButton(
              // onPressed: () => displayDialogAndroid(context),
              onPressed: () => Platform.isAndroid
                  ? displayDialogAndroid(context)
                  : displayDialogIOS(context),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  'Mostrar alerta',
                  style: TextStyle(fontSize: 16),
                ),
              ))),
    );
  }
}
