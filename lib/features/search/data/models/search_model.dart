class Result {
  int? id;
  Brand? brand;
  String? image;
  Charge? charge;
  List<Images>? images;
  String? slug;
  String? productName;
  String? model;
  String? commissionType;
  String? amount;
  String? tag;
  String? description;
  String? note;
  String? embaddedVideoLink;
  int? maximumOrder;
  int? stock;
  bool? isBackOrder;
  String? specification;
  String? warranty;
  bool? preOrder;
  int? productReview;
  bool? isSeller;
  bool? isPhone;
  bool? willShowEmi;
 
  bool? isActive;
  String? createdAt;
  String? updatedAt;
  
  String? seller;
 
  String? createdBy;
 
  List<int>? category;
 

  Result(
      {this.id,
      this.brand,
      this.image,
      this.charge,
      this.images,
      this.slug,
      this.productName,
      this.model,
      this.commissionType,
      this.amount,
      this.tag,
      this.description,
      this.note,
      this.embaddedVideoLink,
      this.maximumOrder,
      this.stock,
      this.isBackOrder,
      this.specification,
      this.warranty,
      this.preOrder,
      this.productReview,
      this.isSeller,
      this.isPhone,
      this.willShowEmi,
      //this.badge,
      this.isActive,
      this.createdAt,
      this.updatedAt,
      //this.language,
      this.seller,
      //this.combo,
      this.createdBy,
      //this.updatedBy,
      this.category,
      //this.relatedProduct,
      //this.filterValue
      });

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    image = json['image'];
    charge =
        json['charge'] != null ? Charge.fromJson(json['charge']) : null;
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
    slug = json['slug'];
    productName = json['product_name'];
    model = json['model'];
    commissionType = json['commission_type'];
    amount = json['amount'].toString();
    tag = json['tag'];
    description = json['description'];
    note = json['note'];
    embaddedVideoLink = json['embadded_video_link'];
    maximumOrder = json['maximum_order'];
    stock = json['stock'];
    isBackOrder = json['is_back_order'];
    specification = json['specification'];
    warranty = json['warranty'];
    preOrder = json['pre_order'];
    productReview = json['product_review'];
    isSeller = json['is_seller'];
    isPhone = json['is_phone'];
    willShowEmi = json['will_show_emi'];
    //badge = json['badge'];
    isActive = json['is_active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    //language = json['language'];
    seller = json['seller'];
    //combo = json['combo'];
    createdBy = json['created_by'];
   // updatedBy = json['updated_by'];
    category = json['category'].cast<int>();
    // if (json['related_product'] != null) {
    //  // relatedProduct = <Null>[];
    //   json['related_product'].forEach((v) {
    //     relatedProduct!.add(Null.fromJson(v));
    //   });
    // }
    // if (json['filter_value'] != null) {
    //   filterValue = <Null>[];
    //   json['filter_value'].forEach((v) {
    //     filterValue!.add(Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (brand != null) {
      data['brand'] = brand!.toJson();
    }
    data['image'] = image;
    if (charge != null) {
      data['charge'] = charge!.toJson();
    }
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    data['slug'] = slug;
    data['product_name'] = productName;
    data['model'] = model;
    data['commission_type'] = commissionType;
    data['amount'] = amount;
    data['tag'] = tag;
    data['description'] = description;
    data['note'] = note;
    data['embadded_video_link'] = embaddedVideoLink;
    data['maximum_order'] = maximumOrder;
    data['stock'] = stock;
    data['is_back_order'] = isBackOrder;
    data['specification'] = specification;
    data['warranty'] = warranty;
    data['pre_order'] = preOrder;
    data['product_review'] = productReview;
    data['is_seller'] = isSeller;
    data['is_phone'] = isPhone;
    data['will_show_emi'] = willShowEmi;
    //data['badge'] = badge;
    data['is_active'] = isActive;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    //data['language'] = language;
    data['seller'] = seller;
   // data['combo'] = combo;
    data['created_by'] = createdBy;
   // data['updated_by'] = updatedBy;
    data['category'] = category;
   
    return data;
  }
}

class Brand {
  String? name;
  String? image;
  String? headerImage;
  String? slug;

  Brand({this.name, this.image, this.headerImage, this.slug});

  Brand.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    headerImage = json['header_image'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['image'] = image;
    data['header_image'] = headerImage;
    data['slug'] = slug;
    return data;
  }
}

class Charge {
  String? bookingPrice;
  String? currentCharge;
  String? discountCharge;
  String? sellingPrice;
  String? profit;
  bool? isEvent;
  String? eventId;
  bool? highlight;
  String? highlightId;
  bool? groupping;
  String? grouppingId;
  String? campaignSectionId;
  bool? campaignSection;
  String? message;

  Charge(
      {this.bookingPrice,
      this.currentCharge,
      this.discountCharge,
      this.sellingPrice,
      this.profit,
      this.isEvent,
      this.eventId,
      this.highlight,
      this.highlightId,
      this.groupping,
      this.grouppingId,
      this.campaignSectionId,
      this.campaignSection,
      this.message});

  Charge.fromJson(Map<String, dynamic> json) {
    bookingPrice = json['booking_price'].toString();
    currentCharge = json['current_charge'].toString();
    discountCharge = json['discount_charge'].toString();
    sellingPrice = json['selling_price'].toString();
    profit = json['profit'].toString();
    isEvent = json['is_event'];
    eventId = json['event_id'];
    highlight = json['highlight'];
    highlightId = json['highlight_id'];
    groupping = json['groupping'];
    grouppingId = json['groupping_id'];
    campaignSectionId = json['campaign_section_id'];
    campaignSection = json['campaign_section'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['booking_price'] = bookingPrice;
    data['current_charge'] = currentCharge;
    data['discount_charge'] = discountCharge;
    data['selling_price'] = sellingPrice;
    data['profit'] = profit;
    data['is_event'] = isEvent;
    data['event_id'] = eventId;
    data['highlight'] = highlight;
    data['highlight_id'] = highlightId;
    data['groupping'] = groupping;
    data['groupping_id'] = grouppingId;
    data['campaign_section_id'] = campaignSectionId;
    data['campaign_section'] = campaignSection;
    data['message'] = message;
    return data;
  }
}

class Images {
  int? id;
  String? image;
  bool? isPrimary;
  int? product;

  Images({this.id, this.image, this.isPrimary, this.product});

  Images.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    isPrimary = json['is_primary'];
    product = json['product'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['is_primary'] = isPrimary;
    data['product'] = product;
    return data;
  }
}
