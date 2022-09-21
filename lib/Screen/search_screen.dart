import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/fe.dart';
import 'package:moviez_streaming/Model/movie_model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double bodyHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    double bodyWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: bodyWidth * 0.05,
              right: bodyWidth * 0.05,
              top: bodyHeight * 0.05,
              bottom: bodyWidth * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: bodyWidth * 0.05),
                child: TextField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: searchController,
                  decoration: InputDecoration(
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                      prefixIconColor: const Color(0xFF929292),
                      hintText: "Search",
                      hintStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 16, color: Colors.grey)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: const Iconify(
                        Fe.search,
                        color: Color(0xFF0D0846),
                        size: 20,
                      )),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Search Result",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 20,
                          color: Color(0xFF0D0846),
                          fontWeight: FontWeight.bold)),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: movieList.length,
                  itemBuilder: (context, index) {
                    final movie = movieList;
                    if (searchController.text.isEmpty) {
                      return Container();
                    } else if (movie[index]
                        .title
                        .toLowerCase()
                        .contains(searchController.text)) {
                      return Card(
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 0,
                        child: Row(
                          children: [
                            Container(
                              width: bodyWidth * 0.4,
                              height: bodyHeight * 0.15,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  movie[index].imageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: bodyWidth * 0.02,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(movie[index].title,
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        color: const Color(0xFF0D0846),
                                        fontWeight: FontWeight.w600)),
                                Text(movie[index].genre,
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: const Color(0xFF929292),
                                        fontWeight: FontWeight.w400)),
                                movie[index].rating
                              ],
                            )
                          ],
                        ),
                      );
                    }
                    return Container();
                  }),
              SizedBox(
                height: bodyHeight * 0.05,
              ),
              Container(
                width: bodyWidth * 0.4,
                height: bodyHeight * 0.05,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0D0846),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {},
                    child: Text("Suggest Movie",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 16, color: Colors.white)))),
              )
            ],
          ),
        ),
      )),
    );
  }
}
