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
            title: const Text("Zee News", style: TextStyle(color: Colors.teal),),
            subtitle: const Text("news from zee channel"),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: (){
              var newsRef = News("Zee News","https://zeenews.india.com");
              // var route = MaterialPageRoute(builder: (context) => NewsDetails(news: newsRef));
              // Navigator.push(context, route);
              Navigator.pushNamed(context, '/newsDetails',arguments: newsRef);
            },
          ),
          ListTile(
            leading: const Icon(Icons.web, color: Colors.teal),
            title: const Text("CNN", style: TextStyle(color: Colors.teal),),
            subtitle: const Text("news from cnn channel"),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: (){
              var newsRef = News("CNN News","https://edition.cnn.com");
              // var route = MaterialPageRoute(builder: (context) => NewsDetails(news: newsRef));
              // Navigator.push(context, route);
              Navigator.pushNamed(context, '/newsDetails',arguments: newsRef);
            },
          ),
          ListTile(
            leading: const Icon(Icons.web, color: Colors.teal),
            title: const Text("Aaj Tak", style: TextStyle(color: Colors.teal),),
            subtitle: const Text("news from aaj tak channel"),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: (){
              var newsRef = News("Aaj Tak","https://aajtak.in");
              // var route = MaterialPageRoute(builder: (context) => NewsDetails(news: newsRef));
              // Navigator.push(context, route);
              Navigator.pushNamed(context, '/newsDetails',arguments: newsRef);
            },
          ),
          ListTile(
            leading: const Icon(Icons.web, color: Colors.teal),
            title: const Text("NBC", style: TextStyle(color: Colors.teal),),
            subtitle: const Text("news from nbc channel"),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: (){
              var newsRef = News("NBC News","https://nbcnews.com");
              // var route = MaterialPageRoute(builder: (context) => NewsDetails(news: newsRef));
              // Navigator.push(context, route);
              Navigator.pushNamed(context, '/newsDetails',arguments: newsRef);
            },
          ),
          ListTile(
            leading: const Icon(Icons.web, color: Colors.teal),
            title: const Text("India Today", style: TextStyle(color: Colors.teal),),
            subtitle: const Text("news from india today channel"),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: (){
              var newsRef = News("India Today","https://indiatoday.in");
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
