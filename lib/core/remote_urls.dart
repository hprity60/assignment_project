class RemoteUrls {
  static const String rootUrl = "https://panel.supplyline.network/";
  static const String baseUrl = "${rootUrl}api/";
  static String productDetail(String slug) =>
      '${baseUrl}product-details/{slug}/';
  static String search(String slug) =>
      '${baseUrl}product/search-suggestions/?limit=10&offset=10&search=$slug';
static String searchProduct =
      '${baseUrl}product/search-suggestions/?';
}