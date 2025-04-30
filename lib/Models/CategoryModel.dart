class Category {
  final int id;
  final String name;
  final String imagePath;

  Category({
    required this.id,
    required this.name,
    required this.imagePath,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      imagePath: json['image'] ?? "",
    );
  }
}
