import 'package:flutter/material.dart';

import './custom_card.dart';

class NowPlayingBar extends StatefulWidget {
  const NowPlayingBar({super.key});

  @override
  State<NowPlayingBar> createState() => _NowPlayingBarState();
}

class _NowPlayingBarState extends State<NowPlayingBar> {
  Offset pos_offset = const Offset(32, 732);
  double _nowPlayingHeight = 80;
  @override
  Widget build(BuildContext context) {
    // Offset pos_offset = Offset(
    //   MediaQuery.of(context).size.width - 20,
    //   MediaQuery.of(context).size.height - 135,
    // );
    debugPrint('Device Height: ${MediaQuery.of(context).size.height}');
    return Positioned(
      // top: pos_offset.dy,
      bottom: 60 + MediaQuery.of(context).size.height * 0.008,
      child: GestureDetector(
        onVerticalDragUpdate: (DragUpdateDetails dragUpdateDetails) => {
          if (dragUpdateDetails.delta.dy < 0) // if upward swipe
            {
              debugPrint('dragUpdateDetails.delta.dy: ${dragUpdateDetails.delta.dy}'),
              setState(() => {
                    pos_offset += dragUpdateDetails.delta,
                    _nowPlayingHeight += dragUpdateDetails.delta.dy * -1,
                  }),
            },
        },
        onVerticalDragEnd: (DragEndDetails dragEndDetails) async => {
          debugPrint('dragEndDetails: $dragEndDetails'),
          // for (var i = dragEndDetails.delta.dy; i > 80; i--) {

          // }
          for (var i = _nowPlayingHeight; i > 80.0; i = i - 1)
            {
              await Future.delayed(const Duration(microseconds: 800)),
              setState(() => {
                    _nowPlayingHeight -= 1,
                  }),
            }
        },
        child: SizedBox(
          height: _nowPlayingHeight,
          width: MediaQuery.of(context).size.width,
          child: CustomCard(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            color: const Color.fromARGB(248, 40, 40, 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomCard(
                  padding: EdgeInsets.all(20),
                  borderRadius: 2,
                  child: Icon(Icons.album),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Now Playing',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Text(
                      'Now Subtitle',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                Expanded(
                  child: Container(),
                ),
                IconButton(
                    onPressed: () => {},
                    icon: const Icon(
                      Icons.play_arrow,
                      size: 28,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
