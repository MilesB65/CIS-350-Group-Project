import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Dictionary App',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Dictionary App'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: Container(
          width: 300.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: Colors.transparent, // No fill
            border: Border.all(
              color: Colors.red, // Border color
              width: 2.0, // Border thickness
            ),
            borderRadius: BorderRadius.circular(8.0), // Rounded corners
          ),
          child: const Center(
            child: Text('Search Word Here'),
          ),
        ),
      ),
    );
  }
}
