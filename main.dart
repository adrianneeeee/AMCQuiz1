import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp( // #1 Material app: This is the main container for the whole app. It sets up the look, feel, and basic features of an application that follows Google's Material Design style.
    title: 'Week 1 - All 8 Widgets',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold( // #2 Scaffold: This is like the blueprint for a single screen. It gives you the basic structure like a place for an AppBar (the header), a body (the main content area), and often a bottomNavigationBar.
    appBar: AppBar(title: const Text('All Widgets')), //#3 AppBar: 
    body: Center( //#7 Center: This is a positioning widget that places its single child widget right in the middle of the space it has available.
      child: Container( //#8 Container: This is the general-purpose box. It can be used to hold a single child widget, and it's most useful for adding styling and space, like setting a color, padding, margins, or a specific size.
        padding: const EdgeInsets.all(20),
        child: Column( //#6 Column: This is a layout widget that arranges other widgets vertically (one on top of the other). If you put three text blocks in a column, they will stack up down the screen.
          children: [
            Row( //#5 Row: This is a layout widget that arranges other widgets horizontally (side-by-side). If you put three icons in a row, they will line up across the screen.
              children: [
                const Icon(Icons.star),
                const Text('Flutter'),  //#4 Text('Flutter'): This is the simplest way to display words, numbers, or sentences on the screen. The text you want to show goes inside the parentheses, like 'Flutter'.
              ],
            ),
          ],
        ),
      ),
    ),
  );
}