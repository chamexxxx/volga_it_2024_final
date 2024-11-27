class Ingredient {
  final String name;
  final int calories;
  final double proteins;
  final double fats;
  final double carbohydrates;

  Ingredient(
      {required this.name,
      required this.calories,
      required this.proteins,
      required this.fats,
      required this.carbohydrates});

  Map<String, dynamic> toJson() => {
        'name': name,
        'calories': calories,
        'proteins': proteins,
        'fats': fats,
        'carbohydrates': carbohydrates
      };
}
