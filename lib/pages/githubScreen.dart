
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GitHubWebView extends StatefulWidget {
  const GitHubWebView({super.key});

  @override
  State<GitHubWebView> createState() => _GitHubWebViewState();
}

class _GitHubWebViewState extends State<GitHubWebView> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://github.com/ayklassiq/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://github.com/ayklassiq'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub Profile'),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
