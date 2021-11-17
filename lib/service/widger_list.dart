import 'package:flutter/material.dart';
import 'package:homeview/ui/widgets/text_box.dart';

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
      "type": "text",
      "data": {
        "text": "Green",
        "fillcolor": Colors.green[300],
        "textcolor": Colors.white
      }
    },
    {
      "top": 0,
      "right": 0,
      "height": 250,
      "width": 250,
      "type": "text",
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
            // rlist.add(Positioned(
            //     left: x['left'],
            //     right: x['right'],
            //     top: x['top'],
            //     bottom: x['bottom'],
            //     width: x['width'],
            //     height: x['height'],
            //     child: TextBox(
            //         text: x['data']['text'],
            //         textColor: x['data']['textcolor'],
            //         fillColor: x['data']['fillcolor'])));
            rlist.add(TextWidget(config: x));
          }
          break;
      }
    }
    return rlist;
  }
}
