import 'package:flutter/material.dart';

// Class 'Ingredients' to display how a single Ingredient
// would be represented in the Ingredient section.  
class Ingredients extends StatelessWidget {
  final String image;
  final String name;
  final String weight;

  // Constructor to define the ingredient image, name and weight values
  const Ingredients({
    Key? key,
    required this.image,
    required this.name,
    required this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent, width: 2),
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey.withAlpha(50),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Row containing ingreident image and name
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.transparent, width: 2),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(10),
                //Ingredient image
                child: Image.asset(image, fit: BoxFit.cover)
              ),

              //Ingredient name
              const SizedBox(width: 15),
              Text(
                name,
                style: const TextStyle( fontSize: 18, fontWeight: FontWeight.w700)
              ),
            ],
          ),

          // Ingredient weight
          Text(
            "$weight g",
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
        ],

      ),
    );
  }
}


// Class 'IngredientSetion' to display all the Ingredients
// available in the Ingredients Section
class IngredientSection extends StatelessWidget {
  const IngredientSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        //Header containing Title and number of Ingredients
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Title
            Text(
              "Ingredients",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
            ),

            // Number of Ingredients
            Text(
              "5 items",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],

        ),

        // Ingredient 1
        SizedBox(height: 15),
        Ingredients(image: "../assets/images/noodles.png", name: "Bread", weight: "600"),

        // Ingredient 2
        SizedBox(height: 15),
        Ingredients(image: "../assets/images/sushi.png", name: "Eggs", weight: "200"),

        // Ingredient 3
        SizedBox(height: 15),
        Ingredients(image: "../assets/images/noodles.png", name: "Milk", weight: "200"),

        SizedBox(height: 15),
      ],
    );
  }
}
