import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class hahaha extends StatelessWidget {
  const hahaha({
    Key? key,
    this.visible = true,
    required this.nameNote,
  }) : super(key: key);
  final bool visible;
  final String nameNote;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: SizedBox(
        width: 94.5,
        height: 250,
        child: Visibility(
          visible: visible,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),
            onPressed: () {
              AudioPlayer().play(
                AssetSource('$nameNote.mp3'),
              );
            },
            onLongPress: () {
              AudioPlayer().play(
                AssetSource('$nameNote.mp3'),
              );
            },
            child: null,
            // child: Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Padding(
            //     padding: const EdgeInsets.only(bottom: 20.0),
            //     child: Text(nameNote),
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}
