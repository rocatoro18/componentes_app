import 'package:componentes_app/models/models.dart';
import 'package:componentes_app/screens/screens.dart';

import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    /*MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),*/
    MenuOption(
        route: 'listview1',
        name: 'ListView Tipo 1',
        screen: const ListView1Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'listview2',
        name: 'ListView Tipo 2',
        screen: const ListView2Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'alert',
        name: 'Alertas - Alerts',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOption(
        route: 'card',
        name: 'Tarjetas - Cards',
        screen: const CardScreen(),
        icon: Icons.credit_card),
    MenuOption(
        route: 'avatar',
        name: 'Avatar',
        screen: const AvatarScreen(),
        icon: Icons.person),
    MenuOption(
        route: 'animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.animation),
    MenuOption(
        route: 'inputs',
        name: 'Text Inputs & Forms',
        screen: const InputsScreen(),
        icon: Icons.input),
    MenuOption(
        route: 'slider',
        name: 'Slider',
        screen: const SliderScreen(),
        icon: Icons.slideshow_rounded)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  /*
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => HomeScreen(),
    'listview1': (BuildContext context) => ListView1Screen(),
    'listview2': (BuildContext context) => ListView2Screen(),
    'alert': (BuildContext context) => AlertScreen(),
    'card': (BuildContext context) => CardScreen()
  };
  */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
