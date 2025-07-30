import 'package:flutter/material.dart';

    class AnimatedBox extends StatefulWidget {
      @override
      _AnimatedBoxState createState() => _AnimatedBoxState();
    }

    class _AnimatedBoxState extends State<AnimatedBox> {
      bool _big = false;
      @override
      Widget build(BuildContext context) {
        return GestureDetector(
          onTap: () => setState(() => _big = !_big),
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: _big ? 200 : 100,
            height: _big ? 200 : 100,
            color: Colors.blue,
          ),
        );
      }
    }