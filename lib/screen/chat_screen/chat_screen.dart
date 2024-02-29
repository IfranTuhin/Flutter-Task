import 'package:flutter/material.dart';
import 'package:flutter_task/common/widgets/custom_app_bar.dart';
import 'package:flutter_task/screen/chat_screen/join_chat_screen.dart';
import 'package:get/get.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              // Appbar
              CustomAppBar(image: 'assets/images/profile.jpg', showIcon2: false, icon1: Icons.account_box_rounded,),

              const SizedBox(height: 10),
              // Conversation text
              const Text(
                "Conversation",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 33,

                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JoinChatScreen(),));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(245, 245, 245, 1.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [

                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: const Icon(Icons.person, size: 30),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    height: 13,
                                    width: 13,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(width: 1.5, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 15),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'cddfjajfdfid',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 17,
                                    color: Color.fromRGBO(104, 130, 232, 1)
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Testing',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              '18:23',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              alignment: Alignment.center,
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(104, 130, 232, 1),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: const Text('2', style: TextStyle(
                                color: Colors.white,
                              ),),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
