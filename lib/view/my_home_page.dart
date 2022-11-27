
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<int> colorHex = [
    0xFFA19323,
    0xFF5A5108,
    0xFF010818,
    0xFF1F4CBF,
    0xFFBF5F1F,
    0xFF4E5258,
  ];

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Xylophone Sound",style: TextStyle(fontFamily: "NerkoOne"),),
        centerTitle: true,
      ),

      body: Column(
        children: [
          for(int index = 1;index <= 6; index++)...{
            Expanded(
              child: GestureDetector(
                onTap: (){
                  playSound(index);
                },
                child: Container(
                  width: double.maxFinite,
                  height: 50,
                  color: Color(colorHex[index]),
                ),
              ),
            ),
          }
        ],
      ),
    );
  }
}
