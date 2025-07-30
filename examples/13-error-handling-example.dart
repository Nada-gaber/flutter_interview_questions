import 'package:flutter/material.dart';
    import 'package:http/http.dart' as http;

    class ApiWidget extends StatelessWidget {
      Future<String> fetchData() async {
        try {
          final response = await http.get(Uri.parse('https://api.example.com'));
          if (response.statusCode == 200) return response.body;
          throw Exception('Failed to load');
        } catch (e) {
          throw Exception('Error: $e');
        }
      }

      @override
      Widget build(BuildContext context) {
        return FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            return Text(snapshot.data ?? 'Loading');
          },
        );
      }
    }