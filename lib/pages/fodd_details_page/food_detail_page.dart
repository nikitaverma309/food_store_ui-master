import 'package:flutter/material.dart';
import 'package:food_store_ui/model/food_card_model.dart';
import 'package:food_store_ui/pages/fodd_details_page/widget/food_detail_top_section.dart';
import 'package:food_store_ui/pages/fodd_details_page/widget/ingredient_section.dart';

import '../../widget/custom_button.dart';

class FoodDetailPage extends StatelessWidget {
  final FoodCardModel item;

  const FoodDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      const CustomButton(
        title: "\$45.75",
        trailing: "Add to Cart",
        subtitle: "Delivery Not Included",

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FoodDetailTopSection(
              title: item.title,
              color: item.color,
              imgSrc: item.imgSrc,
            ),
            SizedBox(height: 28),
            IngredientSection(),
          ],
        ),
      ),
    );
  }
}
