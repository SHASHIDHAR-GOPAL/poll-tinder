import 'package:flutter/material.dart';
import 'poll_card_widget.dart';
import 'actions_widget.dart';
import 'description_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poll Tinder',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Poll Tinder'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String placeHolderDescription =
      'Tinder is a location-based social search mobile app, most often used as a dating site, that allows users to like (swipe right) or dislike (swipe left) other users, and allows users to chat if both parties like each other (a "match").[3][4][5] Information available to users is based on pictures, a short bio, and optionally, a linked Instagram or Spotify account.[6]Originally developed by Hatch Labs, the IAC incubator launched in 2011[7], the app was launched in 2012. By 2014, it was registering about one billion "swipes" per day.[8] Tinder is among the first "swiping apps", whose users employ a swiping motion to choose photos of other users, swiping right for potentially good matches and swiping left on a photo to move to the next one.';

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Flexible(
              child: PollCardWidget(),
              flex: 1,
            ),
            Flexible(
              child: Column(
                children: <Widget>[
                  Actions(),
                  Description(placeHolderDescription)
                ],
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
