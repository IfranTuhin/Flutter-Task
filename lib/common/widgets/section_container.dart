import 'package:flutter/material.dart';

class SectionContainer extends StatelessWidget {
  IconData icon;
  String numberText;
  String title;
  String percentageNumber;

  SectionContainer({
    super.key,
    required this.icon,
    required this.numberText,
    required this.title,
    required this.percentageNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        height: 160,
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromRGBO(104, 130, 232, 1),
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon:  Icon(
                      icon,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Icon(Icons.info_outline_rounded,
                    size: 20, color: Color.fromRGBO(104, 130, 232, 1)),
              ],
            ),
            const SizedBox(height: 3),
            // Text
            Text(
              numberText,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 5),
            //
            Text(
              title,
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87),
            ),
            const SizedBox(height: 3),
            Row(
              children: [
                const Icon(
                  Icons.arrow_forward,
                  size: 15,
                  color: Colors.black54,
                ),
                Text(
                  percentageNumber,
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
