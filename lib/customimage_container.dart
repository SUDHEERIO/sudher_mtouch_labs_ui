import 'package:flutter/material.dart';

class CustomimageContainer extends StatelessWidget {
  final ImageProvider image;
  final String? text;
  const CustomimageContainer({
    super.key,
    this.image = const AssetImage(''),
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 130,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Center(
                    child: CircleAvatar(radius: 15, backgroundImage: image),
                  ),
                ],
              ),

              Row(
                children: [
                  Center(
                    child: Text(
                      '$text',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 3,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
