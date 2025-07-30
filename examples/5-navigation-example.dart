import 'package:flutter/material.dart';

   class FirstScreen extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         body: Center(
           child: ElevatedButton(
             onPressed: () => Navigator.push(
               context,
               MaterialPageRoute(builder: (_) => SecondScreen()),
             ),
             child: Text('Go to Second Screen'),
           ),
         ),
       );
     }
   }

   class SecondScreen extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         body: Center(
           child: ElevatedButton(
             onPressed: () => Navigator.pop(context),
             child: Text('Back'),
           ),
         ),
       );
     }
   }