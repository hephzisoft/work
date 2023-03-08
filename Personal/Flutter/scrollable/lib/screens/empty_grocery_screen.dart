import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/models.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Replace and add layout widgets
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset(
                  'assets/fooderlich_assets/empty_list.png',
                ),
              ),
            ),
            const Text(
              'No Groceries',
              style: TextStyle(
                fontSize: 21.0,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              'Shopping for ingredients?\n'
              'Tap the + button to write them down!',
              textAlign: TextAlign.center,
            ),
            MaterialButton(
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Text('Browse Recipe'),
              color: Colors.green,
              onPressed: () {
                Provider.of<TabManager>(context, listen: false).goToRecipe();
              },
            )
          ],
        ),
      ),
    );
  }
}
