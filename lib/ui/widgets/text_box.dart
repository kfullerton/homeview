import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key, required this.config}) : super(key: key);

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
        child: Container(
          color: config['data']['fillcolor'],
          child: Text(
            config['data']['text'],
            style: TextStyle(color: config['data']['textcolor'], fontSize: 20),
          ),
        ));
  }
}
