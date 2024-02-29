import 'package:flutter/material.dart';

class ChatAppbar extends StatelessWidget {
  ChatAppbar({this.callBack, super.key});

  Function? callBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Back Icon
        GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(Icons.arrow_back_ios_new_sharp, size: 24)),

        // profile name
        Column(
          children: [
            Row(
              children: [
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'cdY4dfjfEdfj8a',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                ),
                const SizedBox(width: 8),
                const Icon(Icons.arrow_forward_ios_rounded, size: 16),
              ],
            ),
            const Text(
              '21545fd |  Home',
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.withOpacity(0.2),
              ),
              child: const Icon(
                Icons.done,
                color: Colors.green,
                size: 21,
              ),
            ),
            const SizedBox(width: 8),
            PopupMenuButton(
              icon: Icon(Icons.more_horiz, size: 28),
              onSelected: (value) {
                callBack!(value);
                // Navigator.of(context).pop();
                // your logic
              },
              itemBuilder: (BuildContext bc) {
                return const [
                  PopupMenuItem(child: Text("IS Me"), value: '2'),
                  PopupMenuItem(child: Text("Is Other"), value: '1')
                ];
              },
            ),
          ],
        ),
      ],
    );
  }
}
