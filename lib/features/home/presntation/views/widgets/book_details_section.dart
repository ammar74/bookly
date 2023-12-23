import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presntation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presntation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: const CustomBookImage()),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Harry Potter and the Goblet of Fire',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'J.K. Rowling',
          style: Styles.textStyle18
              .copyWith(color: Colors.white60, fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 12,
        ),
        const BookRating(),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
