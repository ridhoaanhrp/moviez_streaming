import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MovieModel {
  String imageUrl;
  String title;
  String genre;
  Widget rating;

  MovieModel(
      {required this.imageUrl,
      required this.title,
      required this.genre,
      required this.rating});
}

var movieList = [
  MovieModel(
      imageUrl: "assets/johnwick.png",
      title: "John Wick 4",
      genre: "Action, Crime",
      rating: RatingBarIndicator(
          rating: 5,
          itemCount: 5,
          itemSize: 20.0,
          direction: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Icon(
              Icons.star,
              color: Color(0xFFFFAB2E),
            );
          })),
  MovieModel(
      imageUrl: "assets/beauty&beast.png",
      title: "Beauty & Beast",
      genre: "Sci-Fiction",
      rating: RatingBarIndicator(
          rating: 5,
          itemCount: 5,
          itemSize: 20.0,
          direction: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Icon(
              Icons.star,
              color: Color(0xFFFFAB2E),
            );
          })),
  MovieModel(
      imageUrl: "assets/mulan.png",
      title: "Mulan Session",
      genre: "History, War",
      rating: RatingBarIndicator(
          rating: 3,
          itemCount: 5,
          itemSize: 20.0,
          direction: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Icon(
              Icons.star,
              color: Color(0xFFFFAB2E),
            );
          })),
  MovieModel(
      imageUrl: "assets/thedark2.png",
      title: "The Dark II",
      genre: "Horror",
      rating: RatingBarIndicator(
          rating: 4,
          itemCount: 5,
          itemSize: 20.0,
          direction: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Icon(
              Icons.star,
              color: Color(0xFFFFAB2E),
            );
          })),
  MovieModel(
      imageUrl: "assets/thedarknight.png",
      title: "The Dark Knight",
      genre: "Heroes",
      rating: RatingBarIndicator(
          rating: 5,
          itemCount: 5,
          itemSize: 20.0,
          direction: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Icon(
              Icons.star,
              color: Color(0xFFFFAB2E),
            );
          })),
  MovieModel(
      imageUrl: "assets/thedarktower.png",
      title: "The Dark Tower",
      genre: "Action",
      rating: RatingBarIndicator(
          rating: 4,
          itemCount: 5,
          itemSize: 20.0,
          direction: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Icon(
              Icons.star,
              color: Color(0xFFFFAB2E),
            );
          }))
];
