import 'package:flutter/material.dart';

    class LifecycleWidget extends StatefulWidget {
      @override
      _LifecycleWidgetState createState() => _LifecycleWidgetState();
    }

    class _LifecycleWidgetState extends State<LifecycleWidget> {
      @override
      void initState() {
        super.initState();
        print('initState');
      }

      @override
      void didChangeDependencies() {
        super.didChangeDependencies();
        print('didChangeDependencies');
      }

      @override
      Widget build(BuildContext context) {
        return Text('Widget Lifecycle');
      }

      @override
      void dispose() {
        print('dispose');
        super.dispose();
      }
    }