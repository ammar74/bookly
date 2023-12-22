import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presntation/views/widgets/best_seller_item.dart';
import 'package:bookly/features/home/presntation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presntation/views/widgets/horizontal_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.0, right: 18.0, left: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(image: AssetsData.logo, icon: Icons.search),
            HorizonatBookslListView(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Best Sellers',
                style: Styles.textStyle18,
              ),
            ),
            BestSellerItem(),
          ],
        ),
      ),
    );
  }
}
