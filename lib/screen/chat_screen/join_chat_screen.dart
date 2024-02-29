import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/screen/chat_screen/widgets/chat_appbar_widget.dart';
import 'package:flutter_task/screen/chat_screen/widgets/chat_bubble.dart';
import 'package:flutter_task/screen/chat_screen/widgets/chat_profile_details.dart';
import 'package:intl/intl.dart';

class JoinChatScreen extends StatefulWidget {
  const JoinChatScreen({super.key});

  @override
  State<JoinChatScreen> createState() => _JoinChatScreenState();
}

class _JoinChatScreenState extends State<JoinChatScreen> {
  final TextEditingController messageController = TextEditingController();

  bool isMe = true;

  changeMessageSenderStatus(bool status) {
    setState(() {
      isMe = status;
    });
  }

  addMessage() {
    if (messageController.text != "") {
      String message = messageController.text;
      messageController.text = "";

      DateTime now = DateTime.now();
      String formattedDate = DateFormat('h:mma').format(now);

      Map<String, dynamic> messageInfoMap = {
        "message": message,
        "sendBy": isMe == false ? 1 : 2,
        "ts": formattedDate,
        "time": FieldValue.serverTimestamp(),
      };
      FirebaseFirestore.instance
          .collection('chat')
          .doc('chat')
          .collection('1-2')
          .doc(DateTime.now().microsecondsSinceEpoch.toString())
          .set(messageInfoMap)
          .then((value) {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('chat')
              .doc('chat')
              .collection('1-2')
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }

            if (snapshot.hasData) {
              return Column(
                children: [
                  buildContainer(),
                  Expanded(
                      child: ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            return Bubble(
                              message: (snapshot.data!.docs[index].data()
                                  as Map)['message'],
                              isMe: (snapshot.data!.docs[index].data()
                                          as Map)['sendBy'] ==
                                      1
                                  ? true
                                  : false,
                              time: (snapshot.data!.docs[index].data()
                                  as Map)['ts'],
                            );
                          })),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    alignment: Alignment.bottomCenter,
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: TextField(
                          controller: messageController,
                          decoration: InputDecoration(
                            hintText: 'Type message..',
                            hintStyle: const TextStyle(color: Colors.black45),
                            border: InputBorder.none,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                addMessage();
                              },
                              child: const Icon(Icons.send_rounded),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
            return Container(
              child: Text('No Message Found'),
            );
          },
        ),
      ),
    );
  }

  Container buildContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 10),
          // Appbar
          ChatAppbar(callBack: (String value) {
            changeMessageSenderStatus(value == '1' ? false : true);
          }),

          const SizedBox(height: 25),

          // Profile details
          ChatProfileDetails(),

          const SizedBox(height: 20),
          Divider(height: 1),
          const SizedBox(height: 10),

          // Chat Details
          Container(
            child: Column(
              children: [
                Column(
                  children: [],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
