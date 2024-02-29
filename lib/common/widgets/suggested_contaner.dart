import 'package:flutter/material.dart';

class SuggestedContainer extends StatelessWidget {
  String numberText;
  String image;
  String text;

  SuggestedContainer({
    required this.numberText,
    required this.image,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4.2,
      width: MediaQuery.of(context).size.width / 1.6,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(245, 245, 245, 1),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Container(
            padding: const  EdgeInsets.all(8),
            height: 120,
            width: MediaQuery.of(context).size.width / 1.6,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(231, 240, 254, 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    height: 20,
                    width: 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(206, 76, 164, 1),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      numberText,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  image,
                  // fit: BoxFit.cover,
                ),
                // time text
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 22,
                    width: 60,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(104, 130, 232, 1),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.slow_motion_video_rounded,
                            color: Colors.white, size: 16),
                        SizedBox(width: 3),
                        Text(
                          '2:05',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 3),
          // Text
          Padding(
            padding:const EdgeInsets.all(5),
            child: Text(
              text,
              style:  const TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
