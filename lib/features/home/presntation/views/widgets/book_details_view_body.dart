import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/presntation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presntation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presntation/views/widgets/custom_book_image.dart';
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
              padding: EdgeInsets.symmetric(horizontal: width * 0.19),
              child: const CustomBookImage()),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Harry Potter and the Goblet of Fire',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'J.K. Rowling',
            style: Styles.textStyle18
                .copyWith(color: Colors.white60, fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 18,
          ),
          const BookRating(),
          const SizedBox(
            height: 18,
          ),
          const BookActionsButtons()
        ],
      ),
    );
  }
}

class BookActionsButtons extends StatelessWidget {
  const BookActionsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.9 \$',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              backgroundColor: Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
