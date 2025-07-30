import 'package:flutter/material.dart';
    import 'package:flutter_localizations/flutter_localizations.dart';

    class MyApp extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          localizationsDelegates: [GlobalMaterialLocalizations.delegate],
          supportedLocales: [Locale('en'), Locale('es')],
          home: Scaffold(
            body: Text(Localizations.localeOf(context).languageCode),
          ),
        );
      }
    }