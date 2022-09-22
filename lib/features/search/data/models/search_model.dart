// ignore_for_file: public_member_api_docs, sort_constructors_first
// To parse this JSON data, do
//
//     final productDetail = productDetailFromJson(jsonString);

import 'dart:convert';

import 'package:assignment_project/features/search/domain/entities/search.dart';

SearchModel productDetailFromJson(String str) =>
    SearchModel.fromJson(json.decode(str));

String productDetailToJson(SearchModel data) => json.encode(data.toJson());

class SearchModel {
  final String status;
  final Data data;
  SearchModel({
    required this.status,
    required this.data,
  });

  factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
        status: json["status"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
      };
}

class Data {
  List<dynamic> categories;
  Products products;
  Data({
    required this.categories,
    required this.products,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        categories: List<dynamic>.from(json["categories"].map((x) => x)),
        products: Products.fromJson(json["products"]),
      );

  Map<String, dynamic> toJson() => {
        "categories": List<dynamic>.from(categories.map((x) => x)),
        "products": products.toJson(),
      };
}

class Products {
  //int count;
  String next;
  String previous;
  List<Result> results;
  Products({
    // required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        // count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        // "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Result {
  // int id;
  //Brand brand;
  String image;
  // Charge charge;
   List<Image> images;
  String slug;
  String productName;
  //String model;
  String amount;
  String tag;
  String description;
  //String note;
  //String embaddedVideoLink;
  // int maximumOrder;
  // int stock;
  // bool isBackOrder;
  // String warranty;
  // bool preOrder;
  // int productReview;

  // bool isPhone;
  // bool willShowEmi;
  // dynamic badge;
  // bool isActive;
  // DateTime createdAt;
  // DateTime updatedAt;
  // dynamic language;
  // dynamic combo;
  // dynamic updatedBy;
  // // List<int> category;
  // List<dynamic> relatedProduct;
  // List<dynamic> filterValue;
  Result({
    // required this.id,
    //required this.brand,
    required this.image,
   // required this.charge,
    required this.images,
    required this.slug,
    required this.productName,
   // required this.model,
    required this.amount,
    required this.tag,
    required this.description,
    // required this.note,
    // required this.embaddedVideoLink,
    //  required this.maximumOrder,
    // required this.stock,
    // required this.isBackOrder,
    // required this.warranty,
    // required this.preOrder,
    // required this.productReview,
    // required this.isPhone,
    // required this.willShowEmi,
    // required this.badge,
    // required this.isActive,
    // required this.createdAt,
    // required this.updatedAt,
    // required this.language,
    // required this.combo,
    // required this.updatedBy,
    // required this.category,
    // required this.relatedProduct,
    // required this.filterValue,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        // id: json["id"],
       // brand: Brand.fromJson(json["brand"]),
        image: json["image"] ?? '',
       // charge: Charge.fromJson(json["charge"]),
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        slug: json["slug"],
        productName: json["product_name"] ?? '',
       // model: json["model"],
        amount: json["amount"] ?? '',
        tag: json["tag"],
        description: json["description"] ?? '',
       // note: json["note"],
       // embaddedVideoLink: json["embadded_video_link"],
        //  maximumOrder: json["maximum_order"],
        // stock: json["stock"],
        // isBackOrder: json["is_back_order"],
        // warranty: json["warranty"],
        // preOrder: json["pre_order"],
        // productReview: json["product_review"],
        // isPhone: json["is_phone"],
        // willShowEmi: json["will_show_emi"],
        // badge: json["badge"],
        // isActive: json["is_active"],
        // createdAt: DateTime.parse(json["created_at"]),
        // updatedAt: DateTime.parse(json["updated_at"]),
        // language: json["language"],
        // combo: json["combo"],
        // updatedBy: json["updated_by"],
        // category: List<int>.from(json["category"].map((x) => x)),
       // relatedProduct:
        //    List<dynamic>.from(json["related_product"].map((x) => x)),
       // filterValue: List<dynamic>.from(json["filter_value"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        //  "id": id,
       // "brand": brand.toJson(),
        "image": image,
      //  "charge": charge.toJson(),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "slug": slug,
        "product_name": productName,
       // "model": model,
        "amount": amount,
        "tag": tag,
        "description": description,
       // "note": note,
       // "embadded_video_link": embaddedVideoLink,
        // "maximum_order": maximumOrder,
        // "stock": stock,
        // "is_back_order": isBackOrder,
        // "warranty": warranty,
        // "pre_order": preOrder,
        // "product_review": productReview,
        // "is_phone": isPhone,
        // "will_show_emi": willShowEmi,
        // "badge": badge,
        // "is_active": isActive,
        // "created_at": createdAt.toIso8601String(),
        // "updated_at": updatedAt.toIso8601String(),
        // "language": language,
        // "combo": combo,
        // "updated_by": updatedBy,
        // // "category": List<dynamic>.from(category.map((x) => x)),
        // "related_product": List<dynamic>.from(relatedProduct.map((x) => x)),
        // "filter_value": List<dynamic>.from(filterValue.map((x) => x)),
      };
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

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        name: nameValues.map[json["name"]]!,
        image: json["image"],
        headerImage: json["header_image"],
        slug: slugValues.map[json["slug"]]!,
      );

  Map<String, dynamic> toJson() => {
        "name": nameValues.reverse[name],
        "image": image,
        "header_image": headerImage,
        "slug": slugValues.reverse[slug],
      };
}

enum Name { RICE }

final nameValues = EnumValues({"Rice": Name.RICE});

enum Slug { RICE }

final slugValues = EnumValues({"rice": Slug.RICE});

class Charge {
  // int bookingPrice;
  // int currentCharge;
  dynamic discountCharge;
  // int sellingPrice;
  // int profit;
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
    // required this.bookingPrice,
    // required this.currentCharge,
    required this.discountCharge,
    // required this.sellingPrice,
    // required this.profit,
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

  factory Charge.fromJson(Map<String, dynamic> json) => Charge(
        // bookingPrice: json["booking_price"],
        //  currentCharge: json["current_charge"],
        discountCharge: json["discount_charge"],
        // sellingPrice: json["selling_price"],
        //  profit: json["profit"],
        isEvent: json["is_event"],
        eventId: json["event_id"],
        highlight: json["highlight"],
        highlightId: json["highlight_id"],
        groupping: json["groupping"],
        grouppingId: json["groupping_id"],
        campaignSectionId: json["campaign_section_id"],
        campaignSection: json["campaign_section"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        // "booking_price": bookingPrice,
        // "current_charge": currentCharge,
        "discount_charge": discountCharge,
        // "selling_price": sellingPrice,
        // "profit": profit,
        "is_event": isEvent,
        "event_id": eventId,
        "highlight": highlight,
        "highlight_id": highlightId,
        "groupping": groupping,
        "groupping_id": grouppingId,
        "campaign_section_id": campaignSectionId,
        "campaign_section": campaignSection,
        "message": message,
      };
}

enum CommissionType { PERCENT }

final commissionTypeValues = EnumValues({"Percent": CommissionType.PERCENT});

enum CreatedBy { QTECSL }

final createdByValues = EnumValues({"qtecsl": CreatedBy.QTECSL});

class Image {
  // int id;
  String image;
  bool isPrimary;
  //int product;
  Image({
    //  required this.id,
    required this.image,
    required this.isPrimary,
    // required this.product,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        //  id: json["id"],
        image: json["image"],
        isPrimary: json["is_primary"],
        // product: json["product"],
      );

  Map<String, dynamic> toJson() => {
        // "id": id,
        "image": image,
        "is_primary": isPrimary,
        // "product": product,
      };
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
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap!;
  }
}
