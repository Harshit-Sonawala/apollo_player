import 'package:flutter/material.dart';

import './custom_card.dart';

class NowPlayingBar extends StatefulWidget {
  const NowPlayingBar({super.key});

  @override
  State<NowPlayingBar> createState() => _NowPlayingBarState();
}

class _NowPlayingBarState extends State<NowPlayingBar> {
  // Offset pos_offset = const Offset(32, 732);
  double _nowPlayingHeight = 80;
  bool _nowPlayingClosed = true;
  @override
  Widget build(BuildContext context) {
    // debugPrint('Device Height: ${MediaQuery.of(context).size.height}');
    debugPrint('_nowPlayingClosed: $_nowPlayingClosed');
    var minOpenThreshold = 0.3 * MediaQuery.of(context).size.height;
    var maxHeight = 0.8 * MediaQuery.of(context).size.height;
    var minHeight = 80.0;
    return Positioned(
      // top: pos_offset.dy,
      bottom: 60 + MediaQuery.of(context).size.height * 0.008,
      child: GestureDetector(
        onVerticalDragUpdate: (DragUpdateDetails dragUpdateDetails) => {
          if (dragUpdateDetails.delta.dy < 0) // if upward swipe but not necessary it crosses threshold
            {
              setState(() => {
                    // pos_offset += dragUpdateDetails.delta,
                    _nowPlayingHeight += dragUpdateDetails.delta.dy * -1
                  }),
            },
          if (dragUpdateDetails.delta.dy > 0 && _nowPlayingHeight == maxHeight) // if downward swipe && height is bigger
            {
              setState(() => {_nowPlayingHeight = minHeight, _nowPlayingClosed = true})
            }
        },
        onVerticalDragEnd: (DragEndDetails dragEndDetails) => {
          if (_nowPlayingHeight >
              minOpenThreshold) // on swipe complete, if threshold crossed, open completely, else close
            {
              setState(() => {_nowPlayingClosed = false})
            }
          else
            {
              setState(() => {_nowPlayingClosed = true})
            },
          if (!_nowPlayingClosed) {_nowPlayingHeight = maxHeight} else {_nowPlayingHeight = minHeight}
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: _nowPlayingHeight,
          width: MediaQuery.of(context).size.width,
          child: CustomCard(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 0),
            color: const Color.fromARGB(248, 40, 40, 40),
            child: Column(
              mainAxisAlignment: _nowPlayingClosed ? MainAxisAlignment.center : MainAxisAlignment.start,
              children: [
                !_nowPlayingClosed
                    ? Icon(
                        Icons.keyboard_arrow_down,
                        color: Theme.of(context).colorScheme.primary,
                        size: 20,
                      )
                    : Container(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
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
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () => {},
                        icon: const Icon(
                          Icons.play_arrow,
                          size: 28,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
