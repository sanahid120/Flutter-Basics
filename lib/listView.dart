import 'package:flutter/material.dart';

class ListviewClass extends StatelessWidget {
  const ListviewClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'ListView Widget',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onLongPress: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Long pressed on item ${index + 1}'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },

              leading: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  '${index + 1}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              title: Text('Item ${index + 1}'),
              subtitle: Text('Subtitle for item ${index + 1}'),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.call),
                color: Colors.orange,
              ),
            ),
          );
        },
      ),

      /* 
      ListView.separated(
        itemCount: 20,
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey,
          thickness: 1,
          
          ),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text(
                '${index + 1}',
                style: TextStyle(color: Colors.white),
              ),
            ),
            title: Text('Item ${index + 1}'),
            subtitle: Text('Subtitle for item ${index + 1}'),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.call),
              color: Colors.orange,
            ),
          );
        },
      ),*/

      /*ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            subtitle: Text('Go to home screen'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            subtitle: Text('Go to settings screen'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            subtitle: Text('Go to profile screen'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),*/
    );
  }
}
