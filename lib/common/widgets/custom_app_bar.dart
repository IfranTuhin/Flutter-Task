import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  String image;
  IconData ? icon1;
  IconData ? icon2;
  bool showIcon2;


  CustomAppBar({
    required this.image,
    required this.showIcon2,
    this.icon1,
    this.icon2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Profile image
          SizedBox(
            height: 50,
            width: 50,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(image)),
          ),

          // icon
          Row(
            children: [
              showIcon2 ? Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(.2),
                ),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Icon(
                    icon2,
                    size: 26,
                  ),
                ),
              ) : Container(),
              const SizedBox(width: 10),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(.2),
                ),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Icon(
                    icon1,
                    size: 26,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
