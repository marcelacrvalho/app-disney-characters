import 'package:disney/app/global/widgets/text_title_widgets.dart';
import 'package:disney/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  Widget _body() {
   return SafeArea(
     child: Padding(
       padding: const EdgeInsets.all(16.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           CustomTextTitleWidget(title: 'Personagens da Disney'),
         ],
       ),
     ),
   );
  }
}
