import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meal> favouritesMeals;

  const FavouritesScreen(this.favouritesMeals, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (favouritesMeals.isEmpty) {
      return const Center(
        child: Text('You have no favourites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favouritesMeals[index].id,
            title: favouritesMeals[index].title,
            imageUrl: favouritesMeals[index].imageUrl,
            affordability: favouritesMeals[index].affordability,
            complexity: favouritesMeals[index].complexity,
            duration: favouritesMeals[index].duration,
          );
        },
        itemCount: favouritesMeals.length,
      );
    }
  }
}
