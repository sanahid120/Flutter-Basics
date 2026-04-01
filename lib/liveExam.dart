import 'package:flutter/material.dart';

class LiveExam extends StatelessWidget {
  const LiveExam({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> contacts = [
      'Hasan',
      'Rahim',
      'Karim',
      'Jamal',
      'Sakib',
      'Rakib',
      'Momin',
      'Shanta',
      'Jahid',
      'Rabbi',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact List',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.grey[600],
      ),

      body: Column(
        children: [
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              hintText: 'Hasan',
              prefixIcon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              hintText: '0185565564',
              prefixIcon: Icon(Icons.phone),
            ),
          ),
          SizedBox(height: 10),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {},
              child: Text('add'),
            ),
          ),
          SizedBox(height: 30),
          Expanded(
            child: ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  tileColor: Colors.grey[200],
                  leading: Icon(Icons.person),
                  title: Text(contacts[index]),
                  subtitle: Text('0185565564'),
                  trailing: Icon(Icons.phone, color: Colors.blue),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
