import 'package:flutter/material.dart';

import '../model/workoutshow.dart';

class WeightGainExcercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weight Gain'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              buildListTileWorkOutShow(
                context,
                'Standing Overhead Dumbbell Presses',
                'sodp.webm',
                'Compound exercises, which utilize multiple joints and muscles, are perfect for busy bees as they work several parts of your body at once. A standing overhead press isn’t only one of the best exercises you can do for your shoulders, but it also engages your upper back and core.',
                '1. Pick a light set of dumbbells — we recommend 10 pounds to start — and start by standing, either with your feet shoulder-width apart or staggered. Move the weights overhead so your upper arms are parallel to the floor. \n\n 2. Bracing your core, begin to push up until your arms are fully extended above your head. Keep your head and neck stationary.\n\n 3. After a brief pause, bend your elbows and lower the weight back down until your triceps muscle is parallel to the floor again. \n\n4. Complete 3 sets of 12 reps.',
              ),
              buildListTileWorkOutShow(
                context,
                'Dumbbell Rows',
                'dumbellrows.mp4',
                'Not only will these make your back look killer in that dress, but dumbbell rows are also another compound exercise that strengthens multiple muscles in your upper body. Choose a moderate-weight dumbbell and ensure that you’re squeezing at the top of the movement.',
                '1. Start with a dumbbell in each hand. We recommend no more than 10 pounds for beginners.\n\n2. Bend forward at the waist so your back is at a 45-degree angle to the ground. Be certain not to arch your back. Let your arms hang straight down. Ensure your neck is in line with your back and your core is engaged.\n\n3. Starting with your right arm, bend your elbow and pull the weight straight up toward your chest, making sure to engage your lat, and stopping just below your chest.\n\n4. Return to the starting position and repeat with the left arm. This is one rep. Repeat 10 times for 3 sets.',
              ),

// Dont Know
              buildListTileWorkOutShow(
                  context,
                  'Chair Squat',
                  'chairsquat.mp4',
                  'Squat to strengthen your legs and core, which will make everyday movements easier. Starting with a chair underneath you will help you master proper form.',
                  '1. Stand in front of the chair with your feet shoulder-width apart, toes pointed slightly out. \n2. Hinging at your hips and bending your knees, lower back and down until your bottom touches the chair, allowing your arms to extend out in front of you. \n3. Push up through your heels and return to the starting position.'),
              buildListTileWorkOutShow(
                context,
                'Pushups',
                'pushups.webm',
                'Drop and give me 20! Pushups are one of the most basic, yet effective, body weight moves you can perform because of the number of muscles that are recruited to perform them.',
                '1. Start in a plank position. Your core should be tight, shoulders pulled down and back, and your neck neutral.\n\n 2. Bend your elbows and begin to lower your body down to the floor. When your chest grazes it, extend your elbows and return to the start. Focus on keeping your elbows close to your body during the movement. \n\n3. Complete 3 sets of as many reps as possible.',
              ),

              buildListTileWorkOutShow(
                  context,
                  'Knee Pushup',
                  'kneepushup.mp4',
                  'A beginner-style pushup, this move will help you build strength before attempting a standard pushup.',
                  '1. Get into a high plank position from your knees. \n2. Maintaining a straight line from your head to your knees, bend your elbows to lower yourself down to the ground. Keep your elbows at a 45-degree angle.\n3. Push back up to start.'),
              buildListTileWorkOutShow(
                  context,
                  'Bicycle Crunch',
                  'bicyclecrunch.mp4',
                  'Although you\'ll work your core with almost all of these strength exercises, a targeted ab move doesn\'t hurt.',
                  '1. Lie on your back and bring your legs to a tabletop position. Bend your elbows, and put your hands behind your head.\n2. Crunch up and bring your right elbow to your left knee, straightening your right leg.\n3. Release the crunch slightly. Bend your right leg and straighten your left leg, then bring your left elbow to your right knee.\n4. Repeat for the desired number of reps.'),
              buildListTileWorkOutShow(
                  context,
                  'Straight-leg donkey kick',
                  'straightlegdonkeykick.mp4',
                  'Build those glutes with donkey kicks.',
                  '1. Get on all fours, with your hands aligned with your shoulders and your knees aligned with your hips.\n2. Keeping your back straight, push your right foot out to the imaginary wall behind you while keeping your leg straight.\n3. Your foot should remain flexed (toes pointing down to the floor) throughout. Take care to keep your hips square to the ground. Squeeze your buttocks at the top.\n4. Return to the starting position. Repeat for the desired number of reps. Repeat on the other leg.'),
              buildListTileWorkOutShow(
                  context,
                  'Plank to Downward Dog',
                  'planktodownwarddog.mp4',
                  'This move will test your upper body, especially your shoulders. Who says you need weights for a shoulder workout?',
                  '1. Get into a high plank position, with your hands stacked underneath your shoulders and your feet close together.\n2. Keeping your core engaged and your hands and feet stationary, pike your hips up and back into the Downward Dog pose. Your body should form a triangle with the ground. Keep your neck neutral. Your gaze should be directed toward your feet.\n3. Hold here for a second, then return to the plank. Repeat.'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListTileWorkOutShow(
    BuildContext context,
    String textMethod,
    String videoPath,
    String textUpper,
    String textLower,
  ) {
    return ListTile(
      leading: Icon(Icons.donut_small),
      title: Text(
        textMethod,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WorkOutShow(
              textMethod: textMethod,
              videoPath: 'excercise/' + videoPath,
              textUpper: textUpper,
              textLower: textLower,
            ),
          ),
        );
      },
    );
  }
}
