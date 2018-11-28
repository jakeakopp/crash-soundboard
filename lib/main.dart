import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

AudioCache player = new AudioCache();

void _onClicked(String filename) {
  debugPrint("You tapped on item $filename");
  player.play("$filename.m4a");
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            InkResponse(
              child: Image.asset('images/yaacov.png', fit: BoxFit.cover),
              onTap: () => _onClicked("benefit"),
            ),
            InkResponse(
              child: Image.asset('images/swing.jpg', fit: BoxFit.cover),
              onTap: () => _onClicked("larson"),
            ),
            InkResponse(
              child: Image.asset('images/disc.jpg', fit: BoxFit.cover),
              onTap: () => _onClicked("fly"),
            ),
            InkResponse(
              child: Image.asset('images/ear.png', fit: BoxFit.cover),
              onTap: () => _onClicked('listening'),
            ),
            InkResponse(
              child: Image.asset('images/tom.png', fit: BoxFit.cover),
              onTap: () => _onClicked('smallball'),
            ),
            InkResponse(
              child: Image.asset('images/brad.png', fit: BoxFit.cover),
              onTap: () => _onClicked('noregrets'),
            ),
            InkResponse(
              child: Image.asset('images/babyface.png', fit: BoxFit.cover),
              onTap: () => _onClicked('wearegood'),
            ),
            InkResponse(
              child: Image.asset('images/petermullen.png', fit: BoxFit.cover),
              onTap: () => _onClicked('imhavingfun'),
            ),
          ],
        ),
      ),
    );
  }
}
