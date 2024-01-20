/*import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter/material.dart';

class AppWebView extends StatefulWidget {
  final String postUrl;
  const AppWebView({super.key, required this.postUrl});

  @override
  State<AppWebView> createState() => _AppWebViewState();
}

class _AppWebViewState extends State<AppWebView> {
  final Completer<WebViewController> controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse(widget.postUrl)),
          onWebViewCreated: (controller){
            webView = controller;
          },
        ),
      ),
    );
  }
}*/

/*import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class AppWebView extends StatefulWidget {
  final String webUrl;

  const AppWebView({super.key, required this.webUrl});

  @override
  State<AppWebView> createState() => _AppWebViewState();
}

class _AppWebViewState extends State<AppWebView> {
  late InAppWebViewController webView;
  String currentUrl = '';
  @override
  Widget build(BuildContext context) {
    final initialUrl = Uri.parse(widget.webUrl);
    final initialUrlRequest = URLRequest(url: initialUrl);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: InAppWebView(
        initialUrlRequest: initialUrlRequest,
        initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
            useOnDownloadStart: true,
          ),
        ),
        onWebViewCreated: (controller) {
          webView = controller;
        },
        onLoadStart: (controller, url) {
          print("InAppWebView.onLoadStart: $url");
          setState(() {
            currentUrl = url.toString();
          });
        },
        onProgressChanged: (controller, progress) {
          double prog = progress / 100;
          print('InAppWebView.onProgressChanged: $prog');
        },
      ),
    );
  }
}*/
