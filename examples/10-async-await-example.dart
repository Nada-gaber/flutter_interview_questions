import 'package:flutter/material.dart';

    class AsyncWidget extends StatelessWidget {
      Future<String> fetchData() async {
        await Future.delayed(Duration(seconds: 1));
        return 'Data';
      }

      @override
      Widget build(BuildContext context) {
        return FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) => Text(snapshot.data ?? 'Loading'),
        );
      }
    }