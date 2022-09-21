import 'dart:math';
import 'package:disney/app/global/widgets/text_title_widgets.dart';
import 'package:disney/app/modules/controllers/home_controllers.dart';
import 'package:disney/app/modules/widgets/carousel_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
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
                itemCount: HomeController.to.listCharacters?.length ?? 0,
                physics: const ClampingScrollPhysics(),
                controller: HomeController.to.pageController,
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
      animation: HomeController.to.pageController,
      builder: (context, child) {
        double value = 0.0;
        if (HomeController.to.pageController.position.haveDimensions) {
          value =
              index.toDouble() - (HomeController.to.pageController.page ?? 0);
          value = (value * 0.038).clamp(-1, 1);
        }
        return Transform.rotate(
          angle: pi * value,
          child: FutureBuilder(
            future: HomeController.to.fetch(),
            builder: (context, snapshot) {
              return _switchFutureBuilder(snapshot, index);
            },
          ),
        );
      },
    );
  }

  Widget _switchFutureBuilder(AsyncSnapshot snapshot, index) {
    switch (snapshot.connectionState) {
      case ConnectionState.none:
      case ConnectionState.waiting:
        return const Center(child: CircularProgressIndicator());
      case ConnectionState.done:
      case ConnectionState.active:
        return _charactersList(index);
    }
  }

  Widget _charactersList(index) {
    return CustomCarouselWidget(
      image: HomeController.to.listCharacters![index].imageUrl!,
      name: HomeController.to.listCharacters![index].name!,
    );
  }
}
