import 'package:flutter/material.dart';

class AlertDialougeWidget extends StatelessWidget {
  const AlertDialougeWidget({super.key});

  // Function to show AlertDialog
  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text('Alert Dialog'),
          content: Text('This is a basic alert dialog with actions.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('You clicked OK')));
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  // Function to show SimpleDialog
  void _showSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text('Simple Dialog'),
          children: [
            SimpleDialogOption(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Option 1 selected')));
                Navigator.pop(context);
              },
              child: Text('Option 1'),
            ),
            SimpleDialogOption(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Option 2 selected')));
                Navigator.pop(context);
              },
              child: Text('Option 2'),
            ),
            SimpleDialogOption(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Option 3 selected')));
                Navigator.pop(context);
              },
              child: Text('Option 3'),
            ),
          ],
        );
      },
    );
  }

  // Function to show ConfirmationDialog
  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Confirmation'),
          content: Text('Are you sure you want to delete this item?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('No'),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Item deleted')));
                Navigator.pop(context);
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  // Function to show BottomSheet
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Bottom Sheet Menu',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text('Edit'),
                onTap: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('Edit selected')));
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
                onTap: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('Share selected')));
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('Delete'),
                onTap: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('Delete selected')));
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.close),
                title: Text('Close'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _showAlertDialog(context);
              },
              child: Text('Show Alert Dialog'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showSimpleDialog(context);
              },
              child: Text('Show Simple Dialog'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showConfirmationDialog(context);
              },
              child: Text('Show Confirmation Dialog'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showBottomSheet(context);
              },
              child: Text('Show Bottom Sheet'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: true,

                  builder: (context) {
                    return AlertDialog(
                      content: Row(
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(width: 20),
                          Text('Please wait Loading... '),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Text('Progress button'),
            ),
          ],
        ),
      ),
    );
  }
}
