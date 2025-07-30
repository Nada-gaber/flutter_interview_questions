import 'package:flutter/material.dart';

   class Counter extends StatefulWidget {
     @override
     _CounterState createState() => _CounterState();
   }

   class _CounterState extends State<Counter> {
     int _count = 0;
     @override
     Widget build(BuildContext context) {
       return ElevatedButton(
         onPressed: () => setState(() => _count++),
         child: Text('Count: $_count'),
       );
     }
   }