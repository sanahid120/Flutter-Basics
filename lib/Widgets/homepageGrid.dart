import 'package:flutter/material.dart';

class Homepagegrid extends StatelessWidget {
  const Homepagegrid({
    super.key,
    required this.text,
    required this.logoUrl,
    required this.onTap,
    this.backgroundColor = Colors.blue,
  });
  
  final String text;
  final IconData logoUrl;
  final VoidCallback onTap;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 5,
        color: backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(logoUrl, color: Colors.white, size: 50),
              SizedBox(height: 10),
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
