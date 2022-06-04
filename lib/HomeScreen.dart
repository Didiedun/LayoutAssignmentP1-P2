import 'package:flutter/material.dart';
import 'body.dart';
// ignore: camel_case_types
class Home_Screen extends StatefulWidget {
  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

// ignore: camel_case_types
class _Home_ScreenState extends State<Home_Screen>
    with SingleTickerProviderStateMixin {
  final colorstheme = Color(0xff4b4b87);

  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 0)
      ..addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Didiedun Home',
          style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold, 
          color: Colors.black
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: false,
      ),
      body: Column(
        children: [
          
          Container(
            alignment: Alignment.bottomLeft,
            child: TabBar(
                isScrollable: true,
                indicatorPadding: EdgeInsets.all(10),
                labelColor: Colors.black87,
                unselectedLabelColor: Colors.grey.shade400,
                labelStyle: TextStyle(fontSize: 15),
                labelPadding:
                    EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                controller: _tabController,
                tabs: [
                  Text('All'),
                  Text('Living Room'),
                  Text('Bedroom'),
                ]),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController, children: [
              SensorScreenBody(),
              Center(
                child: 
                Text(
                  'Add a device'
                )
              ),
              Center(
                child: 
                Text(
                  'Add a device'
                )
              ),
            ]),
          )
        ],
      ),
    );
  }
}
