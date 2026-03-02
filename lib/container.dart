import 'package:flutter/material.dart';

class ContainerClass extends StatelessWidget {
  const ContainerClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Container Widget',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            height: 200,
            width: 200,
            alignment: Alignment.center,

            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withAlpha(5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
                BoxShadow(
                  color: Colors.red.withAlpha(5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: Text(
                'Flutter Container',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),

            /* You can also use padding and margin in container widget
        padding: EdgeInsets.all(16), // adds padding inside the container */
          ),

          SizedBox(height: 20),
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              height: 200,
              width: 200,
              alignment: Alignment.center,
              child: Text(
                'Flutter Card',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
