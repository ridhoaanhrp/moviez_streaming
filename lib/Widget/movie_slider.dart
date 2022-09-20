import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:moviez_streaming/Model/movie_model.dart';

Widget movieSlider(double height, double width) {
  return Container(
    width: width,
    height: height * 0.4,
    padding: EdgeInsets.symmetric(vertical: height * 0.03),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final MovieModel movie = movieList[index];
        return Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(20)),
          child: Container(
            width: width * 0.7,
            height: height * 0.15,
            child: Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      movie.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movie.title,
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: const Color(0xFF0D0846),
                                fontWeight: FontWeight.w600),
                          ),
                          Text(movie.genre,
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: const Color(0xFF929292),
                                  fontWeight: FontWeight.w400))
                        ],
                      ),
                      movie.rating
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: movieList.length,
    ),
  );
}
