import 'package:flutter/material.dart';
import 'Widgets/homepageGrid.dart';
import 'gridView.dart';
import 'stack.dart';
import 'input_fields.dart';
import 'listView.dart';
import 'image.dart';
import 'text_and_buttons.dart';
import 'container.dart';
import 'formValidation.dart';
import 'alert.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // List of grid items with their properties and corresponding pages
    final gridItems = [
      {
        'text': 'GridView',
        'icon': Icons.grid_4x4,
        'color': Colors.blue,
        'page': const GridViewClass(),
      },
      {
        'text': 'Stack',
        'icon': Icons.layers,
        'color': Colors.purple,
        'page': const StackWidget(),
      },
      {
        'text': 'Input Fields',
        'icon': Icons.input,
        'color': Colors.green,
        'page': const TextInputField(),
      },
      {
        'text': 'ListView',
        'icon': Icons.list,
        'color': Colors.orange,
        'page': const ListviewClass(),
      },
      {
        'text': 'Image',
        'icon': Icons.image,
        'color': Colors.red,
        'page': const ImageClass(),
      },
      {
        'text': 'Text & Buttons',
        'icon': Icons.text_fields,
        'color': Colors.teal,
        'page': const TextAndButtons(),
      },
      {
        'text': 'Container',
        'icon': Icons.crop_square,
        'color': Colors.indigo,
        'page': const ContainerClass(),
      },
      {
        'text': 'Form Validation',
        'icon': Icons.check_circle,
        'color': Colors.pink,
        'page': const FormFieldClass(),
      },
      {
        'text': 'Alert Dialouge',
        'icon': Icons.warning,
        'color': Colors.brown,
        'page': const AlertDialougeWidget(),
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Flutter Basics'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: gridItems.length,
          itemBuilder: (context, index) {
            final item = gridItems[index];
            return Homepagegrid(
              text: item['text'] as String,
              logoUrl: item['icon'] as IconData,
              backgroundColor: item['color'] as Color,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => item['page'] as Widget,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
