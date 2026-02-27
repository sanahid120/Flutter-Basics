import 'package:flutter/material.dart';

class ImageClass extends StatelessWidget {
  const ImageClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Image Widget',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc9APxkj0xClmrU3PpMZglHQkx446nQPG6lA&s',

            height: 200,
            width: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Image.asset(
            'assets/images/flutter_logo.png',

            /* create an asset folder to store the images,
             and then go to bubspec.yaml file and 
             add the path of the image in the assets section*/
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}
