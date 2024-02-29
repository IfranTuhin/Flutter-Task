import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // Icon
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.green,
                  ),
                  child: const Icon(Icons.done, color: Colors.white, size: 21,),
                ),
                const SizedBox(width: 12),
                // Text
                const Text(
                  "Completed",
                  style :TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                // Text
                Text(
                  "5/5",
                  style :TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 12),
                // Icon
                Icon(Icons.arrow_forward_ios_rounded, color: Colors.black87, size: 18,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
