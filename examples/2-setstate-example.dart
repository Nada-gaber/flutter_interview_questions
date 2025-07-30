import 'package:flutter/material.dart';

   class MyWidget extends StatefulWidget {
     @override
     _MyWidgetState createState() => _MyWidgetState();
   }

   class _MyWidgetState extends State<MyWidget> {
     bool _isVisible = true;
     @override
     Widget build(BuildContext context) {
       return Column(
         children: [
           if (_isVisible) Text('Visible'),
           ElevatedButton(
             onPressed: () => setState(() => _isVisible = !_isVisible),
             child: Text('Toggle'),
           ),
         ],
       );
     }
   }