import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Stack Widget',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,

            children: [
              Container(height: 200, width: 200, color: Colors.blue),
              Container(height: 150, width: 150, color: Colors.orange),
              Container(height: 100, width: 100, color: Colors.green),
              Icon(Icons.star, color: Colors.white, size: 50),
              Positioned(
                bottom: 10,
                right: 10,
                child: Text(
                  'Flutter',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Icon(Icons.favorite, color: Colors.white, size: 20),
              ),
            ],
          ),
          Stack(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d',
                ),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.green, width: 3),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.green, width: 3),
                ),
              ),
              Positioned(
                top: 100,
                right: 0,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.green,
                  child: Icon(Icons.check, color: Colors.white, size: 10),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
