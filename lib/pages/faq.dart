import 'package:flutter/material.dart';

class FAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: [
            buildFaq("Muscle weighs more than fat. True or False?",
                "False. A pound is a pound regardless of whether the pound is fat or muscle. The truth about muscle is that it's denser than fat and takes up a smaller amount of space in the body. In fact, scientists estimate that 1 pound of muscle occupies about 22% less space than 1 pound of fat!"),
            buildFaq(
                "Maintaining physical fitness requires major lifestyle changes. True or False?",
                "False. Fitness can be achieved through small changes in what you eat and your level of activity. It's really that simple. Remember that you can start out slowly; work your way up to a higher level of activity, and implement more dietary changes over time. Patience is essential. Don't try to do too much too soon, and don't quit before you have a chance to experience the rewards of improved fitness and a healthy diet!"),
            buildFaq("\"No pain, no gain\" is a workout myth. True or False?",
                "True. \"No pain, no gain\" is a workout myth because while some muscle aches and pains are normal when beginning a new fitness routine, many types of pain are bad for you. According to Jeffrey Berg, an orthopedic surgeon and team physician for the Washington Redskins, \"There are other aches and pains, such as joint pain, bone pain, muscle strains, and ligament or tendon strains, which are bad, and you should back off of because they'll get worse if you ignore them.\" He adds, \"Always ease into an exercise plan to avoid injury. The recommendation is if you're healthy and you know it, you can start exercising, but err on the side of being too slow than too fast to avoid injury.\""),
            buildFaq(
                "Weight loss should be the most important goal of fitness and exercise. True or False?",
                "False. It's a fact that weight loss is the main reason people exercise at all, but losing weight is certainly not the only benefit of exercising and should therefore not be the main goal. If you're starting a fitness program, don't make weight loss your only goal! Strive to feel better or to have more energy. You'll get more out of your program if you notice the small payoffs that exercise provides in a very short amount of time."),
            buildFaq("You should warm up before exercising. True or False?",
                "True. Each workout should begin with a warm-up. A warm-up should include 5 to 10 minutes of exercise such as walking, slow jogging, knee lifts, arm circles, and/or trunk rotations. Warming up is important to help prevent injury. It also helps to maximize benefits from exercise."),
            buildFaq(
                "The more you sweat during a workout, the more fat the body is burning. True or False?",
                "False. \"This is false,\" says Cedric Bryant, chief exercise physiologist for the American Council on Exercise. \"The amount you sweat is indicative of your body's ability to maintain its normal body temperature. You sweat when your body starts to store heat so you can experience cooling via evaporation of that sweat. So it doesn't correlate to how much energy, or calories, is being expended.\""),
            buildFaq(
                "A desirable level of fitness can be achieved through as little as how many workouts per week?",
                "3. Frequency, duration, intensity, and what kinds of exercises you do should be determined by what you are trying to accomplish. Your goals, your present fitness level, age, health, skills, interests, and convenience are among the factors you should consider. Still, you can reach your fitness goals in as little as three workouts per week!"),
            buildFaq(
                "Older adults are least likely to benefit from physical activity. True or False?",
                "False. The best thing about regular physical activity is that everyone can benefit from it. You are never too old to enjoy the benefits of regular physical activity! Being physically active can prevent and help treat many of the most common chronic medical conditions associated with aging. Physical activity is one of the most important steps older adults can take to maintain physical and mental health and quality of life."),
            buildFaq(
                "Active people need extra protein or protein supplements to build muscles. True or False?",
                "False. Muscles develop from training and exercise. Extra servings of protein in foods or protein supplements do not assist in muscle development. A certain amount of protein is needed to help build the muscles, but a nutritious, balanced diet that includes 6-7 ounces from the meat/bean/egg group and 2-3 servings of dairy every day will supply all of the protein that the muscles need."),
            buildFaq(
                "Even moderate exercise reduces the risk of heart disease, diabetes, hypertension, and obesity. True or False?",
                "True. Research shows that exercise is the silver bullet for a better quality of life. Not only does regular exercise aid in weight loss, it reduces your risk for several chronic diseases and conditions such as heart disease, high blood pressure (hypertension), stroke, type 2 diabetes, obesity, and osteoporosis."),
            buildFaq(
                "Crunches and sit-ups are the best way to lose belly fat. True or False?",
                "False. Forget doing hundreds of crunches and sit-ups in an effort to lose belly fat. The truth is that on their own, they are not likely to help the body lose that stubborn gut. Here is what works: a full-body exercise routine that builds lean muscle all over. The best plan for this is regular exercise, resistance training, and a healthy, calorie-controlled diet."),
            buildFaq("Does muscle burn calories even when the body is at rest?",
                "Yes. When you exercise, you use muscle. This helps build muscle mass, and muscle tissue burns more calories than body fat, even when the body at rest. According to Christopher Wharton, PhD, a certified personal trainer and researcher with the Rudd Center for Food Policy and Obesity at Yale University, 10 pounds of muscle would burn 50 calories in a day spent at rest, while 10 pounds of fat would burn 20 calories."),
            buildFaq(
                "Working out at a gym will provide the best results. True or False?",
                "False. Believe it or not, you can skip the gym. There are plenty of exercises you can do at home or outdoors using your own body weight and gravity. Examples of some easy at-home exercises are push-ups, planks, jumping jacks, squats, and lunges."),
            buildFaq(
                "The workout term aerobic exercise is interchangeable with which term?",
                "Cardio. The term aerobic exercise or aerobics is interchangeable with the term cardio. Cardio refers to cardiovascular fitness exercises. Both terms refer to brisk physical activity that requires the heart and lungs to work harder to meet the body's increased oxygen demand. Aerobic exercise (cardio) promotes the circulation of oxygen through the blood. Examples of aerobic exercise include running, swimming, and cycling."),
            buildFaq(
                "Strength training, such as lifting weights, will result in a bulky appearance. True or False?",
                "False. It is not true that lifting weights will result in a bulky appearance. According to Cedric Bryant, chief exercise physiologist for the American Council on Exercise, \"This is a myth that deters a lot of women from strength training, when in fact, what determines the amount of muscle bulk a person has is largely dependent on genetic factors.\""),
          ],
        ),
      )),
    );
  }

  Column buildFaq(String question, String answer) {
    return Column(
      children: [
        Card(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  'Q',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                Container(
                  height: 35,
                  child: VerticalDivider(
                    thickness: 1,
                    width: 20,
                  ),
                ),
                Flexible(
                  child: Text(
                    question,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Flexible(
                child: Card(
                  color: Colors.blue,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      answer,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                'A',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
