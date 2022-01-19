import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mainapp/models/restaurant.dart';
import 'package:mainapp/screens/detail/detail.dart';
import 'package:mainapp/screens/home/widget/foodItem.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pagecontroller;
  final Restaurant restaurant;
  FoodListView(
      this.selected, this.callback, this.pagecontroller, this.restaurant);
  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pagecontroller,
        onPageChanged: (index) => callback(index),
        children: category
            .map((e) => ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailPage(
                              restaurant.menu[category[selected]]![index])));
                    },
                    child:
                        FoodItem(restaurant.menu[category[selected]]![index])),
                separatorBuilder: (_, index) => SizedBox(height: 15),
                itemCount: restaurant.menu[category[selected]]!.length))
            .toList(),
      ),
    );
  }
}
