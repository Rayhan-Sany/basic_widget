import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  String? mytext;
  String? image;
  Containers({required this.mytext, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Color.fromARGB(255, 38, 0, 208),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white,
            Colors.white10,
            Color.fromARGB(255, 121, 93, 242)
          ],
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 60, width: 60, child: Image.asset(image!)),
          SizedBox(
            width: 20,
          ),
          Flexible(
            child: Text(
              mytext!,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }
}
