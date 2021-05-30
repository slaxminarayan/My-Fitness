import 'package:flutter/material.dart';

import '../model/workoutshow.dart';

class FatLossExcercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fat Loss'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              buildListTileWorkOutShow(
                context,
                'Lunges',
                'lunges.mp4',
                'Challenging your balance is an essential part of a well-rounded exercise routine. Lunges do just that, promoting functional movement, while also increasing strength in your legs and glutes.',
                '1. Start by standing with your feet shoulder-width apart and arms down at your sides.\n\n2. Take a step forward with your right leg and bend your right knee as you do so, stopping when your thigh is parallel to the ground. Ensure that your right knee doesn’t extend past your right foot.\n\n3. Push up off your right foot and return to the starting position. Repeat with your left leg. This is one rep.\n\n4. Complete 10 reps for 3 sets.',
              ),
              buildListTileWorkOutShow(
                context,
                'Squats',
                'squats.mp4',
                'Squats increase lower body and core strength, as well as flexibility in your lower back and hips. Because they engage some of the largest muscles in the body, they also pack a major punch in terms of calories burned.',
                '1. Start by standing straight, with your feet slightly wider than shoulder-width apart, and your arms at your sides.\n\n2. Brace your core and, keeping your chest and chin up, push your hips back and bend your knees as if you’re going to sit in a chair.\n\n3. Ensuring your knees don’t bow inward or outward, drop down until your thighs are parallel to the ground, bringing your arms out in front of you in a comfortable position. Pause for one second, then extend your legs and return to the starting position.\n\n4. Complete 3 sets of 20 reps.',
              ),
              buildListTileWorkOutShow(
                context,
                'Burpees',
                'burpees.mp4',
                'An exercise we love to hate, burpees are a super effective whole-body move that provides great bang for your buck for cardiovascular endurance and muscle strength.',
                '1. Start by standing upright with your feet shoulder-width apart and your arms down at your sides.\n\n2. With your hands out in front of you, start to squat down. When your hands reach the ground, pop your legs straight back into a pushup position.\n\n3. Jump your feet up to your palms by hinging at the waist. Get your feet as close to your hands as you can get, landing them outside your hands if necessary.\n\n4. Stand up straight, bringing your arms above your head and jump.\n\n5. This is one rep. Complete 3 sets of 10 reps as a beginner.',
              ),
              buildListTileWorkOutShow(
                context,
                'Planks',
                'planks.mp4',
                'Planks are an effective way to target both your abdominal muscles and your whole body. Planking stabilizes your core without straining your back the way situps or crunches might.',
                '1. Begin in a pushup position with your hand and toes firmly planted on the ground, your back straight, and your core tight.\n\n2. Keep your chin slightly tucked and your gaze just in front of your hands.\n\n3. Take deep controlled breaths while maintaining tension throughout your entire body, so your abs, shoulders, triceps, glutes and quads are all engaged.\n\n4. Complete 2-3 sets of 30 second holds to start.',
              ),
              buildListTileWorkOutShow(
                context,
                'Side Planks',
                'sideplanks.mp4',
                'A healthy body requires a strong core at its foundation, so don’t neglect core-specific moves like the side plank.\n\nFocus on the mind-muscle connection and controlled movements to ensure you’re completing this move effectively.',
                '1. Lie on your right side with your left leg and foot stacked on top of your right leg and foot. Prop your upper body up by placing your right forearm on the ground, elbow directly under your shoulder.\n\n2. Contract your core to stiffen your spine and lift your hips and knees off the ground, forming a straight line with your body.\n\n3. Return to start in a controlled manner. Repeat 3 sets of 10–15 reps on one side, then switch.',
              ),
              buildListTileWorkOutShow(
                context,
                'Single-leg Deadlifts',
                'singleleg.mp4',
                'This is another exercise that challenges your balance. Single-leg deadlifts require stability and leg strength. Grab a light to moderate dumbbell to complete this move.',
                '1. Begin standing with a dumbbell in your right hand and your knees slightly bent.\n\n2. Hinging at the hips, begin to kick your left leg straight back behind you, lowering the dumbbell down toward the ground.\n\n3. When you reach a comfortable height with your left leg, slowly return to the starting position in a controlled motion, squeezing your right glute. Ensure that your pelvis stays square to the ground during the movement.\n\n4. Repeat 10 to 12 reps before moving the weight to your left hand and repeating the same steps on the left leg.',
              ),
              buildListTileWorkOutShow(
                  context,
                  'Glute Bridge',
                  'glutebridge.mp4',
                  'The glute bridge effectively works your entire posterior chain, which isn’t only good for you, but it will make your booty look perkier as well.',
                  '1. Start by lying on the floor with your knees bent, feet flat on the ground, and arms straight at your sides with your palms facing down.\n\n2. Pushing through your heels, raise your hips off the ground by squeezing your core, glutes, and hamstrings. Your upper back and shoulders should still be in contact with the ground, and your core down to your knees should form a straight line.\n\n3. Pause 1–2 seconds at the top and return to the starting position.\n\n4. Complete 10–12 reps for 3 sets.'),
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
