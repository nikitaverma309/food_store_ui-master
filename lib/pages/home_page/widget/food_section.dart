import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_store_ui/generated/assets.dart';
import 'package:food_store_ui/model/food_card_model.dart';

import '../../../widget/food_card.dart';

class FoodSection extends StatelessWidget {
  const FoodSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<FoodCardModel> foodList = [
      FoodCardModel(
          color: Colors.red,
          title: "Nuts Caramel",
          imgSrc: Assets.donutsDonut1,
          price: 36),
      FoodCardModel(
          color: Colors.blue,
          title: "Red Velvet",
          imgSrc: Assets.donutsDonut2,
          price: 52),
      FoodCardModel(
          color: Colors.green,
          title: "Strawberry",
          imgSrc: Assets.donutsDonut3,
          price: 44),
      FoodCardModel(
          color: Colors.orange,
          title: "Choco Tap",
          imgSrc: Assets.donutsDonut4,
          price: 48),
      FoodCardModel(
          color: Colors.pink,
          title: "Sweet Holes",
          imgSrc: Assets.donutsDonut5,
          price: 32),
      FoodCardModel(
          color: Colors.indigo,
          title: "Healthy Donut",
          imgSrc: Assets.donutsDonut6,
          price: 38),
      FoodCardModel(
          color: Colors.red,
          title: "Cake Donut",
          imgSrc: Assets.donutsDonut7,
          price: 62),
      FoodCardModel(
          color: Colors.green,
          title: "Spudnut Donut",
          imgSrc: Assets.donutsDonut8,
          price: 42),
    ];
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: foodList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          mainAxisSpacing: 16,
          childAspectRatio: .7,
          crossAxisSpacing: 16),
      itemBuilder: (BuildContext context, int index) {
        return FoodCard(
          item: foodList[index],
        );
      },
    );
  }
}
