//shoe item
class Shoe {
  int? id;
  String? name;
  String? description;
  String? imagePath;
  int? price;
  ShoeCategory? category;
  List<Size>? availableSize;

  Shoe({ 
    this.name,
    this.description,
    this.imagePath,
    this.price,
    this.category,
    this.availableSize,
  });

//read json
  Shoe.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    imagePath = json['imagePath'];
    price = json['price'];
    category = json['category'];
    availableSize = json['availableSize'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['imagePath'] = imagePath;
    data['price'] = price;
    data['catgory'] = category;
    data['availableSize'] = availableSize;
    return data;
  }
}

//shoe categories
enum ShoeCategory {
  Air,
  Football,
  Lifestyle,
  Running,
}

//shoe size
class Size {
  String name;

  Size({
    required this.name,
  });
}
