import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_store_ui/model/food_card_model.dart';

import '../pages/fodd_details_page/food_detail_page.dart';

class FoodCard extends StatelessWidget {
  final FoodCardModel item;

  const FoodCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (builder) {
          return FoodDetailPage(
            item: item,
          );
        }));
      },
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
                color: item.color.withOpacity(.05),
                borderRadius: BorderRadius.all(Radius.circular(22))),
            child: Column(
              children: [
                SizedBox(
                  height: height * .05,
                ),
                Expanded(child: Image.asset(item.imgSrc)),
                Text(
                  item.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Dunkin's",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(.8)),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.favorite_border)),
                    Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Add",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 16,
                              decoration: TextDecoration.underline),
                        ))
                  ],
                )
              ],
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                  color: item.color.withOpacity(.15),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(22),
                    bottomLeft: Radius.circular(18),
                  )),
              child: Text(
                "\$ ${item.price}",
                style: TextStyle(
                    color: item.color,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
