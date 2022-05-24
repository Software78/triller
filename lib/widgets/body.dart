import 'package:flutter/material.dart';
import 'package:triller_zone/models/moviemodel.dart';
import 'package:triller_zone/services/getmovies.dart';
import 'package:triller_zone/widgets/mytextwidget.dart';

class MyBody extends StatefulWidget {
  const MyBody({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TabController controller;

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: GetMovies.getMovieInfo(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData == false) {
          return const Center(
            child: MyTextWidget(text: 'No Data'),
          );
        } else {
          var movies = snapshot.data as List<MovieModel>;
          return GridView.count(
            crossAxisCount: 2,
            children: List.generate(
              movies.length,
              (index) => SizedBox(
                child: Card(
                  child: Column(
                    children: [
                      Image.network(
                        'https://image.tmdb.org/t/p/w92/${movies[index].posterPath.toString()}',
                      ),
                      MyTextWidget(
                        text: movies[index].title != null
                            ? movies[index].originalTitle
                            : 'No title',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
