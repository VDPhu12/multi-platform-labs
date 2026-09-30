import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:xylophone_app/button_model.dart';
import 'package:xylophone_app/xylophone_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final AudioPlayer _player;
  final buttons = allButtons;

  @override
  void initState() {
    _player = AudioPlayer();
    super.initState();
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
            children: buttons
                .map(
                  (button) => XylophoneButton(
                    color: button.color,
                    onPressed: () async {
                      await _player
                          .play(AssetSource('${button.audioName}.wav'));
                      await _player
                          .seek(Duration.zero); // Đưa vị trí phát về đầu
                      await _player.resume(); // Tiếp tục phát lại từ đầu
                    },
                  ),
                )
                .toList()),
      ),
    );
  }
}
