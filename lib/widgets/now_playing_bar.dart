import 'package:flutter/material.dart';

import './custom_card.dart';

class NowPlayingBar extends StatefulWidget {
  const NowPlayingBar({super.key});

  @override
  State<NowPlayingBar> createState() => _NowPlayingBarState();
}

class _NowPlayingBarState extends State<NowPlayingBar> {
  Offset pos_offset = const Offset(32, 732);

  @override
  Widget build(BuildContext context) {
    // Offset pos_offset = Offset(
    //   MediaQuery.of(context).size.width - 20,
    //   MediaQuery.of(context).size.height - 135,
    // );
    return Positioned(
      top: pos_offset.dy,
      child: GestureDetector(
        onPanUpdate: (DragUpdateDetails details) => {
          // debugPrint('${details.delta.dy}'),
          setState(() => {pos_offset += details.delta}),
        },
        child: SizedBox(
          height: 80,
          width: MediaQuery.of(context).size.width,
          child: CustomCard(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            color: Color.fromARGB(248, 40, 40, 40),
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
                      size: 22,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
