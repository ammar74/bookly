import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: outLinedInputBorder(),
            focusedBorder: outLinedInputBorder()
                .copyWith(borderSide: const BorderSide(color: Colors.white)),
            labelText: 'Search',
            suffixIcon:
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))),
      ),
    );
  }

  OutlineInputBorder outLinedInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
