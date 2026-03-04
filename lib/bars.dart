import 'package:flutter/material.dart';

class BarsWidgets extends StatelessWidget {
  const BarsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        //Tab bar
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'Bars Widgets',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          bottom: TabBar(
            isScrollable: false,
            //indicatorColor: Colors.white,
            //indicatorWeight: 4,
            indicator: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            indicatorPadding: EdgeInsetsGeometry.all(5),
            tabs: [
              Tab(text: 'home', icon: Icon(Icons.home)),
              Tab(text: 'search', icon: Icon(Icons.search)),
              Tab(text: 'settings', icon: Icon(Icons.settings)),
            ],
          ),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Home Tab'),
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Home Button Pressed'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    child: Text('Press Me'),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Search Tab'),
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Search Button Pressed'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    child: Text('Press Me'),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Settings Tab'),
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Settings Button Pressed'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    child: Text('Press Me'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
