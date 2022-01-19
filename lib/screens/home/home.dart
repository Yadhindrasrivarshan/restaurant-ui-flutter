import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mainapp/constants/colors.dart';
import 'package:mainapp/models/restaurant.dart';
import 'package:mainapp/screens/home/widget/food_list.dart';
import 'package:mainapp/screens/home/widget/food_list_view.dart';
import 'package:mainapp/screens/home/widget/restaurantInfo.dart';
import 'package:mainapp/widgets/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurant();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: KBackground,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(Icons.arrow_back_ios_outlined, Icons.search_outlined),
            RestaurantInfo(),
            FoodList(selected, (int index) {
              setState(() {
                selected = index;
              });
              pageController.jumpToPage(index);
            }, restaurant),
            Expanded(
                child: FoodListView(
              selected,
              (int index) {
                setState(() {
                  selected = index;
                });
              },
              pageController,
              restaurant,
            )),
            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: SmoothPageIndicator(
                controller: pageController,
                count: restaurant.menu.length,
                effect: CustomizableEffect(
                  dotDecoration: DotDecoration(
                    width: 8,
                    height: 8,
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  activeDotDecoration: DotDecoration(
                      width: 10,
                      height: 10,
                      color: KBackground,
                      borderRadius: BorderRadius.circular(10),
                      dotBorder: DotBorder(
                        color: KPrimaryColor,
                        padding: 2,
                        width: 2,
                      )),
                ),
                onDotClicked: (index) => pageController.jumpToPage(index),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => print("I am clicked"),
          backgroundColor: KPrimaryColor,
          elevation: 2,
          child: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
            size: 30,
          ),
        ));
  }
}
