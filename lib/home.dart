import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tinder'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Welcome to the Home Page!',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'This is the body content, where you can display information, images, or other UI elements relevant to your app.',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.fire, color: Colors.orange), label: 'matches'),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.star, color: Colors.black), label: 'star'),
          BottomNavigationBarItem(icon: Icon(Icons.message, color: Colors.black), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.black), label: 'Profile'),
        ],
        onTap: (index) {
          print("Selected Index: $index");
        },
      ),
    );
  }
}
