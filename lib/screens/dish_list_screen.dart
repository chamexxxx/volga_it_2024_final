import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:volga_it_2024_final/dishes.dart';
import 'package:volga_it_2024_final/widgets/ingredient_card.dart';

import '../models/dish.dart';

class DishListScreen extends StatefulWidget {
  const DishListScreen({super.key});

  @override
  State<DishListScreen> createState() => _DishListScreenState();
}

class _DishListScreenState extends State<DishListScreen> {
  final List<Dish> _dishes = dishes;

  void exportToFile() async {
    final Directory appDocumentsDir = await getApplicationDocumentsDirectory();
    final Directory? downloadsDir = await getDownloadsDirectory();

    final path = downloadsDir?.path ?? appDocumentsDir.path;

    final fileName = 'Export ${DateTime.now()}.json';
    final exportData = generateExportData();
    final file = File('$path/$fileName');

    file.writeAsString(exportData);
  }

  String generateExportData() {
    return jsonEncode(dishes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Список блюд'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: exportToFile,
                child: const Text("Экспортировать файл")),
            Expanded(
                child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
              itemCount: _dishes.length,
              itemBuilder: (context, index) {
                var dish = _dishes[index];

                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${dish.name}:',
                      style: const TextStyle(
                        fontSize: 23,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ...dish.ingredients.map(
                        (ingredient) => IngredientCard(ingredient: ingredient))
                  ],
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
