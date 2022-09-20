import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moviez_streaming/Model/movie_model.dart';

Widget movieListView(double height, double width, ScrollController controller) {
  return Container(
    width: width,
    padding: EdgeInsets.symmetric(vertical: height * 0.03),
    child: ListView.builder(
      physics: AlwaysScrollableScrollPhysics(),
      controller: controller,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final MovieModel movie = movieList[index];
        return Card(
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(20)),
          elevation: 0,
          child: Row(
            children: [
              Container(
                width: width * 0.4,
                height: height * 0.15,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      movie.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(movie.title,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: const Color(0xFF0D0846),
                          fontWeight: FontWeight.w600)),
                  Text(movie.genre,
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xFF929292),
                          fontWeight: FontWeight.w400)),
                  movie.rating
                ],
              )
            ],
          ),
        );
      },
      itemCount: movieList.length,
    ),
  );
}
