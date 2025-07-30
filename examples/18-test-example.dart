import 'package:flutter_test/flutter_test.dart';

    void main() {
      testWidgets('Widget Test', (tester) async {
        await tester.pumpWidget(MaterialApp(home: Text('Hello')));
        expect(find.text('Hello'), findsOneWidget);
      });
    }