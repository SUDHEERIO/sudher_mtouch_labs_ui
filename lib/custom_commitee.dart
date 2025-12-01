import 'package:flutter/material.dart';

class CustomCommitee extends StatelessWidget {
  final ImageProvider image;
  final String? text;
  const CustomCommitee({
    super.key,
    this.image = const AssetImage('assets/images/person_image.png'),
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 150,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(backgroundColor: Colors.orange),
            child: Text(
              '$text',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),

          Center(child: CircleAvatar(radius: 20, backgroundImage: image)),

          Center(
            child: Text(
              'Subramanyam Chary',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }
}
