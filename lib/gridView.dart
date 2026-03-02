import 'package:flutter/material.dart';

class GridViewClass extends StatelessWidget {
  const GridViewClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'GridView Widget',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GridView.count(
            crossAxisCount: 2,
            children: List.generate(9, (index) {
              return Card(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Item $index',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
