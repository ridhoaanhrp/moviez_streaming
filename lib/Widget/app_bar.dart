import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/fe.dart';
import 'package:moviez_streaming/Screen/search_screen.dart';

Widget appBar(BuildContext context, double height, double width) {
  return ListTile(
    title: Text(
      "Moviez",
      style: GoogleFonts.poppins(
          fontSize: 28,
          color: const Color(0xFF0D0846),
          fontWeight: FontWeight.w600),
    ),
    subtitle: Text("Watch much easier",
        style: GoogleFonts.poppins(
            fontSize: 16,
            color: const Color(0xFF929292),
            fontWeight: FontWeight.w400)),
    trailing: IconButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SearchScreen()));
        },
        icon: const Iconify(
          Fe.search,
          color: Color(0xFF0D0846),
        )),
  );
}
