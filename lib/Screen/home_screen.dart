import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moviez_streaming/Widget/app_bar.dart';
import 'package:moviez_streaming/Widget/movie_list_view.dart';
import 'package:moviez_streaming/Widget/movie_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController controller = ScrollController();

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
              children: [
                appBar(context, bodyHeight, bodyWidth),
                movieSlider(bodyHeight, bodyWidth),
                movieListView(bodyHeight, bodyWidth, controller)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
