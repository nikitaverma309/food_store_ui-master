import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final String subtitle;
  final String trailing;

  const CustomButton(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 2,),
              Text(
                subtitle,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(.8)),
              )
            ],
          ),
          Spacer(),
          Text(
            trailing,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                decoration: TextDecoration.underline),
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          border: Border.all(color: Colors.black.withOpacity(.5,),width: .6)),
    );
  }
}
