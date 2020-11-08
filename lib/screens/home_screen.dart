import 'package:flutter/material.dart';
import 'package:my_university/screens/books_screen.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, BooksScreen.id);
        },
        child: Icon(Icons.book),
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
