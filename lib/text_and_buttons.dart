import 'package:flutter/material.dart';

class TextAndButtons extends StatelessWidget {
  const TextAndButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
        title: Text("Text and Buttons"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Buttons
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Elevated'),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Elevated'),
                  ),
                  SizedBox(height: 30),

                  SizedBox(
                    height: 100,
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {},
                      child: Text('SizeBox Elevated'),
                    ),
                  ),
                  SizedBox(height: 30),

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(),
                    onPressed: () {},
                    child: Text('Outlined'),
                  ),
                  SizedBox(height: 30),

                  TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Text Button Pressed'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    child: Text('Text Button'),
                  ),
                  SizedBox(height: 30),

                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Row(
                            children: [
                              Icon(Icons.delete, color: Colors.white),
                              SizedBox(width: 20),
                              Text('Delete Button Pressed'),
                            ],
                          ),

                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    icon: Icon(Icons.delete),
                  ),

                  // GestureDetector
                  GestureDetector(
                    onTap: () => print('Tapped'),
                    onDoubleTap: () => print('Double Tapped'),
                    onLongPress: () => print('Long Pressed'),
                    onDoubleTapCancel: () => print('Double Tap Cancelled'),
                    onDoubleTapDown: (details) =>
                        print('Double Tap Down: $details'),

                    child: Container(
                      height: 100,
                      width: 500,
                      color: Colors.green,
                      child: Center(
                        child: Text(
                          'THis is a Gesture Detector text. and also you can use InkWell too. a text or object that can detect gestures like tap, double tap, long press etc.',
                          style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Row(
                            children: [
                              CircularProgressIndicator(),
                              SizedBox(width: 20),
                              Text('Loading...'),
                            ],
                          ),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    child: Icon(Icons.add),

                    elevation: 10,
                  ),

                  // Text('THis is a sample text',
                  //   style: TextStyle(
                  //       color: Colors.blue,
                  //       backgroundColor: Colors.green,
                  //       fontSize: 20,
                  //       fontWeight: FontWeight.w200
                  //
                  //   ),),
                  // Text('THis is a sample text',
                  //   style: TextStyle(
                  //       color: Colors.blue,
                  //       backgroundColor: Colors.green,
                  //       fontSize: 20,
                  //       fontWeight: FontWeight.w200
                  //
                  //
                  //
                  //   ),),
                  // Text('THis is a sample text',
                  //   style: TextStyle(
                  //       color: Colors.blue,
                  //       backgroundColor: Colors.green,
                  //       fontSize: 20,
                  //       fontWeight: FontWeight.w200
                  //
                  //   ),),
                  // Text('THis is a sample text',
                  //   style: TextStyle(
                  //       color: Colors.blue,
                  //       backgroundColor: Colors.green,
                  //       fontSize: 20,
                  //       fontWeight: FontWeight.w200
                  //
                  //   )
                ],
                // child: Column(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   children: [
                //     Text('THis is a sample text',
                //       style: TextStyle(
                //           color: Colors.blue,
                //           backgroundColor: Colors.green,
                //           fontSize: 20,
                //           fontWeight: FontWeight.w200
                //
                //       ),)
                //   ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
