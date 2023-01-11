import 'package:componentes_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

  final options = const [
    'Halo',
    'Fallout',
    'Skyrim',
    'Cyberpunk 2077',
    'Minecraft',
    'GTA V',
    'Assasins Creed',
    'The Legend of Zelda Breath of the Wild',
    'Super Smash Bros Ultimate',
    'God of War',
    'Spiderman',
    'Call of Duty',
    'FIFA'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ListView Tipo 2')),
        body: ListView.separated(
            itemCount: options.length,
            itemBuilder: (context, index) => ListTile(
                  title: Text(options[index]),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppTheme.primary,
                  ),
                  onTap: () {
                    final game = options[index];
                    print(game);
                  },
                ),
            separatorBuilder: (_, __) => const Divider()));
  }
}
