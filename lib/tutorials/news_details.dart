import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fsdflutter/model/news.dart';
import 'package:webview_flutter/webview_flutter.dart';

/*
class NewsDetails extends StatefulWidget {

  News news;
  NewsDetails({Key? key, required this.news}): super(key: key);

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.news.title),
      ),
      body: WebView(
        initialUrl: widget.news.url,
      )
    );
  }
}
*/

class NewsDetails extends StatefulWidget {

  const NewsDetails({Key? key}): super(key: key);

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {

    var news = ModalRoute.of(context)!.settings.arguments as News;

    return Scaffold(
        appBar: AppBar(
          title: Text(news.title),
        ),
        body: WebView(
          initialUrl: news.url,
        )
    );
  }
}


