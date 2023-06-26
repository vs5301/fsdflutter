import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:webview_flutter/webview_flutter.dart';

import 'package:webview_flutter/platform_interface.dart';

Future<String> fetchNewsFromWebService() async{
  String apiKey = "4c84650c829d4d2b8aff4d8bdcd0cbd5";
  String url = "https://newsapi.org/v2/everything?q=tesla&from=2023-05-26&sortBy=publishedAt&apiKey="+apiKey;
  
  var response = await http.get(Uri.parse(url));
  // http.post(url, {});
  return response.body;
  
}

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  Widget parseResponseFromWebService(String responseText, BuildContext context){
    var jsonData = convert.jsonDecode(responseText);
    List articles = jsonData['articles'];
    List<Widget> widgets = [];
    
    articles.forEach((element) { 
      widgets.add(element['urlToImage'] != null ? Image.network(element['urlToImage']): Container());
      widgets.add(Divider());
      widgets.add(ListTile(
      title: Text(element['title']),
      subtitle: Text(element['publishedAt']),
      onTap: (){
        var route = MaterialPageRoute(builder: (context) => NewsInWebview(url: element['url']));
        Navigator.push(context, route);
      },
      ));
      widgets.add(SizedBox(height: 6,));
    });

    return ListView(
      padding: EdgeInsets.all(8),
      children: widgets,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latest Business News"),
      ),
      body: FutureBuilder(
        future: fetchNewsFromWebService(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return parseResponseFromWebService(snapshot.data.toString(), context);
          }else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 2,),
                  Text("Please Wait...")
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

class NewsInWebview extends StatelessWidget {

  String url;

  NewsInWebview({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("News"),
        ),
        body: WebView(
          initialUrl: url,
          javascriptMode: JavascriptMode.unrestricted,
          onProgress: (int progress) {
            print('WebView is loading (progress: $progress');
          }
        )
    );
  }
}
