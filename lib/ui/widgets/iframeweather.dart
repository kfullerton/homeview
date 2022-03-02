import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';

class IFrameWeather extends StatelessWidget {
  const IFrameWeather({Key? key, required this.config}) : super(key: key);
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
            child: WebViewX(
                height: config['height'],
                width: config['width'],
                initialSourceType: SourceType.html,
                initialContent: """<html>
                <div id="openweathermap-widget-11"></div>
                <script src='https://openweathermap.org/themes/openweathermap/assets/vendor/owm/js/d3.min.js'>
                </script><script>window.myWidgetParam ? window.myWidgetParam : window.myWidgetParam = [];  window.myWidgetParam.push({id: 11,cityid: '4763793',appid: '',units: 'imperial',containerid: 'openweathermap-widget-11',  });  (function() {var script = document.createElement('script');script.async = true;script.charset = "utf-8";script.src = "//openweathermap.org/themes/openweathermap/assets/vendor/owm/js/weather-widget-generator.js";var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(script, s);  })();</script>
               </html>""")
            //
            ));
  }
}
