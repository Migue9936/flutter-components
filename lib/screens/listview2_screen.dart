import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final games = const ['League of legends', 'Fifa', 'Call of Duty', 'Rage 2'];
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Games'),
      ),
      body: ListView.separated(
        itemCount: games.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            games[index],
          ),
          trailing: const Icon(Icons.arrow_forward_ios_rounded,
              color: AppTheme.primary),
          onTap: () => {},
        ),
        separatorBuilder: (_, __) => const Divider(
          color: AppTheme.primary,
          thickness: 1,
        ),
      ),
    );
  }
}
