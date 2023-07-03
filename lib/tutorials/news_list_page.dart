import 'package:flutter/material.dart';
import 'package:fsdflutter/model/news.dart';

class NewsListPage extends StatelessWidget {
  const NewsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News List"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(
            leading: const Icon(Icons.web, color: Colors.teal),
            title: const Text("BBC", style: TextStyle(color: Colors.teal),),
            subtitle: const Text("BBC webpage"),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: (){
              var newsRef = News("BBC","https://www.bbc.com/");
              // var route = MaterialPageRoute(builder: (context) => NewsDetails(news: newsRef));
              // Navigator.push(context, route);
              Navigator.pushNamed(context, '/newsDetails',arguments: newsRef);
            },
          ),
          ListTile(
            leading: const Icon(Icons.web, color: Colors.teal),
            title: const Text("CNN", style: TextStyle(color: Colors.teal),),
            subtitle: const Text("CNN webpage"),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: (){
              var newsRef = News("CNN","https://edition.cnn.com");
              // var route = MaterialPageRoute(builder: (context) => NewsDetails(news: newsRef));
              // Navigator.push(context, route);
              Navigator.pushNamed(context, '/newsDetails',arguments: newsRef);
            },
          ),
          ListTile(
            leading: const Icon(Icons.web, color: Colors.teal),
            title: const Text("CBS", style: TextStyle(color: Colors.teal),),
            subtitle: const Text("CBS webpage"),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: (){
              var newsRef = News("CBS","https://www.cbsnews.com/");
              // var route = MaterialPageRoute(builder: (context) => NewsDetails(news: newsRef));
              // Navigator.push(context, route);
              Navigator.pushNamed(context, '/newsDetails',arguments: newsRef);
            },
          ),
          ListTile(
            leading: const Icon(Icons.web, color: Colors.teal),
            title: const Text("NBC", style: TextStyle(color: Colors.teal),),
            subtitle: const Text("NBC webpage"),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: (){
              var newsRef = News("NBC","https://nbcnews.com");
              // var route = MaterialPageRoute(builder: (context) => NewsDetails(news: newsRef));
              // Navigator.push(context, route);
              Navigator.pushNamed(context, '/newsDetails',arguments: newsRef);
            },
          ),
          ListTile(
            leading: const Icon(Icons.web, color: Colors.teal),
            title: const Text("MSNBC", style: TextStyle(color: Colors.teal),),
            subtitle: const Text("MSNBC webpage"),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: (){
              var newsRef = News("MSNBC","https://www.msnbc.com/");
              // var route = MaterialPageRoute(builder: (context) => NewsDetails(news: newsRef));
              // Navigator.push(context, route);
              Navigator.pushNamed(context, '/newsDetails',arguments: newsRef);
            },
          )
        ],
      )
    );
  }
}
