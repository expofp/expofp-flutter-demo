import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Column(children: <Widget>[
        Expanded(
          child: InAppWebView(
            initialUrlRequest:
                URLRequest(url: Uri.parse('https://demo.expofp.com')),
            initialOptions: InAppWebViewGroupOptions(
                android: AndroidInAppWebViewOptions(
                    allowFileAccess: true,
                    domStorageEnabled: true,
                    allowContentAccess: true),
                crossPlatform: InAppWebViewOptions(
                    allowUniversalAccessFromFileURLs: true,
                    javaScriptEnabled: true,
                    allowFileAccessFromFileURLs: true)),
            onConsoleMessage: (InAppWebViewController controller,
                ConsoleMessage consoleMessage) {},
            onWebViewCreated: (InAppWebViewController controller) {
            },
          ),
        )
      ]),
    );
  }
}
