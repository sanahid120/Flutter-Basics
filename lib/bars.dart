import 'package:flutter/material.dart';

class BarsWidgets extends StatefulWidget {
  const BarsWidgets({super.key});

  @override
  State<BarsWidgets> createState() => _BarsWidgetsState();
}

class _BarsWidgetsState extends State<BarsWidgets> {
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
            /*indicator: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0),
            ),*/
            indicatorPadding: EdgeInsets.all(5),
            indicatorColor: Colors.white,
            indicatorAnimation: TabIndicatorAnimation.elastic,
            labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            tabs: [
              // you can also use customized widgets instead of text and icons, just make sure to wrap them in a Tab widget
              Tab(text: 'home', icon: Icon(Icons.home)),
              Tab(text: 'search', icon: Icon(Icons.search)),
              Tab(text: 'settings', icon: Icon(Icons.settings)),
            ],
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                //decoration: BoxDecoration(color: Colors.orange),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.yellowAccent,

                      child: Text(
                        'SA',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Asfakunnobi Nahid',
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                  ],
                ),
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Home Drawer Item Pressed'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
              ),
              Divider(),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                leading: Icon(Icons.search),
                title: Text('Search'),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Search Drawer Item Pressed'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
              ),
              Divider(),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                leading: Icon(Icons.menu),
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Settings Drawer Item Pressed'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.orange),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.yellowAccent,
                      child: Text(
                        'SA',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Asfakunnobi Nahid',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Home End Drawer Item Pressed'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
              ),
              Divider(),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                leading: Icon(Icons.search),
                title: Text('Search'),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Search End Drawer Item Pressed'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
              ),
              Divider(),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                leading: Icon(Icons.menu),
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Settings End Drawer Item Pressed'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
              ),
            ],
          ),
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
