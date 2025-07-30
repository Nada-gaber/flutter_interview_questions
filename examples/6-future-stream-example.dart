import 'package:flutter/material.dart';
   import 'dart:async';

   class AsyncWidget extends StatelessWidget {
     Future<String> fetchData() async => 'Data';
     Stream<int> countStream() => Stream.periodic(Duration(seconds: 1), (i) => i);

     @override
     Widget build(BuildContext context) {
       return Column(
         children: [
           FutureBuilder(
             future: fetchData(),
             builder: (context, snapshot) => Text(snapshot.data ?? 'Loading'),
           ),
           StreamBuilder(
             stream: countStream(),
             builder: (context, snapshot) => Text('${snapshot.data ?? 0}'),
           ),
         ],
       );
     }
   }