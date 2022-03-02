import 'package:flutter/material.dart';
import 'package:homeview/ui/widgets/text_box.dart';
import 'package:homeview/ui/widgets/analog_clock_widget.dart';
import 'package:homeview/ui/widgets/iframeweather.dart';

class WidgetList {
  List<Map> dlist = [
    {
      "bottom": 0,
      "left": 0,
      "height": 250,
      "width": 250,
      "type": "text",
      "data": {
        "text": "Green 2",
        "fillcolor": Colors.green[300],
        "textcolor": Colors.white
      }
    },
    {
      "bottom": 0,
      "right": 0,
      "height": 250,
      "width": 250,
      "type": "text",
      "data": {
        "text": "Blue 2",
        "fillcolor": Colors.blue[300],
        "textcolor": Colors.black
      }
    },
    {
      "top": 0,
      "left": 0,
      "height": 250,
      "width": 250,
      "type": "analog_clock",
      "data": {
        "text": "",
        "dialPlateColor": Colors.black,
        "hourHandColor": Colors.white,
        "minuteHandColor": Colors.white,
        "secondHandColor": Colors.white,
        "numberColor": Colors.green,
        "borderColor": Colors.white,
        "tickColor": Colors.white,
        "centerPointColor": Colors.white,
        "showBorder": true,
        "showTicks": false,
        "showMinuteHand": true,
        "showSecondHand": true,
        "showNumber": true,
        "borderWidth": 1.0,
        "hourNumberScale": 1,
        "hourNumbers": [
          '',
          '',
          'III',
          '',
          '',
          'VI',
          '',
          '',
          'IX',
          '',
          '',
          'XII'
        ]
      }
    },
    {
      "top": 0,
      "right": 0,
      "height": 350,
      "width": 550,
      "type": "iframeweather",
      "data": {
        "text": "Blue",
        "fillcolor": Colors.blue[300],
        "textcolor": Colors.black
      }
    }
  ];

  List<Widget> getWidgetList() {
    List<Widget> rlist = [];

    for (var x in dlist) {
      switch (x['type']) {
        case 'text':
          {
            rlist.add(TextWidget(config: x));
          }
          break;
        case 'analog_clock':
          {
            rlist.add(AnalogClock(config: x));
          }
          break;
        case 'iframeweather':
          {
            rlist.add(IFrameWeather(config: x));
          }
          break;
      }
    }
    return rlist;
  }
}
