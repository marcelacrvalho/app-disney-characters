import 'dart:math';

import 'package:disney/app/global/widgets/text_title_widgets.dart';
import 'package:disney/app/modules/widgets/carousel_widget.dart';
import 'package:disney/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {

  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late PageController _pageController;

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(initialPage: _currentPage, viewportFraction: 0.8);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    List data = ['Nome 1', 'Nome 2'];
    return SafeArea(
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         const Padding(
           padding: EdgeInsets.all(16.0),
           child: CustomTextTitleWidget(title: 'Personagens da Disney'),
         ),
         AspectRatio(
           aspectRatio: 0.8,
           child: PageView.builder(
               itemCount: data.length,
               physics: const ClampingScrollPhysics(),
               controller: _pageController,
               itemBuilder: (context, index) {
                 return carouselView(index);
               }),
         )
       ],
     ),
   );
  }

  Widget carouselView(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 0.0;
        if (_pageController.position.haveDimensions) {
          value = index.toDouble() - (_pageController.page ?? 0);
          value = (value * 0.038).clamp(-1, 1);
        }
        return Transform.rotate(
          angle: pi * value,
          child: CustomCarouselWidget(),
        );
      },
    );
  }
}
