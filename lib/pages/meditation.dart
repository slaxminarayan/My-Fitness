import 'package:flutter/material.dart';

import '../model/meditateshow.dart';

class Meditation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meditation'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey.shade100,
          child: Column(
            children: [
              buildCardWidget(
                  context,
                  'Mindfulness meditation',
                  'mindfulness.png',
                  'Mindfulness meditation originates from Buddhist teachings and is the most popular meditation technique in the West.',
                  'In mindfulness meditation, you pay attention to your thoughts as they pass through your mind. You don’t judge the thoughts or become involved with them. You simply observe and take note of any patterns.\n\nThis practice combines concentration with awareness. You may find it helpful to focus on an object or your breath while you observe any bodily sensations, thoughts, or feelings.\n\nThis type of meditation is good for people who don’t have a teacher to guide them, as it can be easily practiced alone.'),
              buildCardWidget(
                  context,
                  'Spiritual meditation',
                  'spiritual.png',
                  'Spiritual meditation is used in Eastern religions, such as Hinduism and Daoism, and in Christian faith.\n\nIt’s similar to prayer in that you reflect on the silence around you and seek a deeper connection with your God or Universe.',
                  'Essential oils are commonly used to heighten the spiritual experience. Popular options include:\n\n\t\t\t1. Frankincense\n\t\t\t2. Myrrh\n\t\t\t3. Sage\n\t\t\t4. Cedar\n\t\t\t5. Sandalwood\n\t\t\t6. Palo santo\n\nSpiritual meditation can be practiced at home or in a place of worship. This practice is beneficial for those who thrive in silence and seek spiritual growth.'),
              buildCardWidget(
                  context,
                  'Focused meditation',
                  'focused.png',
                  'Focused meditation involves concentration using any of the five senses.',
                  'For example, you can focus on something internal, like your breath, or you can bring in external influences to help focus your attention.\n\nTry counting mala beads, listening to a gong, or staring at a candle flame.\n\nThis practice may be simple in theory, but it can be difficult for beginners to hold their focus for longer than a few minutes at first.\n\nIf your mind does wander, it’s important to come back to the practice and refocus.\n\nAs the name suggests, this practice is ideal for anyone who requires additional focus in their life.'),
              buildCardWidget(
                  context,
                  'Movement meditation',
                  'movement.png',
                  'Although most people think of yoga when they hear movement meditation, this practice may include walking through the woods, gardening, qigong, and other gentle forms of motion.',
                  'It’s an active form of meditation where the movement guides you.\n\nMovement meditation is good for people who find peace in action and prefer to let their minds wander.'),
              buildCardWidget(
                  context,
                  'Mantra meditation',
                  'mantra.png',
                  'Mantra meditation is prominent in many teachings, including Hindu and Buddhist traditions. This type of meditation uses a repetitive sound to clear the mind. It can be a word, phrase, or sound, such as the popular “Om.”',
                  'It doesn’t matter if your mantra is spoken loudly or quietly. After chanting the mantra for some time, you’ll be more alert and in tune with your environment. This allows you to experience deeper levels of awareness.\n\nSome people enjoy mantra meditation because they find it easier to focus on a word than on their breath. This is also a good practice for people who don’t like silence and enjoy repetition.'),
              buildCardWidget(
                  context,
                  'Transcendental Meditation',
                  'transcendental.png',
                  'Transcendental Meditation is a popular type of meditation. This practice has been the subject of numerous studies in the scientific community.',
                  'It is more customizable than mantra meditation, using a mantra or series of words that are specific to each practitioner.\n\nThis practice is for those who like structure and are serious about maintaining a meditation practice.'),
              buildCardWidget(
                  context,
                  'Progressive relaxation',
                  'progressive.png',
                  'Also known as body scan meditation, progressive relaxation is a practice aimed at reducing tension in the body and promoting relaxation.',
                  'Oftentimes, this form of meditation involves slowly tightening and relaxing one muscle group at a time throughout the body.\n\nIn some cases, it may also encourage you to imagine a gentle wave flowing through your body to help release any tension.\n\nThis form of meditation is often used to relieve stress and unwind before bedtime.'),
              buildCardWidget(
                  context,
                  'Loving-kindness meditation',
                  'lovingkindness.jpg',
                  'Loving-kindness meditation is used to strengthen feelings of compassion, kindness, and acceptance toward oneself and others.',
                  'It typically involves opening the mind to receive love from others and then sending a series of well wishes to loved ones, friends, acquaintances, and all living beings.\n\nBecause this type of meditation is intended to promote compassion and kindness, it may be ideal for those holding feelings of anger or resentment.'),
              buildCardWidget(
                  context,
                  'Visualization meditation',
                  'visualization.png',
                  'Visualization meditation is a technique focused on enhancing feelings of relaxation, peace, and calmness by visualizing positive scenes or images.',
                  'With this practice, it’s important to imagine the scene vividly and use all five senses to add as much detail as possible.\n\nAnother form of visualization meditation involves imagining yourself succeeding at specific goals, which is intended to increase focus and motivation.\n\nMany people use visualization meditation to boost their mood, reduce stress levels, and promote inner peace.'),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCardWidget(BuildContext context, String textMethod,
      String imagePath, String textUpper, String textLower) {
    return Card(
      elevation: 6,
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.black,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 25,
          ),
          child: Text(
            textMethod,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MeditateShow(
                textMethod: textMethod,
                imagePath: 'assets/images/' + imagePath,
                textUpper: textUpper,
                textLower: textLower,
              ),
            ),
          );
        },
      ),
    );
  }
}
