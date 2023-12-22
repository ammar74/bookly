import 'package:bookly/features/home/presntation/views/widgets/horizonal_list_item.dart';
import 'package:flutter/material.dart';

class HorizonatBookslListView extends StatelessWidget {
  const HorizonatBookslListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: HorizontaListItem(),
            );
          }),
    );
  }
}
