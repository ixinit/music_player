import 'package:flutter/material.dart';

class PlayerView extends StatefulWidget {
  const PlayerView({super.key});

  @override
  State<PlayerView> createState() => _PlayerViewState();
}

class _PlayerViewState extends State<PlayerView> {
  bool playing = true;

  @override
  Widget build(BuildContext context) {
    /*return Card(
        child: ListTile(
      title: Text("Название"),
      subtitle: Column(children: [
        Text("Исполнитель"),
        Container(
            width: 400,
            color: Colors.green,
            child: Row(
              children: [
                IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.skip_previous_rounded)),
                IconButton(
                    onPressed: () => {
                          setState(() => {playing = !playing})
                        },
                    icon: playing == false
                        ? const Icon(Icons.pause_rounded)
                        : const Icon(Icons.play_arrow_rounded)),
                IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.skip_next_rounded)),
              ],
            )),
      ]),

      leading: Image.network(
          "https://timetorock.ru/wp-content/uploads/2015/04/Skills-In-Pills-LINDEMANN.jpg"), //Image(image: AssetImage('res/albums-icon.png')),
    ));*/
    return Card(
        child: Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Image.network(
              "https://timetorock.ru/wp-content/uploads/2015/04/Skills-In-Pills-LINDEMANN.jpg"),
          const SizedBox(width: 10),

          Expanded(
            flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Название", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Text("Исполнитель", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w100),),

                  Align(
                    alignment: Alignment.centerRight,
                    child:  Container(
                      //color: Colors.yellow,
                      width: 200,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () => {},
                              icon: const Icon(Icons.skip_previous_rounded)),
                          const SizedBox(width: 30,),
                          IconButton(
                              onPressed: () => {
                                setState(() => {playing = !playing})
                              },
                              icon: playing == false
                                  ? const Icon(Icons.pause_rounded)
                                  : const Icon(Icons.play_arrow_rounded)),
                          const SizedBox(width: 30,),
                          IconButton(
                              onPressed: () => {},
                              icon: const Icon(Icons.skip_next_rounded)),
                        ]
                      )
                    )
                  )
                ],
              )
          )
        ],
      ),
    ));
  }
}
