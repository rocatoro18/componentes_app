import 'package:componentes_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider Screen')),
      body: Column(
        children: [
          Slider.adaptive(
              min: 20,
              max: 400,
              value: _sliderValue,
              activeColor: AppTheme.primary,
              onChanged: _sliderEnable
                  ? (value) {
                      _sliderValue = value;
                      print(value);
                      setState(() {});
                    }
                  : null),
          Checkbox(
              activeColor: AppTheme.primary,
              value: _sliderEnable,
              onChanged: (value) {
                _sliderEnable = value ?? true;
                setState(() {});
              }),
          Switch(
              value: _sliderEnable,
              activeColor: AppTheme.primary,
              onChanged: (value) {
                setState(() {
                  _sliderEnable = value;
                });
              }),
          CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnable,
              onChanged: (value) {
                setState(() {
                  _sliderEnable = value ?? true;
                });
              }),
          SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnable,
              onChanged: (value) {
                setState(() {
                  _sliderEnable = value;
                });
              }),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://parabolicarc.com/wp-content/uploads/2022/04/Starship_Super_Heavy_full_stack_vertical.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
