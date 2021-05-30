import 'package:flutter/material.dart';

class FatLoss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fat Loss'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey.shade200,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              buildCardWidget(1, 'Apple Cider Vinegar',
                  'Apple cider vinegar is incredibly popular in the natural health community.\nIt’s often used in condiments like dressings or vinaigrettes, and some people even dilute it in water and drink it.\nSeveral human-based studies suggest that apple cider vinegar can be useful for weight loss.'),
              buildCardWidget(2, 'Whole Eggs',
                  'Once feared for being high in cholesterol, whole eggs have been making a comeback.\nAlthough a high intake of eggs raises the levels of “bad” LDL-cholesterol in some people, they are one of the best foods to eat if you need to lose weight. They are high in protein and fat, and are very satiating.'),
              buildCardWidget(3, 'Leafy Greens',
                  'Leafy greens include kale, spinach, collards, swiss chards and a few others.\nThey have several properties that make them perfect for a weight loss diet, such as being low in calories and carbohydrates and loaded with fiber.'),
              buildCardWidget(4, 'Salmon',
                  'Fatty fish like salmon is incredibly healthy and very satisfying, keeping you full for many hours with relatively few calories.\nSalmon is loaded with high-quality protein, healthy fats and various important nutrients.\nFish — and seafood in general — may also supply a significant amount of iodine.\nThis nutrient is necessary for proper thyroid function, which is important to keep your metabolism running optimally'),
              buildCardWidget(5, 'Cruciferous Vegetables',
                  'Cruciferous vegetables include broccoli, cauliflower, cabbage and Brussels sprouts.\nLike other vegetables, they’re high in fiber and tend to be incredibly filling.\nWhat’s more, these types of veggies generally contain decent amounts of protein.'),
              buildCardWidget(6, 'Boiled Potatoes',
                  'White potatoes seem to have fallen out of favor for some reason.\nHowever, they have several properties that make them a perfect food — both for weight loss and optimal health.\nThey contain an incredibly diverse range of nutrients — a little bit of almost everything you need.'),
              buildCardWidget(7, 'Beans and Legumes',
                  'Some beans and other legumes can be beneficial for weight loss.\nThis includes lentils, black beans, kidney beans and some others.\nThese foods tend to be high in protein and fiber, which are two nutrients that have been shown to lead to satiety.'),
              buildCardWidget(8, 'Soups',
                  'As mentioned above, meals and diets with a low energy density tend to make people eat fewer calories.\nMost foods with a low energy density are those that contain lots of water, such as vegetables and fruits.\nBut you can also just add water to your food, making a soup.'),
              buildCardWidget(9, 'Cottage Cheese',
                  'Dairy products tend to be high in protein.\nOne of the best ones is cottage cheese, which — calorie for calorie — is mostly protein with very few carbs and little fat.'),
              buildCardWidget(10, 'Avocados',
                  'Avocados are a unique fruit.\nWhile most fruits are high in carbs, avocados are loaded with healthy fats.\nThey’re particularly high in monounsaturated oleic acid, the same type of fat found in olive oil.'),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(15),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'List Of Some More Things...',
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              buildCardWidgetFatLoss(
                  11, 'Drink 1 table spoon honey in warm water in the morning'),
              buildCardWidgetFatLoss(12, 'Drink Coffee'),
              buildCardWidgetFatLoss(13, 'Eat at least 2 egg whites a day'),
              buildCardWidgetFatLoss(
                  14, 'Drink a cup of Green tea in the evening'),
              buildCardWidgetFatLoss(15, 'Eat fatty fish'),
              buildCardWidgetFatLoss(16, 'Eat high protein food'),
              buildCardWidgetFatLoss(17,
                  'Eat at least a small bowl full of yoghurt for better digestion'),
              buildCardWidgetFatLoss(18, 'Get enough sleep'),
              buildCardWidgetFatLoss(19, 'Eat 2/4 bananas a day'),
              buildCardWidgetFatLoss(20, 'Avoid Rice'),
              buildCardWidgetFatLoss(21, 'Eat whole grains'),
              buildCardWidgetFatLoss(22, '10/12 Almonds and 2/3 walnuts a day'),
              buildCardWidgetFatLoss(23, 'Consume olive oil with food'),
              buildCardWidgetFatLoss(24, 'Eat spinach'),
              buildCardWidgetFatLoss(25, 'Eat salad with every meal'),
              buildCardWidgetFatLoss(26, 'Drink plenty of water'),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCardWidget(int number, String title, String content) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  number.toString() + '. ',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Flexible(
                  child: Text(
                    title,
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              content,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Card buildCardWidgetFatLoss(int number, String title) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  number.toString() + '. ',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Flexible(
                  child: Text(
                    title,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
