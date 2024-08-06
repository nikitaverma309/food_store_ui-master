import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.menu),
              Spacer(),
              Icon(Icons.person_outline_rounded)
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Row(
            children: [
              Text(
                "I want to ",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.2),
              ),
              Text(
                "Eat",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    letterSpacing: 1.2),
              )
            ],
          )
        ],
      ),
    );
  }
}
