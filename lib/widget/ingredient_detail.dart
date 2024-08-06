import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_store_ui/model/ingredient_model.dart';

class IngredientDetail extends StatelessWidget {
  final IngredientModel ingredient;

  const IngredientDetail({Key? key, required this.ingredient})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          border: Border.all(width: .7, color: Colors.black.withOpacity(.6)),
          borderRadius: const BorderRadius.all(Radius.circular(300)),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 22,
            ),
            Text(
              ingredient.title,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 4,),
            Text(
              ingredient.subTitle,
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.black.withOpacity(.6),
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 4,),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blue.withOpacity(.15)),
              child: Center(child: Text("${ingredient.amount}%",style: TextStyle(
                fontWeight: FontWeight.w700,fontSize: 16
              ),)),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
