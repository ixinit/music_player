import 'package:flutter/material.dart';
import 'package:music_player/player.dart';

class Tracks extends StatelessWidget {
  const Tracks({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tracks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TracksPage(),
    );
  }
}

class TracksPage extends StatefulWidget {
  const TracksPage({super.key});

  @override
  State<TracksPage> createState() => _TracksPageState();
}

class _TracksPageState extends State<TracksPage> {
  final titles = ["Название 1", "Название 2", "Название 3"];
  final subtitles = [
    "Исполнитель 1",
    "Исполнитель 2",
    "Исполнитель 3"
  ];
  final icons = ['res/albums-icon.png', 'res/albums-icon.png', 'res/albums-icon.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
          children: [
            Expanded(
              flex:5,
              child: Container(
                //color: Colors.deepOrange,
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: 3,
                  itemBuilder: (context, index){
                    return Card(
                        child: ListTile(
                          title: Text(titles[index]),
                          subtitle: Text(subtitles[index]),
                          leading: Image(image: AssetImage(icons[index])),
                          trailing: const Icon(Icons.play_arrow_rounded),
                          onTap: ()=>{
                            //Navigation.push()
                          },
                        )
                    );
                  },
                ),
              )
            ),
            Expanded(
              flex: 1,
              child: Container(
                //color: Colors.red,
                child: PlayerView(),
              ),
            )
          ],
        )
      );
  }
}