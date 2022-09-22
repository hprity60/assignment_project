import 'package:assignment_project/Utils/consts.dart';
import 'package:assignment_project/features/search/data/models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/search_bloc.dart';
import 'product_card.dart';

class SearchBar extends SearchDelegate<List> {
  SearchBloc searchBloc;

  SearchBar({
    required this.searchBloc,
  });
  late String queryString;
  //final dateFormatter = DateFormat('MMMM dd h:mm a');
  //final dateString = dateFormatter.format(item!.date);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          close(context, []);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    //SearchBloc searchBloc;

    searchBloc.add(SearchEventSearch(query));

    return BlocBuilder<SearchBloc, SearchState>(
      builder: (BuildContext context, SearchState state) {
        if (state is SearchStateLoading) {
          return buildLeading(context);
        }
        if (state is SearchStateError) {
          return Text(state.message);
        }
        if (state is SearchStateLoaded) {
          if (state.result.isEmpty) {
            return const Center(
              child: Text('No Results'),
            );
          }
          return Scaffold(
            backgroundColor: backgroundColor,
            body: _buildgridview(state.result),
          );
          //buildSearchList(state.items!);

          //     Column(
          //   children: [
          //     Flexible(
          //       child: ListView.separated(
          //           separatorBuilder: (context, index) {
          //             return const Divider(
          //               color: Colors.blue,
          //               height: 15,
          //             );
          //           },
          //           physics: const BouncingScrollPhysics(),
          //           itemBuilder: (BuildContext context, int index) {
          //             return InkWell(
          //               onTap: () {},
          //               child: InkWell(
          //                 onTap: () {
          //                 },
          //                 child: Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     Text(state.result[index].productName),
          //                     // Text(Utility.toformattedDate2(
          //                     //     state.result[index].createdAt)),
          //                     // Image.network(
          //                     //   state.items![index].createdAt,
          //                     //   height: 50,
          //                     //   width: 50,
          //                     // ),
          //                     Text("${state.result[index].productName}"),
          //                     const SizedBox(height: 16),

          //                     const SizedBox(height: 4),

          //                     const SizedBox(height: 16),

          //                     Padding(
          //                       padding: const EdgeInsets.only(bottom: 3),
          //                       child: Icon(Icons.star,
          //                           size: 20, color: Colors.yellowAccent[700]),
          //                     ),
          //                     const SizedBox(width: 10),
          //                     // Text(
          //                     //   "${items[index].st
          //                     //   stargazers.totalCount}",
          //                     //   style: Theme.of(context).textTheme.subtitle2,
          //                     // ),
          //                     const SizedBox(width: 20),
          //                     const Icon(
          //                       Icons.blur_circular,
          //                       color: Colors.yellow,
          //                       //items[index].
          //                       //languages.nodes.first.color,
          //                       size: 15,
          //                     ),
          //                     const SizedBox(width: 5),
          //                     // Text(
          //                     //   "${state.items![index].description}",
          //                     //   //.languages.nodes.first.name}",
          //                     //   style: Theme.of(context).textTheme.subtitle2,
          //                     // ),
          //                   ],
          //                 ),
          //               ),
          //             );
          //           },
          //           itemCount: state.result.length),
          //     ),
          //   ],
          // );
        }
        return const Scaffold();
      },
    );
  }

  Padding _buildgridview(List<Result> list) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SizedBox(
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
      )),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
