class Sweet {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final double price;
  final String brand;
  final String flavor;
  final String ingredients;
  final int? quantity;

  Sweet({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.brand,
    required this.flavor,
    required this.ingredients,
    this.quantity,
  });

  factory Sweet.fromJson(Map<String, dynamic> json) {
    return Sweet(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      price: (json['price'] as num).toDouble(),
      brand: json['brand'] as String,
      flavor: json['flavor'] as String,
      ingredients: json['ingredients'] as String,
      quantity: json['quantity'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
      'price': price,
      'brand': brand,
      'flavor': flavor,
      'ingredients': ingredients,
      'quantity': quantity,
    };
  }

  Sweet copyWith({
    String? id,
    String? name,
    String? description,
    String? imageUrl,
    double? price,
    String? brand,
    String? flavor,
    String? ingredients,
    int? quantity,
  }) {
    return Sweet(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      price: price ?? this.price,
      brand: brand ?? this.brand,
      flavor: flavor ?? this.flavor,
      ingredients: ingredients ?? this.ingredients,
      quantity: quantity ?? this.quantity,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Sweet && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}