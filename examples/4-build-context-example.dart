import 'package:flutter/material.dart';

   class MyWidget extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return ElevatedButton(
         onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(content: Text('Hello')),
         ),
         child: Text('Show SnackBar'),
       );
     }
   }