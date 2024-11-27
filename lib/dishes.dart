import 'models/dish.dart';
import 'models/ingredient.dart';

final dishes = [
  Dish(name: 'Суп из индейки с лапшой', ingredients: [
    Ingredient(
        name: 'Филе индейки',
        calories: 201,
        proteins: 13.2,
        fats: 15.9,
        carbohydrates: 0),
    Ingredient(
        name: 'Лапша',
        calories: 138,
        proteins: 4.5,
        fats: 2.1,
        carbohydrates: 25),
    Ingredient(
        name: 'Картошка',
        calories: 76,
        proteins: 2,
        fats: 0.4,
        carbohydrates: 16.1),
    Ingredient(
        name: 'Морковь',
        calories: 35,
        proteins: 1.3,
        fats: 0.1,
        carbohydrates: 6.9),
    Ingredient(
        name: 'Репчатый лук',
        calories: 47,
        proteins: 1.4,
        fats: 0,
        carbohydrates: 10.4),
    Ingredient(
        name: 'Растительное масло',
        calories: 880,
        proteins: 0,
        fats: 100,
        carbohydrates: 0),
    Ingredient(
        name: 'Лавровый лист',
        calories: 313,
        proteins: 7.6,
        fats: 8.4,
        carbohydrates: 48.7)
  ]),
  Dish(name: 'Гирос с овощами', ingredients: [
    Ingredient(
        name: 'Кабачок',
        calories: 24,
        proteins: 0.6,
        fats: 0.3,
        carbohydrates: 4.6),
    Ingredient(
        name: 'Красный лук',
        calories: 42,
        proteins: 1.4,
        fats: 0,
        carbohydrates: 9.1),
    Ingredient(
        name: 'Болгарский перец',
        calories: 26,
        proteins: 0.99,
        fats: 0.3,
        carbohydrates: 6.03),
    Ingredient(
        name: 'Пшеничная лепешка',
        calories: 327,
        proteins: 8.4,
        fats: 8.3,
        carbohydrates: 54.6)
  ]),
];
