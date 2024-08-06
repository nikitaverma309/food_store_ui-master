import 'package:flutter/material.dart';
import 'package:food_store_ui/pages/home_page/widget/filter_section.dart';
import 'package:food_store_ui/pages/home_page/widget/food_section.dart';
import 'package:food_store_ui/pages/home_page/widget/top_section.dart';

import '../../widget/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const
      CustomButton(
        title: "2 Items | \$45",
        trailing: "View Cart",
        subtitle: "Delivery Charges Included",

      ),
      body: SafeArea(
        child: Column(
          children: [
            TopSection(),
            SizedBox(
              height: 22,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [


                    FilterSection(),
                    SizedBox(
                      height: 22,
                    ),
                    FoodSection(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
