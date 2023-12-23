import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presntation/views/widgets/book_actions_buttons.dart';
import 'package:bookly/features/home/presntation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presntation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presntation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presntation/views/widgets/similar_book_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
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
          const BookActionsButtons(),
          const SizedBox(
            height: 18,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You Can Also Like :',
              style: Styles.textStyle14
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w800),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const SimilarBooksListView()
        ],
      ),
    );
  }
}
