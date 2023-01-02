import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class whitebutton extends StatelessWidget {
  const whitebutton({
    Key? key,
    required this.nameNote,
    // required this.name,
  }) : super(key: key);

  final String nameNote;

  // final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizedBox(
        height: 400,
        width: 100,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith(
              (states) => Colors.white,
            ),
            overlayColor: MaterialStateProperty.resolveWith(
              (states) {
                return states.contains(MaterialState.pressed)
                    ? Colors.grey[500]
                    : null;
              },
            ),
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
          //     child: newMethod(),
          //   ),
          // ),
        ),
      ),
    );
    ;
  }
}
// Padding whitebutton() {
//   return Padding(
//     padding: const EdgeInsets.all(2.0),
//     child: SizedBox(
//       height: 400,
//       width: 100,
//       child: ElevatedButton(
//         style: ButtonStyle(
//           backgroundColor: MaterialStateProperty.resolveWith(
//             (states) => Colors.white,
//           ),
//           overlayColor: MaterialStateProperty.resolveWith(
//             (states) {
//               return states.contains(MaterialState.pressed)
//                   ? Colors.grey[500]
//                   : null;
//             },
//           ),
//         ),
//         onPressed: () {
//           AudioPlayer().play(
//             AssetSource('do.mp3'),
//           );
//         },
//         child: Align(
//           alignment: Alignment.bottomCenter,
//           child: Padding(
//             padding: const EdgeInsets.only(bottom: 20.0),
//             child: newMethod(),
//           ),
//         ),
//       ),
//     ),
//   );
// }

// Text newMethod() {
//   return Text(
//     'f3',
//     style: TextStyle(
//       color: Color.fromARGB(255, 21, 20, 20),
//       fontSize: 20,
//       fontWeight: FontWeight.bold,
//     ),
//   );
// }
