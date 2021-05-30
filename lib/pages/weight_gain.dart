import 'package:flutter/material.dart';

class WeightGain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weight Gain'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey.shade200,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              buildCardWidget(1, 'Homemade protein smoothies',
                  'Drinking homemade protein smoothies can be a highly nutritious and quick way to gain weight.\n\t\t\t\t1. Chocolate banana nut shake,\n\t\t\t\t2. Vanilla berry shake,\n\t\t\t\t3. Chocolate hazelnut shake,\n\t\t\t\t4. Caramel apple shake,\n\t\t\t\t5. Vanilla blueberry shake,\n\t\t\t\t6. Super green shake\nAll of these smoothies provide around 400–600 calories, along with a high amount of protein and other important vitamins and minerals.'),
              buildCardWidget(2, 'Milk',
                  'Milk has been used as a weight gainer or muscle builder for decades.\nIt provides a good balance of proteins, carbs, and fats and is a good source of calcium, as well as other vitamins and minerals'),
              buildCardWidget(3, 'Rice',
                  'Rice is a convenient, low cost carb source to help you gain weight. Just 1 cup (158 grams) of cooked white rice provides 204 calories, 44 grams of carbs, and very little fat'),
              buildCardWidget(4, 'Nuts and nut butters',
                  'Nuts and nut butters are perfect choices if you\'re looking to gain weight\nJust one small handful of raw almonds (1/4 cup) contains 170 calories, 6 grams of protein, 4 grams of fiber, and 15 grams of healthy fats'),
              buildCardWidget(5, 'Potatoes and starches',
                  'Potatoes and other starchy foods are a very easy and cost-effective way to add in extra calories.\nTry to choose one of these healthy sources of starchy carbs:\n\t\t\t1. Quinoa\n\t\t\t2. Oats\n\t\t\t3. Corn\n\t\t\t4. Buckwheat\n\t\t\t5. Potatoes and Sweet Potatoes\n\t\t\t6. Squash\n\t\t\t7. Winter root Vegetables\n\t\t\t8. Beans and Legumes'),
              buildCardWidget(6, 'Salmon and oily fish',
                  'Like red meat, salmon and oily fish are excellent sources of protein and important healthy fats.\nOut of all the nutrients that salmon and oily fish provide, omega-3 fatty acids are among the most significant and well known.'),
              buildCardWidget(7, 'Protein supplements',
                  'Taking protein supplements is a common strategy for athletes and bodybuilders who want to gain weight. There are many types available, including whey, soy, egg, and pea protein.'),
              buildCardWidget(8, 'Dried fruit',
                  'Dried fruit is a high calorie snack that also provides antioxidants and micronutrients'),
              buildCardWidget(9, 'Whole grain bread',
                  'Whole grain breads are another good carb source to help you gain weight.\nYou can make some very simple, high calorie, and well-balanced meals by combining bread with protein sources such as eggs, meat, and cheese.'),
              buildCardWidget(10, 'Avocados',
                  'Avocados are loaded with healthy fats.\nUnlike other whole fruits, avocados are fairly calorie-dense and therefore a great food to help you gain weight.'),
              buildCardWidget(11, 'Healthy cereals',
                  'Healthy cereals can be an excellent source of carbs, calories, and nutrients.'),
              buildCardWidget(12, 'Dark chocolate',
                  'High quality dark chocolate provides a ton of antioxidants and health benefits.\nDark chocolate with at least 70 percent cacao (the seed from which chocolate is made) is said to help regulate stress hormones and blood sugar levels.'),
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
              buildCardWidgetWeightGain(
                  13, 'Drink 1 table spoon honey in cold water in the morning'),
              buildCardWidgetWeightGain(14, 'Eat at least 2 whole eggs a day'),
              buildCardWidgetWeightGain(16, 'Eat high protein and carbs'),
              buildCardWidgetWeightGain(17,
                  'Eat at least a small bowl full of yoghurt for better digestion'),
              buildCardWidgetWeightGain(18, 'Get enough sleep'),
              buildCardWidgetWeightGain(19, 'Eat tuna and salmon once a week'),
              buildCardWidgetWeightGain(
                  20, 'Consume protein shakes if possible'),
              buildCardWidgetWeightGain(
                  21, 'Drink a glass of milk in the morning'),
              buildCardWidgetWeightGain(
                  22, 'Eat brown rice instead of white rice'),
              buildCardWidgetWeightGain(23, 'Eat Oats and sweet potatoes'),
              buildCardWidgetWeightGain(
                  24, 'Eat fiber rich vegetables like cucumber'),
              buildCardWidgetWeightGain(25, 'Take salad with every meal'),
              buildCardWidgetWeightGain(
                  26, 'Eat fruits like banana, kiwi, papaya, apple etc'),
              buildCardWidgetWeightGain(27, 'Drink plenty of water'),
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

  Card buildCardWidgetWeightGain(int number, String title) {
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
