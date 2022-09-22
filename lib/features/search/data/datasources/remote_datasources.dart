import 'dart:convert';
import 'package:assignment_project/core/remote_urls.dart';
import 'package:assignment_project/features/search/data/models/search_model.dart';
import 'package:http/http.dart' as http;

abstract class ApiRepositories {
  //Future<List<RepositoryResponseModel>> getRepoLists(int page);
  Future<List<Result>> searchProduct(String slug);
}

class ApiRepositoriesIml extends ApiRepositories {
  @override
  Future<List<Result>> searchProduct(String slug) async {
    var response = await http.get(Uri.parse(RemoteUrls.search(slug)), headers: {
      "Accept": "application/json",
      "Content-Type": "application/json; charset=uft-8"
    });
    if (response.statusCode == 200) {
      var jsonResponse = response.body;
      var decoded = json.decode(utf8.decode(response.bodyBytes));
      List<Result> mapdatalist =
          decoded["data"]["products"]["results"].map<Result>((b) => Result.fromJson(b)).toList();

      return mapdatalist;
    } else {
      print(Exception());
      throw Exception('Failed');
    }
  }
}
