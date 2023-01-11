import 'package:componentes_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  final options = const [
    'Halo',
    'Fallout',
    'Skyrim',
    'Cyberpunk 2077',
    'Minecraft',
    'GTA V'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ListView Tipo 1')),
        body: ListView(
          children: [
            /// ... spread operator?
            ...options
                .map((game) => ListTile(
                      title: Text(game),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppTheme.primary,
                      ),
                    ))
                .toList()
            /*ListTile(
              title: Text('Hola Mundo'),
            ),
            */
          ],
        ));
  }
}
