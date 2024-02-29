import 'package:flutter/material.dart';

class MenuContainer extends StatelessWidget {

  IconData icon;
  String text;


  MenuContainer({super.key,required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(245, 245, 245, 1.0)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // Icon
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromRGBO(104, 130, 232, 1)
                ),
                child: Icon(icon, color: Colors.white, size: 20),
              ),
              const SizedBox(width: 15),
              // Text
               Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios_rounded, size: 17,)
        ],
      ),
    );
  }
}
