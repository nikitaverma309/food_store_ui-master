import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_store_ui/generated/assets.dart';

import '../../../model/filter_model.dart';

class FilterSection extends StatefulWidget {
  const FilterSection({Key? key}) : super(key: key);

  @override
  State<FilterSection> createState() => _FilterSectionState();
}

class _FilterSectionState extends State<FilterSection> {
  int selectedIdx = 0;
  List<FilterModel> filters = [
    FilterModel(imgSrc: Assets.assetsDonut, title: "Donuts"),
    FilterModel(imgSrc: Assets.assetsHamburger, title: "Burger"),
    FilterModel(imgSrc: Assets.assetsSmotiee, title: "Smothie"),
    FilterModel(imgSrc: Assets.assetsPancake, title: "Pan Cake"),
    FilterModel(imgSrc: Assets.assetsPizza, title: "Pizza"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0),
      child: Row(
        children: [
          ...filters.map((filter) {
            int currIdx = filters.indexOf(filter);
            bool isSelected = currIdx == selectedIdx;
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 14.0),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      selectedIdx = currIdx;
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset(filter.imgSrc,
                        color: isSelected ? Colors.black : Colors.black.withOpacity(.5),),
                        decoration: BoxDecoration(
                            border: isSelected ? Border.all() : null,
                            color: isSelected
                                ? Colors.transparent
                                : Colors.blue.withOpacity(.05),
                            borderRadius: BorderRadius.all(Radius.circular(22))),
                        padding: EdgeInsets.all(12),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              filter.title,
                              style: TextStyle(
                                  fontWeight:
                                      isSelected ? FontWeight.w600 : null),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }).toList()
        ],
      ),
    );
  }
}
