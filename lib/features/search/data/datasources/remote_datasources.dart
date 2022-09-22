import 'dart:convert';
import 'package:assignment_project/core/remote_urls.dart';
import 'package:assignment_project/features/search/data/models/search_model.dart';
import 'package:http/http.dart' as http;

abstract class ApiRepositories {
  //Future<List<RepositoryResponseModel>> getRepoLists(int page);
  Future<List<Result>> searchRepos(String slug);
}

class ApiRepositoriesIml extends ApiRepositories {
  @override
  Future<List<Result>> searchRepos(String slug) async {
    var response = await http.get(Uri.parse(RemoteUrls.search(slug)), headers: {
      "Accept": "application/json",
    });
    if (response.statusCode == 200) {
      print(response.statusCode);
      print(response.body);
      print(response);
      var data = json.decode(utf8.decode(response.bodyBytes));

      List<Result> result = SearchModel.fromJson(data).data.products.results;
      return result;
    } else {
      print(Exception());
      throw Exception('Failed');
    }
  }

}
