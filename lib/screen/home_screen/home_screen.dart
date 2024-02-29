import 'package:flutter/material.dart';
import 'package:flutter_task/common/text/section_heading_text.dart';
import 'package:flutter_task/common/widgets/custom_app_bar.dart';
import 'package:flutter_task/common/widgets/section_container.dart';
import 'package:flutter_task/common/widgets/suggested_contaner.dart';
import 'package:flutter_task/common/widgets/task_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                // Custom App bar
                CustomAppBar(
                  image: 'assets/images/profile.jpg',
                  icon1: Icons.notifications_outlined,
                  showIcon2: true,
                  icon2: Icons.speed,
                ),

                const SizedBox(height: 10),
                // Smart Hub
                const Text(
                  "Smart Hub",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 33,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 8),
                // search
                const TaskWidget(),
                const SizedBox(height: 20),

                // conversations
                SectionHeadingText(
                  firstText: 'Conversations',
                  lastText: 'Last 7 days',
                  showLastText: true,
                ),
                const SizedBox(height: 10),

                // Section Container
                SizedBox(
                  child: Row(
                    children: [
                      SectionContainer(
                        icon: Icons.message,
                        numberText: '103',
                        title: 'Total Conversations',
                        percentageNumber: '5,050%',
                      ),
                      SizedBox(width: 10),
                      SectionContainer(
                        icon: Icons.favorite,
                        numberText: '69%',
                        title: 'Average Rating',
                        percentageNumber: '0%',
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // conversations
                SectionHeadingText(
                  firstText: 'Chatbot',
                  lastText: 'Last 7 days',
                  showLastText: true,
                ),
                const SizedBox(height: 10),

                // Chatbot
                SizedBox(
                  child: Row(
                    children: [
                      SectionContainer(
                        icon: Icons.message,
                        numberText: '103',
                        title: 'Total Conversations',
                        percentageNumber: '5,050%',
                      ),
                      SizedBox(width: 10),
                      SectionContainer(
                        icon: Icons.favorite,
                        numberText: '69%',
                        title: 'Average Rating',
                        percentageNumber: '0%',
                      ),
                    ],
                  ),
                ),

                // suggested for you
                SectionHeadingText(
                  firstText: 'Suggest for you',
                  // lastText: 'Last 7 days',
                  showLastText: false,
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 4.2,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SuggestedContainer(
                        numberText: '1.',
                        image: 'assets/images/desktop.png',
                        text: 'How to add smartsupp to your Website',
                      ),
                      const SizedBox(width: 10),
                      SuggestedContainer(
                        numberText: '2.',
                        image: 'assets/images/desktop.png',
                        text: 'How to add Properly smartsupp to your Website',
                      ),
                      const SizedBox(width: 10),
                      SuggestedContainer(
                        numberText: '3.',
                        image: 'assets/images/desktop.png',
                        text: 'How to  add smartsupp to your Website',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
