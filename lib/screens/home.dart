import 'package:flutter/material.dart';
import 'package:triller_zone/utils/constants.dart';
import 'package:triller_zone/widgets/appbar.dart';
import 'package:triller_zone/widgets/body.dart';
import 'package:triller_zone/widgets/drawer.dart';
import 'package:triller_zone/widgets/fab.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: tabs.length,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        context,
        tabs,
        _tabController,
      ),
      drawer: const MyDrawer(),
      body:  MyBody(
        controller: _tabController,
      ),
      floatingActionButton: const MyFAB(),
    );
  }
}
