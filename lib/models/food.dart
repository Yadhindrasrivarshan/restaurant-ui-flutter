class Food {
  String imgUrl;
  String description;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool highlight;
  Food(this.imgUrl, this.description, this.name, this.waitTime, this.score,
      this.cal, this.price, this.quantity, this.ingredients, this.about,
      {this.highlight = false});
  static List<Food> generatedRecommendFoods() {
    return [
      Food(
          'assets/images/dish1.png',
          'No1. in Sales',
          'Soup1',
          '50 min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallium': 'assets/images/ingre4.png',
            }
          ],
          'This is something a good dish to make')
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
          'assets/images/dish1.png',
          'No1. in Sales',
          'Soup1',
          '50 min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallium': 'assets/images/ingre4.png',
            }
          ],
          'This is something a good dish to make This is something a good dish to makeThis is something a good dish to makeThis is something a good dish to makeThis is something a good dish to makeThis is something a good dish to makeThis is something a good dish to make'),
      Food(
          'assets/images/dish1.png',
          'No1. in Sales',
          'Soup1',
          '50 min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallium': 'assets/images/ingre4.png',
            }
          ],
          'This is something a good dish to make')
    ];
  }
}
