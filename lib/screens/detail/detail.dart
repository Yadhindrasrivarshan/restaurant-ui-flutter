import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mainapp/constants/colors.dart';
import 'package:mainapp/models/food.dart';
import 'package:mainapp/screens/detail/widget/food_detail.dart';
import 'package:mainapp/screens/detail/widget/food_image.dart';
import 'package:mainapp/widgets/custom_app_bar.dart';

class DetailPage extends StatelessWidget {
  final Food food;
  DetailPage(this.food);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: SingleChildScrollView(
        child: Column(children: [
          CustomAppBar(
            Icons.arrow_back_ios_outlined,
            Icons.favorite_outlined,
            leftCallback: () => Navigator.of(context).pop(),
          ),
          FoodImg(food),
          FoodDetail(food),
        ]),
      ),
      floatingActionButton: Container(
        width: 100,
        height: 56,
        child: RawMaterialButton(
            onPressed: () => print("clicked"),
            fillColor: KPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            elevation: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Text(food.quantity.toString(),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                )
              ],
            )),
      ),
    );
  }
}
