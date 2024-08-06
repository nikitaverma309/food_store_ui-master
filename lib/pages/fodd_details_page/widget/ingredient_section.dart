import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../model/ingredient_model.dart';
import '../../../widget/ingredient_detail.dart';

class IngredientSection extends StatelessWidget {
  const IngredientSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<IngredientModel> ingredientList = [
      IngredientModel(title: "Sugar", subTitle: "8 Gram", amount: 2),
      IngredientModel(title: "Salt", subTitle: "8 Gram", amount: .3),
      IngredientModel(title: "Fat", subTitle: "12 Gram", amount: 12),
      IngredientModel(title: "Energy", subTitle: "140 Kcal", amount: 40),
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ingredients",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              ...ingredientList.map((ingredient) => IngredientDetail(
                    ingredient: ingredient,
                  ))
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            "Details",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Text(
              "The Sweet And Subtle Salty Combo of Chocolate Meets Caramel. Introduce The Caramel Duo To Your Mouth!",
              style: TextStyle(
                  fontSize: 14,
                  letterSpacing: 1.1,
                  height: 1.4,
                  color: Colors.black.withOpacity(.8)),
            ),
          ),
        ],
      ),
    );
  }
}
