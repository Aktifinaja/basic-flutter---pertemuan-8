import 'package:eight_meet/screen/tabs/car.dart';
import 'package:eight_meet/screen/tabs/plane.dart';
import 'package:eight_meet/screen/tabs/train.dart';
import 'package:flutter/material.dart';

class TabbarScreen extends StatefulWidget {
  const TabbarScreen({Key? key}) : super(key: key);

  static const String route = 'tabbar_screen';

  @override
  State<TabbarScreen> createState() => _TabbarScreenState();
}

class _TabbarScreenState extends State<TabbarScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Widget> listOfTabs = const <Widget>[
    Text('Car'),
    Text('Train'),
    Text('Plane'),
  ];

  @override
  void initState() {
    _tabController = TabController(length: listOfTabs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabbar Screen'),
        bottom: TabBar(
          controller: _tabController,
          tabs: listOfTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Car(),
          Train(),
          Plane(),
        ],
      ),
    );
  }
}
