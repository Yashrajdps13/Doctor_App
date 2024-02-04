import 'package:flutter/material.dart';
import 'package:mongo_test/widgets/my_web_view.dart';
import 'package:webview_flutter/webview_flutter.dart';

class UploadReportPage extends StatefulWidget {
  const UploadReportPage({super.key});

  @override
  State<UploadReportPage> createState() => _UploadReportPageState();
}

class _UploadReportPageState extends State<UploadReportPage> {
  late final WebViewController controller;
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(Uri.parse('https://google.com'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebView'),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () async {
                    final messenger = ScaffoldMessenger.of(context);
                    if (await controller.canGoBack()) {
                      await controller.goBack();
                    } else {
                      messenger.showSnackBar(
                          SnackBar(content: Text('No Back History Found')));
                      return;
                    }
                  },
                  icon: Icon(Icons.arrow_back_ios)),
              IconButton(
                  onPressed: () async {
                    final messenger = ScaffoldMessenger.of(context);
                    if (await controller.canGoForward()) {
                      await controller.goForward();
                    } else {
                      messenger.showSnackBar(
                          SnackBar(content: Text('No forward History Found')));
                      return;
                    }
                  },
                  icon: Icon(Icons.arrow_forward_ios)),
              IconButton(
                icon: Icon(Icons.replay),
                onPressed: () {
                  controller.reload();
                },
              )
            ],
          )
        ],
      ),
      body: MyWebView(controller: controller),
    );
  }
}
