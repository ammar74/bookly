import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presntation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presntation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presntation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40.0, right: 18.0, left: 18.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(image: AssetsData.logo, icon: Icons.search),
                FeaturedBookslListView(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Best Sellers',
                  style: Styles.textStyle18,
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: BestSellerListView(),
          )
        ],
      ),
    );
  }
}
