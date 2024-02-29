import 'package:flutter/material.dart';


class SectionHeadingText extends StatelessWidget {

  String firstText;
  String? lastText;
  bool  showLastText;

   SectionHeadingText({super.key, required this.firstText, this.lastText,required this.showLastText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstText,
          style : const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 15,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        showLastText ? Text(
          lastText!,
          style : TextStyle(
            fontFamily: 'Poppins',
            fontSize: 15,
            color: Colors.blue,
            fontWeight: FontWeight.w500,
          ),
        ) : const Text(''),
      ],
    );
  }
}
