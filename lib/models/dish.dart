import 'package:volga_it_2024_final/models/ingredient.dart';

class Dish {
  final String name;
  final List<Ingredient> ingredients;

  Dish({required this.name, required this.ingredients});

  Map<String, dynamic> toJson() => {
        'name': name,
        'ingredients': ingredients.map((e) => e.toJson()).toList()
      };
}
