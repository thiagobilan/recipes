import 'package:flutter/material.dart';
import 'package:recipes/components/meal_item.dart';
import '../models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> _favoriteMeals;
  const FavoriteScreen(this._favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (_favoriteMeals.isEmpty) {
      return Center(
        child: Text('Nenhuma Refeição favoritaada!!'),
      );
    } else {
      return ListView.builder(
        itemCount: _favoriteMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(_favoriteMeals[index]);
        },
      );
    }
  }
}
