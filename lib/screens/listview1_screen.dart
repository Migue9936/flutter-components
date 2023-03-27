import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final games = const ['League of legends', 'Fifa', 'Call of Duty', 'Rage 2'];
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View 1'),
        ),
        body: ListView(
          children: [
            ...games.map(
              (game) => ListTile(
                title: Text(game),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
          ],
        ));
  }
}
