import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  Bubble({this.message, this.time, this.delivered=false, this.isMe=false});

  final String? message, time;
  final bool? delivered, isMe;

  @override
  Widget build(BuildContext context) {
    final bg = isMe! ? Colors.white : Colors.greenAccent.shade100;
    final align = isMe! ? CrossAxisAlignment.start : CrossAxisAlignment.end;
    final icon = delivered! ? Icons.done : Icons.timer;
    final radius = isMe!
        ? const BorderRadius.only(
      topRight: Radius.circular(5.0),
      bottomLeft: Radius.circular(10.0),
      bottomRight: Radius.circular(5.0),
    )
        : const BorderRadius.only(
      topLeft: Radius.circular(5.0),
      bottomLeft: Radius.circular(5.0),
      bottomRight: Radius.circular(15.0),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: align,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(3.0),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: .5,
                    spreadRadius: 1.0,
                    color: Colors.black.withOpacity(.12))
              ],
              color: bg,
              borderRadius: radius,
            ),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 60.0),
                  child: Text(message!),
                ),
                Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: Row(
                    children: <Widget>[
                      Text(time!,
                          style: const TextStyle(
                            color: Colors.black38,
                            fontSize: 10.0,
                          )),
                      const SizedBox(width: 3.0),
                      Icon(
                        icon,
                        size: !isMe! ? 12.0 : 0,
                        color: Colors.black38,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}