class Search {
  String status;
  Data data;
  Search({
    required this.status,
    required this.data,
  });
}

class Data {
  List<dynamic> categories;
  Products products;
  Data({
    required this.categories,
    required this.products,
  });

}

class Products {
  int count;
  String next;
  String previous;
  List<Result> results;  
  Products({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });
}

class Result {
  int id;
  Brand brand;
  String image;
  Charge charge;
  List<Image> images;
  String slug;
  String productName;
  String model;
  String amount;
  String tag;
  String description;
  String note;
  String embaddedVideoLink;
  int maximumOrder;
  int stock;
  bool isBackOrder;
  String warranty;
  bool preOrder;
  int productReview;

  bool isPhone;
  bool willShowEmi;
  dynamic badge;
  bool isActive;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic language;
  dynamic combo;
  dynamic updatedBy;
  List<int> category;
  List<dynamic> relatedProduct;
  List<dynamic> filterValue;
  Result({
    required this.id,
    required this.brand,
    required this.image,
    required this.charge,
    required this.images,
    required this.slug,
    required this.productName,
    required this.model,
    required this.amount,
    required this.tag,
    required this.description,
    required this.note,
    required this.embaddedVideoLink,
    required this.maximumOrder,
    required this.stock,
    required this.isBackOrder,
    required this.warranty,
    required this.preOrder,
    required this.productReview,
    required this.isPhone,
    required this.willShowEmi,
    required this.badge,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    required this.language,
    required this.combo,
    required this.updatedBy,
    required this.category,
    required this.relatedProduct,
    required this.filterValue,
  });
}

class Brand {
  Name name;
  String image;
  dynamic headerImage;
  Slug slug;
  Brand({
    required this.name,
    required this.image,
    required this.headerImage,
    required this.slug,
  });

}  // kon file e jete chan. amk ekta jinish bujan je, ei view ta ekahne api korcen kivabe ?data antecen kivabe ?

enum Name { RICE }

final nameValues = EnumValues({"Rice": Name.RICE});

enum Slug { RICE }

final slugValues = EnumValues({"rice": Slug.RICE});

class Charge {
  int bookingPrice;
  int currentCharge;
  dynamic discountCharge;
  int sellingPrice;
  int profit;
  bool isEvent;
  dynamic eventId;
  bool highlight;
  dynamic highlightId;
  bool groupping;
  dynamic grouppingId;
  dynamic campaignSectionId;
  bool campaignSection;
  dynamic message;
  Charge({
    required this.bookingPrice,
    required this.currentCharge,
    required this.discountCharge,
    required this.sellingPrice,
    required this.profit,
    required this.isEvent,
    required this.eventId,
    required this.highlight,
    required this.highlightId,
    required this.groupping,
    required this.grouppingId,
    required this.campaignSectionId,
    required this.campaignSection,
    required this.message,
  });
}

enum CommissionType { PERCENT }

final commissionTypeValues = EnumValues({"Percent": CommissionType.PERCENT});

enum CreatedBy { QTECSL }

final createdByValues = EnumValues({"qtecsl": CreatedBy.QTECSL});

class Image {
  int id;
  String image;
  bool isPrimary;
  int product;
  Image({
    required this.id,
    required this.image,
    required this.isPrimary,
    required this.product,
  });
}

enum Seller { SUPPLY_LINE }

final sellerValues = EnumValues({"SupplyLine": Seller.SUPPLY_LINE});

enum Specification { EMPTY }

final specificationValues = EnumValues({"<|>": Specification.EMPTY});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap ??= map.map((k, v) => new MapEntry(v, k));
    return reverseMap!;
  }
}
