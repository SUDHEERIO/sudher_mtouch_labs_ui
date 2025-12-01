import 'package:flutter/material.dart';
import 'package:flutter_new_app/custom_button.dart';
import 'package:flutter_new_app/custom_commitee.dart';
import 'package:flutter_new_app/custom_container.dart';
import 'package:flutter_new_app/customimage_container.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Samplescreen()));
}

class Samplescreen extends StatefulWidget {
  const Samplescreen({super.key});

  @override
  State<Samplescreen> createState() => _SamplescreenState();
}

class _SamplescreenState extends State<Samplescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Utsav Details"),
        leading: Icon(Icons.arrow_back),
        actions: [Icon(Icons.edit)],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(child: Image.asset('assets/images/navratri_image.png')),
            SizedBox(height: 30),

            Row(children: [Text("Utsav Name")]),
            SizedBox(height: 30),

            Row(
              children: [
                ImageIcon(
                  AssetImage('assets/images/calendar.png'),
                  color: Colors.orange,
                ),
                SizedBox(width: 5),
                Text("3 December 2024 at 4 Pm"),
              ],
            ),
            SizedBox(height: 30),

            CustomButton(
              text: "Private",
              image: AssetImage('assets/images/security-safe.png'),
              onPressed: () {},
              height: 60,
              width: double.infinity,
              color: Colors.green[100],
              textColor: Colors.green,
              iconColor: Colors.green,
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  text: "Interested",
                  image: AssetImage('assets/images/interested.png'),
                  onPressed: () {},
                  height: 60,
                  width: 90,
                  color: Colors.orange[100],
                  textColor: Colors.orange,
                  iconColor: Colors.orange,
                ),
                CustomButton(
                  text: "Invite",
                  image: AssetImage('assets/images/invite.png'),
                  onPressed: () {},
                  height: 60,
                  width: 90,
                  color: Colors.orange,
                  textColor: Colors.white,
                  iconColor: Colors.white,
                ),
                Icon(Icons.more, color: Colors.grey),
              ],
            ),
            SizedBox(height: 30),
            Divider(thickness: 2, color: Colors.grey),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ImageIcon(
                          AssetImage('assets/images/calendar.png'),
                          color: Colors.orange,
                        ),
                        SizedBox(width: 5),
                        Text("37 going.648 interested"),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(width: 5),
                        Text("Rain Tree, Sankey road"),
                      ],
                    ),
                    Text(
                      "Banglore, Karnataka, India",
                      style: TextStyle(color: Colors.grey, fontSize: 8),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),
            Column(
              children: [
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s',
                  style: TextStyle(overflow: TextOverflow.ellipsis),
                  maxLines: 4,
                ),
              ],
            ),
            Divider(thickness: 2, color: Colors.grey),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'KARYAKARAM',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),

            SizedBox(height: 30),

            CustomContainer(
              text1: 'Ongoing Now',
              text2: 'Ganga dwar ghat.',
              textColor: Colors.black,
            ),
            SizedBox(height: 20),
            CustomContainer(
              text1: 'Tomorrow  at 4 Pm',
              text2: 'Ganga dwar ghat.',
              textColor: Colors.grey,
            ),
            SizedBox(height: 20),

            CustomContainer(
              text1: '2 December  at 4 Pm',
              text2: 'Ganga dwar ghat.',
              textColor: Colors.grey,
            ),
            SizedBox(height: 20),

            CustomContainer(
              text1: '5 December  at 4 Pm',
              text2: 'Dashashwamedh ghat.',
              textColor: Colors.grey,
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'See all ',
              onPressed: () {},
              height: 60,
              width: 90,
              textColor: Colors.orange,
              borderColor: Colors.orange,
              image: null,
              color: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Utsav Facilities',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CustomimageContainer(
                  image: AssetImage('assets/images/tap.png'),
                  text: 'Drinking\nWater',
                ),
                SizedBox(width: 5),
                CustomimageContainer(
                  image: AssetImage('assets/images/wheel_chair.png'),
                  text: 'Wheelchair\nAccessible\nCar Park',
                ),
                SizedBox(width: 5),
                CustomimageContainer(
                  image: AssetImage('assets/images/wheel_chair.png'),
                  text: 'Wheelchair\nAccessible\nCar Park',
                ),
                SizedBox(width: 5),
                CustomimageContainer(
                  image: AssetImage('assets/images/wheel_chair.png'),
                  text: 'Wheelchair\nAccessible\nCar Park',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hosted BY',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text('See all', style: TextStyle(color: Colors.orange)),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                          'assets/images/ram_image.png',
                        ),
                      ),
                      SizedBox(width: 30),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Shri Ram Janmabhoomi\nTeerth Kshetra')],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        text: 'Follow',
                        onPressed: () {},
                        height: 50,
                        width: 200,
                        image: null,
                        color: Colors.orange,
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Utsav Commitee',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text('See all', style: TextStyle(color: Colors.orange)),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CustomCommitee(text: 'Committee'),
                SizedBox(width: 20),

                CustomCommitee(text: 'Volunteer '),
                SizedBox(width: 20),

                CustomCommitee(text: 'Members'),
              ],
            ),
            SizedBox(height: 50),
            Container(
              height: 400,
              child: Image.asset('assets/images/utsav_frame.png'),
            ),
          ],
        ),
      ),
    );
  }
}
