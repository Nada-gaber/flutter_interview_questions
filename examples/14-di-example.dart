import 'package:flutter/material.dart';
    import 'package:provider/provider.dart';

    class MyService {
      String getData() => 'Service Data';
    }

    class MyApp extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Provider(
          create: (_) => MyService(),
          child: Consumer<MyService>(
            builder: (context, service, _) => Text(service.getData()),
          ),
        );
      }
    }