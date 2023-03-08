import 'package:flutter/material.dart';
import 'package:recipe_clone/recipes.dart';

class RecipeDetails extends StatefulWidget {
  const RecipeDetails({super.key, required this.recipe});
  final Recipe recipe;

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  int _sliderValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Recipe details"),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Image(image: AssetImage(widget.recipe.imageUrl)),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              child: Text(widget.recipe.label),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: widget.recipe.ingredients.length,          
                  padding: const EdgeInsets.all(10),
                  itemBuilder: (BuildContext context, int index) {
                    final ingredient = widget.recipe.ingredients[index];
                    return Text(
                        "${ingredient.quantity * _sliderValue} ${ingredient.measure} ${ingredient.name}");
                  }),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              label: '${_sliderValue * widget.recipe.servings} servings',
              value: _sliderValue.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  _sliderValue = newValue.round();
                });
              },
              activeColor: Colors.blue,
              inactiveColor: Colors.grey,
            )
          ]),
        )));
  }
}
