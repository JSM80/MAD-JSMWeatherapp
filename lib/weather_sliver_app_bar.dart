import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

const String baseAssetURL =
    'https://dartpad-workshops-io2021.web.app/getting_started_with_slivers/';
const String headerImage = '${baseAssetURL}assets/header.jpeg';

class WeatherSliverAppBar extends StatelessWidget {
  final AsyncCallback onRefresh;
  const WeatherSliverAppBar({super.key, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      stretch: true,
      onStretchTrigger: onRefresh,
      backgroundColor: Colors.cyan[900],
      expandedHeight: 200.0,
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const [
          StretchMode.zoomBackground,
          StretchMode.fadeTitle,
          StretchMode.blurBackground,
        ],
        title: const Text('Weekly Forecast'),
        background: DecoratedBox(
          position: DecorationPosition.foreground,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: <Color>[Colors.cyan[900]!, Colors.transparent],
            ),
          ),
          child: Image.network(
            headerImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
