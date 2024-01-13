import 'dart:convert';
/// id : 1028
/// brand : "marienatie"
/// name : "Pressed Foundation"
/// price : "0.0"
/// price_sign : "$"
/// currency : "USD"
/// image_link : "https://www.purpicks.com/wp-content/uploads/csm/caramel_1024x1024_e5fbf151-0cfd-42c9-a5ec-f49d6104bcbc1.jpg"
/// product_link : "https://www.purpicks.com/product/marie-natie-pressed-foundation/"
/// website_link : "https://purpicks.com/"
/// description : "A pressed foundation by MarieNatie providing a silky and flawless finish – it provides great coverage and protects skin with SPF 10.  Titanium dioxide acts as an absorbent of oil and jojoba oil helps to cleanse and moisturize the skin."
/// rating : null
/// category : "powder"
/// product_type : "foundation"
/// tag_list : ["purpicks","CertClean"]
/// created_at : "2018-06-30T19:19:31.368Z"
/// updated_at : "2018-09-02T22:52:06.609Z"
/// product_api_url : "https://makeup-api.herokuapp.com/api/v1/products/1028.json"
/// api_featured_image : "//s3.amazonaws.com/donovanbailey/products/api_featured_images/000/001/028/original/open-uri20180630-4-1u219s0?1530390378"
/// product_colors : [{"hex_value":"#F8DBC3","colour_name":"Ivory"},{"hex_value":"#ECBFA3","colour_name":"Natural Beige"},{"hex_value":"#FAE3C9","colour_name":"Sunny Beige"},{"hex_value":"#F3D2B7","colour_name":"Warm Tan"},{"hex_value":"#E7C09D","colour_name":"Tan"},{"hex_value":"#F4D3B8","colour_name":"Honey"},{"hex_value":"#D4AD8C","colour_name":"Caramel"},{"hex_value":"#D8AD91","colour_name":"Chocolate"},{"hex_value":"#C29F90","colour_name":"Deep Golden"}]

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));
String productModelToJson(ProductModel data) => json.encode(data.toJson());
class ProductModel {
  ProductModel({
      num? id, 
      String? brand, 
      String? name, 
      String? price, 
      String? priceSign, 
      String? currency, 
      String? imageLink, 
      String? productLink, 
      String? websiteLink, 
      String? description, 
      dynamic rating, 
      String? category, 
      String? productType, 
      List<String>? tagList, 
      String? createdAt, 
      String? updatedAt, 
      String? productApiUrl, 
      String? apiFeaturedImage, 
      List<ProductColors>? productColors,}){
    _id = id;
    _brand = brand;
    _name = name;
    _price = price;
    _priceSign = priceSign;
    _currency = currency;
    _imageLink = imageLink;
    _productLink = productLink;
    _websiteLink = websiteLink;
    _description = description;
    _rating = rating;
    _category = category;
    _productType = productType;
    _tagList = tagList;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _productApiUrl = productApiUrl;
    _apiFeaturedImage = apiFeaturedImage;
    _productColors = productColors;
}

  ProductModel.fromJson(dynamic json) {
    _id = json['id'];
    _brand = json['brand'];
    _name = json['name'];
    _price = json['price'];
    _priceSign = json['price_sign'];
    _currency = json['currency'];
    _imageLink = json['image_link'];
    _productLink = json['product_link'];
    _websiteLink = json['website_link'];
    _description = json['description'];
    _rating = json['rating'];
    _category = json['category'];
    _productType = json['product_type'];
    _tagList = json['tag_list'] != null ? json['tag_list'].cast<String>() : [];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _productApiUrl = json['product_api_url'];
    _apiFeaturedImage = json['api_featured_image'];
    if (json['product_colors'] != null) {
      _productColors = [];
      json['product_colors'].forEach((v) {
        _productColors?.add(ProductColors.fromJson(v));
      });
    }
  }
  num? _id;
  String? _brand;
  String? _name;
  String? _price;
  String? _priceSign;
  String? _currency;
  String? _imageLink;
  String? _productLink;
  String? _websiteLink;
  String? _description;
  dynamic _rating;
  String? _category;
  String? _productType;
  List<String>? _tagList;
  String? _createdAt;
  String? _updatedAt;
  String? _productApiUrl;
  String? _apiFeaturedImage;
  List<ProductColors>? _productColors;
ProductModel copyWith({  num? id,
  String? brand,
  String? name,
  String? price,
  String? priceSign,
  String? currency,
  String? imageLink,
  String? productLink,
  String? websiteLink,
  String? description,
  dynamic rating,
  String? category,
  String? productType,
  List<String>? tagList,
  String? createdAt,
  String? updatedAt,
  String? productApiUrl,
  String? apiFeaturedImage,
  List<ProductColors>? productColors,
}) => ProductModel(  id: id ?? _id,
  brand: brand ?? _brand,
  name: name ?? _name,
  price: price ?? _price,
  priceSign: priceSign ?? _priceSign,
  currency: currency ?? _currency,
  imageLink: imageLink ?? _imageLink,
  productLink: productLink ?? _productLink,
  websiteLink: websiteLink ?? _websiteLink,
  description: description ?? _description,
  rating: rating ?? _rating,
  category: category ?? _category,
  productType: productType ?? _productType,
  tagList: tagList ?? _tagList,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  productApiUrl: productApiUrl ?? _productApiUrl,
  apiFeaturedImage: apiFeaturedImage ?? _apiFeaturedImage,
  productColors: productColors ?? _productColors,
);
  num? get id => _id;
  String? get brand => _brand;
  String? get name => _name;
  String? get price => _price;
  String? get priceSign => _priceSign;
  String? get currency => _currency;
  String? get imageLink => _imageLink;
  String? get productLink => _productLink;
  String? get websiteLink => _websiteLink;
  String? get description => _description;
  dynamic get rating => _rating;
  String? get category => _category;
  String? get productType => _productType;
  List<String>? get tagList => _tagList;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get productApiUrl => _productApiUrl;
  String? get apiFeaturedImage => _apiFeaturedImage;
  List<ProductColors>? get productColors => _productColors;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['brand'] = _brand;
    map['name'] = _name;
    map['price'] = _price;
    map['price_sign'] = _priceSign;
    map['currency'] = _currency;
    map['image_link'] = _imageLink;
    map['product_link'] = _productLink;
    map['website_link'] = _websiteLink;
    map['description'] = _description;
    map['rating'] = _rating;
    map['category'] = _category;
    map['product_type'] = _productType;
    map['tag_list'] = _tagList;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['product_api_url'] = _productApiUrl;
    map['api_featured_image'] = _apiFeaturedImage;
    if (_productColors != null) {
      map['product_colors'] = _productColors?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// hex_value : "#F8DBC3"
/// colour_name : "Ivory"

ProductColors productColorsFromJson(String str) => ProductColors.fromJson(json.decode(str));
String productColorsToJson(ProductColors data) => json.encode(data.toJson());
class ProductColors {
  ProductColors({
      String? hexValue, 
      String? colourName,}){
    _hexValue = hexValue;
    _colourName = colourName;
}

  ProductColors.fromJson(dynamic json) {
    _hexValue = json['hex_value'];
    _colourName = json['colour_name'];
  }
  String? _hexValue;
  String? _colourName;
ProductColors copyWith({  String? hexValue,
  String? colourName,
}) => ProductColors(  hexValue: hexValue ?? _hexValue,
  colourName: colourName ?? _colourName,
);
  String? get hexValue => _hexValue;
  String? get colourName => _colourName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['hex_value'] = _hexValue;
    map['colour_name'] = _colourName;
    return map;
  }

}