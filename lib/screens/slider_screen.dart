import 'package:componentes_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider Screen')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
                min: 20,
                max: 400,
                value: _sliderValue,
                activeColor: AppTheme.primary,
                onChanged: (value) {
                  _sliderValue = value;
                  print(value);
                  setState(() {});
                }),
            Image(
              image: const NetworkImage(
                  'https://pbs.twimg.com/ext_tw_video_thumb/1364673390825644032/pu/img/a5YUPu_x1qOoye93.jpg'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
