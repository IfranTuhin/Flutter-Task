import 'package:flutter/material.dart';
import 'package:flutter_task/common/text/section_heading_text.dart';
import 'package:flutter_task/common/widgets/menu_container.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                // Profile
                SizedBox(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset('assets/images/profile.jpg')),
                ),
                const SizedBox(height: 10),
                // More text
                const Text(
                  "More",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 33,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),

                // Automations
                SectionHeadingText(firstText: 'Automations', showLastText: false),
                const SizedBox(height: 10),
                MenuContainer(icon: Icons.account_box, text: 'Chatbots'),
                const SizedBox(height: 5),
                MenuContainer(icon: Icons.message, text: 'Auto Message'),

                const SizedBox(height: 20),
                // Personal
                SectionHeadingText(firstText: 'Personal', showLastText: false),
                const SizedBox(height: 10),
                MenuContainer(icon: Icons.flash_on, text: 'Shortcuts'),
                const SizedBox(height: 5),
                MenuContainer(icon: Icons.contact_page_sharp, text: 'Contacts'),
                const SizedBox(height: 5),
                MenuContainer(icon: Icons.folder, text: 'Properties'),
                const SizedBox(height: 5),
                MenuContainer(icon: Icons.notifications, text: 'Notifications'),

                const SizedBox(height: 20),
                // General
                SectionHeadingText(firstText: 'General', showLastText: false),
                const SizedBox(height: 10),
                MenuContainer(icon: Icons.chat_bubble_outlined, text: 'Chat box'),
                const SizedBox(height: 5),
                MenuContainer(icon: Icons.tag_rounded, text: 'Tags'),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
