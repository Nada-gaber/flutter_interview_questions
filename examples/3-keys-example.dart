import 'package:flutter/material.dart';

   class ListWithKeys extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return ListView(
         children: [
           ListTile(key: ValueKey('item1'), title: Text('Item 1')),
           ListTile(key: ValueKey('item2'), title: Text('Item 2')),
         ],
       );
     }
   }