import 'package:flutter/material.dart';
import 'package:untitled5/dummy_data.dart';

import '../widgets/meal_item.dart';

class CategoriesMealScreen extends StatelessWidget {
  static const routeName = '/categories-meal-screen';

  // final String categoryId, categoryTitle;
  // const CategoriesMealScreen({Key? key, required this.categoryId, required this.categoryTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final filteredMeals =
        Dummy_Meals.where((meal) => meal.categories.contains(categoryId))
            .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) => MealItem(
          id: filteredMeals[index].id,
          title: filteredMeals[index].title,
          image: filteredMeals[index].imageUrl,
          duration: filteredMeals[index].duration,
          complexity: filteredMeals[index].complexity,
          affordability: filteredMeals[index].affordability,
        ),
        itemCount: filteredMeals.length,
      ),
    );
  }
}
