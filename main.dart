import 'package:flutter/material.dart';


void main() {
runApp(const MyApp());
}


class MyApp extends StatelessWidget {
const MyApp({super.key});


@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Flutter Web + Node Server',
theme: ThemeData(primarySwatch: Colors.indigo),
home: const HomePage(),
);
}
}


class HomePage extends StatefulWidget {
const HomePage({super.key});


@override
State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
int _counter = 0;


void _increment() {
setState(() => _counter++);
}


@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: const Text('Flutter Web served by Node')),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const Text('Hello — this Flutter app is running as web assets.'),
const SizedBox(height: 12),
Text('Button tapped: \$_counter times', style: const TextStyle(fontSize: 18)),
const SizedBox(height: 12),
ElevatedButton(onPressed: _increment, child: const Text('Tap me')),
],
),
),
);
}
}