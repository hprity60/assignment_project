import 'package:assignment_project/features/search/data/datasources/remote_datasources.dart';
import 'package:assignment_project/features/search/data/models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/router.dart';
import 'features/search/presentation/bloc/search_bloc.dart';
import 'features/search/presentation/widgets/product_card.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //     home: Scaffold(
    //   resizeToAvoidBottomInset: false,
    //   backgroundColor: Colors.grey[900],
    //   body: BlocProvider(
    //     create: (context) => SearchBloc(apiRepositories: ApiRepositoriesIml()),
    //     child: SearchPage(),
    //   ),
    // ));

    return
    BlocProvider(
      create: (context) => SearchBloc(apiRepositories: ApiRepositoriesIml()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
       // home: SearchScreen(),
        onGenerateRoute: AppRoute().generateRoute,
        initialRoute: '/',
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final searchBloc = BlocProvider.of<SearchBloc>(context);
    var cityController = TextEditingController();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
            left: 32,
            right: 32,
          ),
          child: Column(
            children: <Widget>[
              const Text(
                "Search Weather",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: Colors.white70),
              ),
              const Text(
                "Instanly",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w200,
                    color: Colors.white70),
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                controller: cityController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white70,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Colors.white70, style: BorderStyle.solid)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Colors.blue, style: BorderStyle.solid)),
                  hintText: "City Name",
                  hintStyle: TextStyle(color: Colors.white70),
                ),
                style: const TextStyle(color: Colors.white70),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: TextButton(
                  onPressed: () {
                    searchBloc.add(SearchEventSearch(cityController.text));
                  },
                  child: const Text(
                    "Search",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
              width: double.infinity,
              height: 50,
              child: TextButton(
                onPressed: () {
                  BlocProvider.of<SearchBloc>(context).add(SearchEventSearch(cityController.text));
                },
                child: const Text(
                  "Search",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ),
            )
            ],
          ),
        ),
        BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            print(state);
            if (state is SearchStateLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is SearchStateLoaded) {
              return _buildgridview(state.result);
              //return ShowWeather(state.result, cityController.text);
            } else {
              return const Text(
                "Error",
                style: TextStyle(color: Colors.white),
              );
            }
          },
        )
      ],
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

class ShowWeather extends StatelessWidget {
  final List<Result> weathers;
  final String slug;

  ShowWeather(this.weathers, this.slug);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(right: 32, left: 32, top: 10),
        child: Column(
          children: <Widget>[
            Text(
              'city,',
              style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "${weathers[0].amount}C",
              style: const TextStyle(color: Colors.white70, fontSize: 50),
            ),
            const Text(
              "Temprature",
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "${weathers[0].amount}C",
                      style:
                          const TextStyle(color: Colors.white70, fontSize: 30),
                    ),
                    const Text(
                      "Min Temprature",
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "${weathers[0].amount}C",
                      style:
                          const TextStyle(color: Colors.white70, fontSize: 30),
                    ),
                    const Text(
                      "Max Temprature",
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextButton(
                onPressed: () {
                  BlocProvider.of<SearchBloc>(context).add(SearchEventSearch(slug));
                },
                child: const Text(
                  "Search",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ),
            )
          ],
        ));
  }

  
}
