import 'package:flutter/material.dart';

    class AlignmentWidget extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Item 1'),
            Text('Item 2'),
          ],
        );
      }
    }