import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/theme/app_theme.dart';


class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(children:  [
        const ListTile(
          leading: Icon(Icons.videogame_asset,color: AppTheme.primary,size: 40),
          subtitle: Text('Ad Lorem consectetur voluptate consequat minim magna do ullamco occaecat veniam reprehenderit et cillum.Ad Lorem consectetur voluptate consequat minim magna do ullamco occaecat veniam reprehenderit et cillum.'),
          title: Text('I´m a title'),
        ),
        Padding(padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //Cancel Button
              TextButton(
                onPressed: () => {},
                child: const Text('Cancel'),
                 ),
              //Accept Button
              const SizedBox(width: 2,),
              TextButton(
              onPressed: () => {}, 
              child: const Text('Ok'))
            ],
          ),
        )
      ]),
    );
  }
}