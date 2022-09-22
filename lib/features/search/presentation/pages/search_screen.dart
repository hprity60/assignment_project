import 'package:assignment_project/Utils/consts.dart';
import 'package:assignment_project/features/search/data/models/search_model.dart';
import 'package:assignment_project/features/search/presentation/widgets/product_card.dart';
import 'package:assignment_project/features/search/presentation/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/search_bloc.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchcontroller = TextEditingController();
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    final searchbloc = BlocProvider.of<SearchBloc>(context);
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
              children: [
                const SizedBox(height: 30),
                const SearchTextField(
                  
                  hintText: 'কাঙ্ক্ষিত পণ্যটি খুঁজুন'),
                const SizedBox(height: 30),
                BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
                  print(state);
                  if (state is SearchStateLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state is SearchStateLoaded) {
                    return _buildgridview(state.result); 
                  }
                  return Container();
                }),
                // Text("${result.length}"),
                // ProductSection(
                //   list: result,
                // ),
                // TextField(
                //   controller: _searchcontroller,
                //   onChanged: (value) {
                //     setState(() {
                //       isSearching = true;
                //       state.result = result
                //           .where((element) => element.slug
                //               .toLowerCase()
                //               .contains(value.toLowerCase()))
                //           .toList();
                //       if (_searchcontroller.text.isEmpty) {
                //         isSearching = false;
                //       }
                //     });
                //   },
                // ),
                // IconButton(
                //     color: Colors.red,
                //     icon: const Icon(Icons.search),
                //     onPressed: () {
                //       showSearch(
                //           context: context,
                //           delegate: GithubRepoSearch(
                //             searchBloc: BlocProvider.of<SearchBloc>(context),
                //           ));
                //     }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _buildgridview(List<Result> list) {
    return SizedBox(
        child: GridView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 10,
        mainAxisSpacing: 30,
      ),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ProductCard(
          result: list[index],
        );
      },
    ));
  }
}
