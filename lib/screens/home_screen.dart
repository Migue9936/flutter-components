import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoutes.menuOptions;
    return Scaffold(appBar: AppBar(title: const Text('Flutter Componnets'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ListView.separated(
          itemBuilder: (context, i) {
            return ListTile(
              title: Text(menuOption[i].name),
              leading: Icon(menuOption[i].icon,color: AppTheme.primary),
              onTap: () => Navigator.pushNamed(context, menuOption[i].route),
            );
          },
          itemCount: menuOption.length,
          separatorBuilder: (_, __) {
            return const Divider(color: AppTheme.primary,thickness: 1,);
          },
        ),
      ),
    );
  }
}
