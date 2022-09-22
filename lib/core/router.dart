import 'package:assignment_project/features/search/presentation/pages/product_detail.dart';
import 'package:assignment_project/features/search/data/models/search_model.dart';
import 'package:assignment_project/features/search/presentation/pages/search_screen.dart';
import 'package:flutter/material.dart';

import '../Utils/k_strings.dart';

class AppRoute {
  AppRoute();
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case searchScreen:
        {
          return MaterialPageRoute(builder: (_) => const SearchScreen());
        }
      case detailScreen:
        final result = settings.arguments as Result;
        {
          return MaterialPageRoute(
              builder: (_) => ProductDetail(
                    result: result,
                  ));
        }
      

      default:
        throw 'No Page Found!!';
    }
  }
}
