import 'package:flutter/material.dart';
import 'package:componentes_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageUrl:
                  'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2022/10/starfield-landscape-art.jpg',
              imageDescription: 'Starfield',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
                imageUrl:
                    'https://www.gameinformer.com/sites/default/files/styles/full/public/2022/06/16/14554015/starfield.jpg',
                imageDescription: 'Starfield Xbox Series X'),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
                imageUrl:
                    'https://cdn.mos.cms.futurecdn.net/U6uCFXDwMrHdThiNstzJp7.jpg',
                imageDescription: 'Starfield Xbox Series S'),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
                imageUrl:
                    'https://www.pcgamesn.com/wp-content/sites/pcgamesn/2022/05/starfield-release-date-window.jpg')
          ],
        ));
  }
}
