import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String? text1;
  final Color? textColor;
  final String? text2;

  const CustomContainer({super.key, this.text1, this.textColor, this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),

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
                  ImageIcon(
                    AssetImage('assets/images/calendar.png'),
                    color: Colors.orange,
                  ),
                  SizedBox(width: 5),
                  Text('$text1', style: TextStyle(color: textColor)),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Deep Mahotsav, 2024',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Text('$text2', style: TextStyle(color: Colors.grey[800])),
                ],
              ),
            ],
          ),
          Column(
            children: [
              if (text2 == 'Ganga dwar ghat.') ...[
                Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 15),
              ] else ...[
                Text('Cancelled', style: TextStyle(color: Colors.red)),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
