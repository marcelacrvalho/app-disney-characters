import 'package:disney/app/modules/controllers/home_controllers.dart';
import 'package:disney/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCarouselWidget extends StatelessWidget {
  final String? image;
  final String name;

  const CustomCarouselWidget({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Hero(
            tag: 'data.imageName',
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  color: appThemeData.primaryColorLight,
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: NetworkImage(
                      image ?? HomeController.to.imageNotFound,
                    ),
                    fit: BoxFit.fill,
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 4),
                      blurRadius: 4,
                      color: appThemeData.primaryColorDark.withOpacity(0.3),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            name,
            style: TextStyle(
              color: appThemeData.textTheme.titleLarge!.color!.withOpacity(0.5),
              fontSize: appThemeData.textTheme.titleLarge!.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}