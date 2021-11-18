import 'package:flutter/material.dart';
import 'package:homeview/service/widger_list.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  WidgetList wclass = WidgetList();

  List<Widget> wlist = [];
  @override
  void initState() {
    wlist = wclass.getWidgetList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.black,
          child: Stack(children: wlist),
        ));
  }
}
