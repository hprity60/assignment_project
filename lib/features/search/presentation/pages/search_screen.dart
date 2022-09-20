import 'package:assignment_project/Utils/consts.dart';
import 'package:assignment_project/features/search/presentation/widgets/product_section.dart';
import 'package:assignment_project/features/search/presentation/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Column(
              children: const [
                SizedBox(height: 30),
                SearchTextField(hintText: 'কাঙ্ক্ষিত পণ্যটি খুঁজুন'),
                SizedBox(height: 30),
                ProductSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
