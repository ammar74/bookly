import 'package:bookly/features/home/presntation/views/widgets/book_actions_buttons.dart';
import 'package:bookly/features/home/presntation/views/widgets/book_details_section.dart';
import 'package:bookly/features/home/presntation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presntation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                BookActionsButtons(),
                Expanded(
                  child: SizedBox(
                    height: 18,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
