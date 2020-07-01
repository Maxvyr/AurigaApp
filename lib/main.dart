import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'URL Launcher Test',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'URL Launcher test in App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> _launched;

  Future<void> _launchInWebViewWithJavaScript(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    // variable diff button
    const String nirusanLinkTwitch = 'https://www.twitch.tv/nirusan';
    const String greyfoxLinkTwitch = 'https://www.twitch.tv/greyfoxxtv';
    const String kelrysTVLinkTwitch = 'https://www.twitch.tv/kelrystv';
    const String reyexLinkTwitch = 'https://www.twitch.tv/reyex';
    const String reyexTVLinkTwitch = 'https://www.twitch.tv/reyextv';
    const String discordLink = 'https://discord.gg/BaAQpWH';
    const String youtubeLink =
        'https://www.youtube.com/channel/UCcdtBUQj-Rcm7LjXc9PMeDg';

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // GreyfoxxTV Button
            RaisedButton(
              onPressed: () => setState(() {
                _launched = _launchInWebViewWithJavaScript(greyfoxLinkTwitch);
              }),
              child: const Text('Go To GreyFoxxTV Live'),
              color: Colors.red,
            ),

            // Nirusan Button
            RaisedButton(
              onPressed: () => setState(() {
                _launched = _launchInWebViewWithJavaScript(nirusanLinkTwitch);
              }),
              child: const Text('Go To Nirusan Live'),
              color: Colors.blue,
            ),

            // Kelrys Button
            RaisedButton(
              onPressed: () => setState(() {
                _launched = _launchInWebViewWithJavaScript(kelrysTVLinkTwitch);
              }),
              child: const Text('Go To KelrysTV Live'),
              color: Colors.yellow,
            ),

            // Reyex Button
            RaisedButton(
              onPressed: () => setState(() {
                _launched = _launchInWebViewWithJavaScript(reyexLinkTwitch);
              }),
              child: const Text('Go To Reyex Live'),
              color: Colors.green,
            ),

            // ReyexTv Button
            RaisedButton(
              onPressed: () => setState(() {
                _launched = _launchInWebViewWithJavaScript(reyexTVLinkTwitch);
              }),
              child: const Text('Go To ReyexTV Live'),
              color: Colors.green,
            ),

            // Discord Button
            RaisedButton(
              onPressed: () => setState(() {
                _launched = _launchInWebViewWithJavaScript(discordLink);
              }),
              child: const Text('Discord'),
              color: Colors.purple,
            ),

            // Youtube Button
            RaisedButton(
              onPressed: () => setState(() {
                _launched = _launchInWebViewWithJavaScript(youtubeLink);
              }),
              child: const Text('Youtube'),
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}
