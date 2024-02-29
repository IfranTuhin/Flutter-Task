import 'package:flutter/material.dart';
import 'package:flutter_task/common/widgets/custom_app_bar.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

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
                "Visitors (1)",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 33,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 245, 245, 1.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
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
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'cddfjajfdfid',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 17,
                                    color: const Color.fromRGBO(104, 130, 232, 1)
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '154f5d2f | Home',
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
                          Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                              height: 13,
                              width: 13,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Now',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
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

