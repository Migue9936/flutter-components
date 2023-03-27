import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(route: 'listview1',name: 'Listview type 1',screen: const ListView1Screen(),icon: Icons.list),
    MenuOption(route: 'Listview2',name: 'Listview type 2',screen: const ListView2Screen(),icon: Icons.line_style),
    MenuOption(route: 'alert',name: 'Alerts',screen: const AlertScreen(),icon: Icons.warning),
    MenuOption(route: 'card',name: 'Cards',screen: const CardScreen(),icon: Icons.add_card_outlined),
    MenuOption(route: 'avatar',name: 'User Avatar',screen: const AvatarScreen(),icon: Icons.supervised_user_circle_rounded),
    MenuOption(route: 'animatedScreen',name: 'Animated Screen',screen: const AnimetedScreen(),icon: Icons.play_circle_outline_sharp),
    MenuOption(route: 'formScreen',name: 'Form Screen',screen: const FormScreen(),icon: Icons.four_g_plus_mobiledata_rounded),
    MenuOption(route: 'SliderScreen',name: 'Slider & Checks',screen: const SliderScreen(),icon: Icons.slow_motion_video_sharp),
    MenuOption(route: 'ListViewBuilderScreen',name: 'Infinite Scroll & Pull Refresh',screen: const ListViewBuilderScreen(),icon: Icons.build_circle_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    
      appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});


    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
