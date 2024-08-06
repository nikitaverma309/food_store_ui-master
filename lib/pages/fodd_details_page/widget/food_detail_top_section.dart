import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodDetailTopSection extends StatelessWidget {
  final String title;
  final String imgSrc;
  final Color color;

  const FoodDetailTopSection(
      {Key? key,
      required this.title,
      required this.imgSrc,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * .45,
      color: color.withOpacity(.1),
      child: Column(
        children: [
          SizedBox(height: 32,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                IconButton(icon: Icon( Icons.arrow_back_outlined),onPressed: (){
                  Navigator.of(context).pop();
                }),

                Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),

              ],
            ),
          ),

          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 22),
            child: Image.asset(imgSrc),
          ),
          )
        ],
      ),
    );
  }
}
