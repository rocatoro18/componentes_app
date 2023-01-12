import 'package:flutter/material.dart';
import 'package:componentes_app/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'ESTE ES UN TEXTO DE PRUEBA QUE SE UTILIZA PARA REALIZAR PRUEBAS DEL CARDVIEW'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    //style: TextButton.styleFrom(foregroundColor: Colors.indigo),
                    child: const Text('Cancelar')),
                TextButton(
                    onPressed: () {},
                    //style: TextButton.styleFrom(foregroundColor: Colors.indigo),
                    child: const Text('Aceptar'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
