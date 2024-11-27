import 'package:flutter/material.dart';
import 'package:volga_it_2024_final/models/ingredient.dart';

class IngredientCard extends StatelessWidget {
  const IngredientCard({super.key, required this.ingredient});

  final Ingredient ingredient;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ingredient.name,
          style: const TextStyle(fontSize: 20),
        ),
        Text(
            'КБЖУ: ${ingredient.calories}/${ingredient.proteins}/${ingredient.fats}/${ingredient.carbohydrates}'),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
