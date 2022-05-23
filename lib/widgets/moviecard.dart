import 'package:flutter/material.dart';
import 'package:triller_zone/widgets/mytextwidget.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key? key,
    required this.movieTitle,
  }) : super(key: key);

  final String? movieTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const SizedBox(
            width: 100,
            height: 150,
            child: Center(
              child: FlutterLogo(),
            ),
          ),
          MyTextWidget(text: movieTitle),
        ],
      ),
    );
  }
}
