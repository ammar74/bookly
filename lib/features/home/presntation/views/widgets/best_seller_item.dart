import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: 130, width: 65, child: Image.asset(AssetsData.testImage)),
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'This is the Book\'s Name',
              style: Styles.textStyle20,
            ),
            Text(
              'Author\'s Name',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Price \$'),
                Icon(
                  Icons.star_outlined,
                  color: Colors.amber,
                ),
                Text('4.8'),
                Text('(2245)'),
              ],
            )
          ],
        )
      ],
    );
  }
}
