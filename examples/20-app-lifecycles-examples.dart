import 'package:flutter/material.dart';

    class LifecycleApp extends StatefulWidget {
      @override
      _LifecycleAppState createState() => _LifecycleAppState();
    }

    class _LifecycleAppState extends State<LifecycleApp> with WidgetsBindingObserver {
      @override
      void initState() {
        super.initState();
        WidgetsBinding.instance.addObserver(this);
      }

      @override
      void didChangeAppLifecycleState(AppLifecycleState state) {
        print('State: $state');
      }

      @override
      Widget build(BuildContext context) {
        return Scaffold(body: Text('App Lifecycle'));
      }

      @override
      void dispose() {
        WidgetsBinding.instance.removeObserver(this);
        super.dispose();
      }
    }