// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:assignment_project/Utils/consts.dart';
import 'package:assignment_project/features/search/presentation/widgets/search_bar.dart';

import '../bloc/search_bloc.dart';

class SearchTextField extends StatelessWidget {
  final void Function()? onPressed;
  final String hintText;
  final TextEditingController? controller;
  const SearchTextField({
    Key? key,
    this.onPressed,
    required this.hintText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 14,
          ),

          // fillColor: primaryColor,
          // filled: true,
          suffixIcon: IconButton(
              color: Colors.red,
              icon: const Icon(Icons.search),
              onPressed: onPressed),
        ),
      ),
    );
  }
}
