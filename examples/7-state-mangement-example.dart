import 'package:flutter/material.dart';
    import 'package:provider/provider.dart';

    class Counter with ChangeNotifier {
      int _count = 0;
      int get count => _count;
      void increment() {
        _count++;
        notifyListeners();
      }
    }

    class MyApp extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return ChangeNotifierProvider(
          create: (_) => Counter(),
          child: Consumer<Counter>(
            builder: (context, counter, _) => Scaffold(
              body: Center(child: Text('${counter.count}')),
              floatingActionButton: FloatingActionButton(
                onPressed: counter.increment,
                child: Icon(Icons.add),
              ),
            ),
          ),
        );
      }
    }