import 'package:flutter/services.dart';
    import 'package:flutter/material.dart';

    class PlatformWidget extends StatelessWidget {
      static const platform = MethodChannel('my_channel');
      Future<String> getPlatform() async {
        return await platform.invokeMethod('getPlatform');
      }

      @override
      Widget build(BuildContext context) {
        return FutureBuilder(
          future: getPlatform(),
          builder: (context, snapshot) => Text(snapshot.data ?? 'Unknown'),
        );
      }
    }