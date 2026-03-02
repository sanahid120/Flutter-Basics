import 'package:flutter/material.dart';

class AlertDialougeWidget extends StatelessWidget {
  const AlertDialougeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Alert Dialouge Widget',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        centerTitle: true,
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Alert Dialouge'),
                  content: Text('This is an alert dialouge.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Cancel'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('You clicked OK')),
                        );
                        Navigator.pop(context);
                      },
                      child: Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Show Alert Dialouge'),
        ),
      ),
    );
  }
}
