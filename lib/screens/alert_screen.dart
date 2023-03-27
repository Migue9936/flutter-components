import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogeIOS(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return  CupertinoAlertDialog(
            title: const Text('This is the title in IOS'),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
            Text('This is the alert content In IOS'),
            SizedBox(height: 30),
            FlutterLogo(size: 100)
          ]),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel',style: TextStyle(color: Colors.red)),
              ),
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Ok'))
          ],
          );
        });
  }

  void displayDialogeAndroid(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 5,
          title: const Text('This is the title in Android'),
          content: Column(mainAxisSize: MainAxisSize.min, children: const [
            Text('This is the alert content in Android'),
            SizedBox(height: 30),
            FlutterLogo(size: 100)
          ]),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel',style: TextStyle(color: Colors.red),)
              ),
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Ok')
              ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(
              
              //onPressed: () => displayDialogeAndroid(context),
              onPressed: () => Platform.isAndroid ? displayDialogeAndroid(context):displayDialogeIOS(context),
              child: const Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child:
                    Text('Button Alert Sisas', style: TextStyle(fontSize: 16)),
              )
            ),
        ),
        floatingActionButton: 
          FloatingActionButton(child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      );
  }
}
