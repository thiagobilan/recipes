import 'package:flutter/material.dart';
import 'package:recipes/components/meal_item.dart';
import 'package:recipes/models/category.dart';
import '../data/dummy_data.dart';
import '../models/meal.dart';

class CategoriesMealsScreen extends StatelessWidget {
  // final Category category;

  // const CategoriesMealsScreen (this.category);

  final List<Meal> mels;
  const CategoriesMealsScreen(this.mels);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;
    final categoryMeals = mels.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          category.title,
        ),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(categoryMeals[index]);
        },
      ),
    );
  }
}
