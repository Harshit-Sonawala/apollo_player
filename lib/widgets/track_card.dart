import 'package:flutter/material.dart';

import '../widgets/custom_card.dart';

class TrackCard extends StatefulWidget {
  final trackTitle;

  const TrackCard({
    this.trackTitle,
    super.key,
  });

  @override
  State<TrackCard> createState() => _TrackCardState();
}

class _TrackCardState extends State<TrackCard> {
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Text(widget.trackTitle, style: Theme.of(context).textTheme.bodyMedium),
    );
  }
}
