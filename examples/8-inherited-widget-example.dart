import 'package:flutter/material.dart';

    class MyData extends InheritedWidget {
      final int data;
      MyData({required this.data, required Widget child}) : super(child: child);
      @override
      bool updateShouldNotify(MyData old) => data != old.data;
      static MyData of(BuildContext context) =>
          context.dependOnInheritedWidgetOfExactType<MyData>()!;
    }

    class MyWidget extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MyData(
          data: 42,
          child: Text('${MyData.of(context).data}'),
        );
      }
    }