import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<Widget> _tabView = [
    Center(
      child: Text("First"),
    ),
    Center(
      child: Text("Second"),
    ),
    Center(
      child: Text("Third"),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabView.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar View"),

          //-----------------------------------
          //  name navigation
          //-----------------------------------
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                ),
              ),
              Tab(
                icon: Icon(Icons.school),
              ),
              Tab(
                icon: Icon(Icons.local_hospital),
              ),
            ],
          ),

          //-----------------------------------
          //  circle notation - ooo -
          //-----------------------------------
          // bottom: PreferredSize(
          //   child: Container(
          //     child: TabPageSelector(
          //       controller: _tabController,
          //       color: Colors.blue,
          //       selectedColor: Colors.white,
          //     ),
          //   ),
          //   preferredSize: Size.fromHeight(40.0),
          // ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.yellow[100],
              child: Center(
                child: Icon(
                  Icons.home,
                  size: 100.0,
                ),
              ),
            ),
            Container(
              color: Colors.red[100],
              child: Center(
                child: Icon(
                  Icons.school,
                  size: 100.0,
                ),
              ),
            ),
            Container(
              color: Colors.blue[100],
              child: Center(
                child: Icon(
                  Icons.local_hospital,
                  size: 100.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
