import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presntation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.0, right: 18.0, left: 18.0),
        child: Column(
          children: [
            CustomAppBar(image: AssetsData.logo, icon: Icons.search),
          ],
        ),
      ),
    );
  }
}
