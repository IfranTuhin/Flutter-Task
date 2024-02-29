import 'package:flutter/material.dart';

class ChatProfileDetails extends StatelessWidget {
  const ChatProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 35,
          width: 35,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset('assets/images/profile.jpg')),
        ),
        const SizedBox(width: 8),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'cdY4dfjfEdfj8a',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on_outlined, size: 18,color: Colors.grey,),
                SizedBox(width: 8),
                Text(
                  'Dhaka, Bangladesh',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.web, size: 18,color: Colors.grey,),
                SizedBox(width: 8),
                Text(
                  'Windows 10, Chrome 121.0.0.0',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.web, size: 18,color: Colors.grey,),
                SizedBox(width: 8),
                Text(
                  'dfjD22fj12  |  Home',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
