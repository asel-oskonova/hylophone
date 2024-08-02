
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Xylophone'),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          ColoredBoxButton(
            color: Color(0xffEF443A),
            nota: 'do',
          ),
          ColoredBoxButton(
            color: Color(0xffF99700),
            nota: 're',
          ),
          ColoredBoxButton(
            color: Color(0xffFFE93B),
            nota: 'mi',
          ),
          ColoredBoxButton(
            color: Color(0xff4CB050),
            nota: 'fa',
          ),
          ColoredBoxButton(
            color: Color(0xff2E968C),
            nota: 'sol',
          ),
          ColoredBoxButton(
            color: Color(0xff2996F5),
            nota: 'lya',
          ),
          ColoredBoxButton(
            color: Color(0xff9B28B1),
            nota: 'si',
          ),
        ],
      ),
    );
  }
}

class ColoredBoxButton extends StatelessWidget {
  const ColoredBoxButton({
    required this.color,
    required this.nota,
    super.key,
  });

  final Color color;
  final String nota;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () async {
          final player = AudioPlayer();
          await player.play(AssetSource('zvuk-notyi-$nota.wav'));
        },
        child: Container(
          width: double.infinity,
          color: color,
        ),
      ),
    );
  }
}
