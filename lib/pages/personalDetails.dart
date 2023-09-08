import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'githubScreen.dart';

class PersonalDetailsScreen extends StatelessWidget {
  const PersonalDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Personal Details '),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'AyoadeKlassiq',
                style: TextStyle(fontSize: 24.0),
              ),
              const SizedBox(height: 20.0),
              Image.network(
                'https://ca.slack-edge.com/T05FFAA91JP-U05QZ7EN9QX-d56be78c25fe-512',
                width: 150.0,
                height: 150.0,
              ),
              const SizedBox(height: 70.0),
              ElevatedButton(
                onPressed: () {
                  // Add code here to open GitHub profile using WebView.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GitHubWebView(),
                    ),
                  );
                },
                child: const Text('Open GitHub'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

