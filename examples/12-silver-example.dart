import 'package:flutter/material.dart';

    class SliverWidget extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text('Sliver AppBar'),
              floating: true,
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                ListTile(title: Text('Item 1')),
                ListTile(title: Text('Item 2')),
              ]),
            ),
          ],
        );
      }
    }