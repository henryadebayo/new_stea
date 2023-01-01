import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final String? searchTxt;

  const SearchField({Key? key, this.searchTxt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 30.0, vertical: 14.0),
          hintText: "$searchTxt",
          suffixIcon: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(30.0),
            child: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
