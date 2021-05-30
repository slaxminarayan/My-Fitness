import 'package:flutter/material.dart';

class Immunity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Immunity'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey.shade200,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              buildCardWidget(1, 'Citrus fruits',
                  'Most people turn straight to vitamin C after they’ve caught a cold. That’s because it helps build up your immune system.\n\t\t\t1. Grapefruit\n\t\t\t2. Oranges\n\t\t\t3. Clementines\n\t\t\t4. Tangerines\n\t\t\t5. Lemons\n\t\t\t6. Limes'),
              buildCardWidget(2, 'Red bell peppers',
                  'If you think citrus fruits have the most vitamin C of any fruit or vegetable, think again. Ounce for ounce, red bell peppers contain almost 3 times as much vitamin C as a Florida orange. They’re also a rich source of beta carotene.'),
              buildCardWidget(3, 'Broccoli',
                  'Broccoli is supercharged with vitamins and minerals. Packed with vitamins A, C, and E, as well as fiber and many other antioxidants, broccoli is one of the healthiest vegetables you can put on your plate.'),
              buildCardWidget(4, 'Garlic',
                  'Garlic is found in almost every cuisine in the world. It adds a little zing to food and it’s a must-have for your health'),
              buildCardWidget(5, 'Ginger',
                  'Ginger is another ingredient many turn to after getting sick. Ginger may help decrease inflammation, which can help reduce a sore throat and inflammatory illnesses. Ginger may help with nausea as well.'),
              buildCardWidget(6, 'Spinach',
                  'Spinach made our list not just because it’s rich in vitamin C — it’s also packed with numerous antioxidants and beta carotene, which may both increase the infection-fighting ability of our immune systems.'),
              buildCardWidget(7, 'Yogurt',
                  'Look for yogurts that have the phrase “live and active cultures” printed on the label, like Greek yogurt. These cultures may stimulate your immune system to help fight diseases.\nTry to get plain yogurts rather than the kind that are flavored and loaded with sugar. You can sweeten plain yogurt yourself with healthy fruits and a drizzle of honey instead.'),
              buildCardWidget(8, 'Almonds',
                  'When it comes to preventing and fighting off colds, vitamin E tends to take a backseat to vitamin C. However, this powerful antioxidant is key to a healthy immune system.\nIt’s a fat-soluble vitamin, which means it requires the presence of fat to be absorbed properly. Nuts, such as almonds, are packed with the vitamin and also have healthy fats.'),
              buildCardWidget(9, 'Sunflower seeds',
                  'Sunflower seeds are full of nutrients, including phosphorous, magnesium, and vitamins B-6 and E.\nVitamin E is important in regulating and maintaining immune system function. Other foods with high amounts of vitamin E include avocados and dark leafy greens.'),
              buildCardWidget(10, 'Turmeric',
                  'You may know turmeric as a key ingredient in many curries. This bright yellow, bitter spice has also been used for years as an anti-inflammatory in treating both osteoarthritis and rheumatoid arthritis.'),
              buildCardWidget(11, 'Green tea',
                  'Both green and black teas are packed with flavonoids, a type of antioxidant. Where green tea really excels is in its levels of epigallocatechin gallate (EGCG), another powerful antioxidant.'),
              buildCardWidget(12, 'Papaya',
                  'Papaya is another fruit loaded with vitamin C. You can find double Source the daily recommended amount of vitamin C in a single medium fruit. Papayas also have a digestive enzyme called papain that has anti-inflammatory effects.'),
              buildCardWidget(13, 'Kiwi',
                  'Like papayas, kiwis are naturally full of a ton of essential nutrients, including folate, potassium, vitamin K, and vitamin C.'),
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
              buildCardWidgetImmunity(14, 'Broccoli'),
              buildCardWidgetImmunity(15, 'Dark chocolate'),
              buildCardWidgetImmunity(16, 'Dates'),
              buildCardWidgetImmunity(17, 'Oily fish'),
              buildCardWidgetImmunity(18, 'Spinach'),
              buildCardWidgetImmunity(19, 'Blueberries'),
              buildCardWidgetImmunity(20, 'Fennel flower seeds[kalonji]'),
              buildCardWidgetImmunity(21, 'Fruit juice'),
              buildCardWidgetImmunity(22, 'Ginger and apple cider juice'),
              buildCardWidgetImmunity(23, 'Chicken soup'),
              buildCardWidgetImmunity(24, 'Almonds and walnuts'),
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

  Card buildCardWidgetImmunity(int number, String title) {
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
