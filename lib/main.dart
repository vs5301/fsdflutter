import 'package:flutter/material.dart';
import 'package:fsdflutter/tutorials/widget_class.dart';
import 'package:fsdflutter/tutorials/bottom_navbar.dart';
import 'package:fsdflutter/tutorials/navigation_drawer.dart';
import 'package:fsdflutter/tutorials/news_details.dart';
import 'package:fsdflutter/tutorials/news_list_page.dart';
import 'package:fsdflutter/tutorials/news_page.dart';
import 'package:fsdflutter/tutorials/page_one.dart';
import 'package:fsdflutter/tutorials/page_two.dart';
import 'package:fsdflutter/tutorials/row_columns.dart';
import 'package:fsdflutter/tutorials/stack_widget.dart';
import 'package:fsdflutter/tutorials/tab_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter FSD',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a blue toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          primarySwatch: Colors.red,
          appBarTheme: AppBarTheme(color: Colors.red),
          textTheme: TextTheme(
            displayLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            titleMedium: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic)
          )
        ),
        debugShowCheckedModeBanner: false,
        // home: PageOne (),
        initialRoute: '/stackWidget',
        routes: {
          '/': (context) => const NavigationDrawerPage(),
          '/home': (context) => const HomePage(),
          '/pageOne': (context) => const PageOne(),
          '/pageTwo': (context) => const PageTwo(),
          '/newsList': (context) => const NewsListPage(),
          '/newsDetails': (context) => const NewsDetails(),
          '/drawer': (context) => const NavigationDrawerPage(),
          '/bottom': (context) => const BottomNavigationPage(),
          '/newsApi': (context) => const NewsPage(),
          '/rowcol': (context) => const RowColumnsPage(),
          '/tabnav': (context) => const TabBarPage(),
          '/customWidget': (context) => const WidgetClassPage(),
          '/stackWidget': (context) => const StackWidgetPage(),
        });
  }
}

/* class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Foodie"),),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text("Welcome to Home", style: TextStyle(color: Colors.amber, fontSize: 24, fontWeight: FontWeight.bold),)
        )
      )
    );
  }
}*/
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("FSDFlutter"),
        ),
        body: Container(
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Welcome to FSD Flutter",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const Icon(
                    Icons.ac_unit,
                    size: 32,
                    color: Colors.green,
                  ),
                  const Text(
                    "Please signup here",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const Icon(
                    Icons.ac_unit,
                    size: 32,
                    color: Colors.red,
                  ),
                  OutlinedButton(
                      onPressed: () {
                        print("Button Clicked");
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      )),
                  const Icon(
                    Icons.ac_unit,
                    size: 32,
                    color: Colors.yellow,
                  ),
                ],
              ),
            )));
  }
}
