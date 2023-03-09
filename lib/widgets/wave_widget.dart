import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class WaveWidgetCustom extends StatelessWidget {
  const WaveWidgetCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WaveWidget(
      config: CustomConfig(
        colors: [const Color.fromRGBO(25, 25, 25, 1)],
        durations: [40000],
        heightPercentages: [0.01],
      ),
      // backgroundColor: const Color.fromRGBO(252, 206, 182, 1),
      backgroundColor: const Color.fromRGBO(68, 177, 225, 0.9),
      size: const Size(double.infinity, 600),
      waveAmplitude: 20,
    );
  }
}
