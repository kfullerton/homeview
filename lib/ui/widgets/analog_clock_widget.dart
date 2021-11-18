// @dart=2.9
import 'package:flutter_analog_clock/flutter_analog_clock.dart';
import 'package:flutter/material.dart';

class AnalogClock extends StatelessWidget {
  const AnalogClock({Key key, this.config}) : super(key: key);
  final Map config;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: config['left'],
        right: config['right'],
        top: config['top'],
        bottom: config['bottom'],
        width: config['width'],
        height: config['height'],
        // child: Container(
        // color: config['data']['fillcolor'],
        child: FlutterAnalogClock(
          dateTime: DateTime.now(),
          dialPlateColor: config['data']['dialPlateColor'],
          hourHandColor: config['data']['hourHandColor'],
          minuteHandColor: config['data']['minuteHandColor'],
          secondHandColor: config['data']['secondHandColor'],
          numberColor: config['data']['numberColor'],
          borderColor: config['data']['borderColor'],
          tickColor: config['data']['tickColor'],
          centerPointColor: config['data']['centerPointColor'],
          showBorder: config['data']['showBorder'],
          showTicks: config['data']['showMinuteHand'],
          showMinuteHand: config['data']['showMinuteHand'],
          showSecondHand: config['data']['showSecondHand'],
          showNumber: config['data']['showNumber'],
          borderWidth: config['data']['borderWidth'],
          hourNumberScale: config['data']['hourNumberScale'],
          hourNumbers: config['data']['hourNumbers'],
          isLive: true,
          decoration: const BoxDecoration(),
          child: Text(config['data']['text']),
        ));
  }
}
