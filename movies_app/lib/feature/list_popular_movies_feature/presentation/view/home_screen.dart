import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/feature/list_popular_movies_feature/presentation/view/movie_list.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            "Popular movies",
          )),
        ),
        body: MovieList());
  }
}
