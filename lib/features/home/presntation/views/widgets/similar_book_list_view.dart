import 'package:bookly/core/widgets/custom_error_message.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presntation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presntation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
          if (state is SimilarBooksSuccess) {
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: CustomBookImage(
                      imageUrl:
                          'https://th.bing.com/th/id/R.f0b3f1a93bcf16f9203dac7a9517183f?rik=OOHSIG8Cvf7o7w&pid=ImgRaw&r=0',
                    ),
                  );
                });
          } else if (state is SimilarBooksFailure) {
            return CustomErrorMessage(errMessage: state.errMessage);
          } else {
            return const CustomLoadingIndicator();
          }
        },
      ),
    );
  }
}
