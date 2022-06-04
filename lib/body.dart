import 'package:flutter/material.dart';
import 'custom_card.dart';

class SensorScreenBody extends StatefulWidget {
  @override
  _SensorScreenBodyState createState() => _SensorScreenBodyState();
}

class _SensorScreenBodyState extends State<SensorScreenBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.home_outlined,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "DOOR LOCK",
                  statusOn: "OPEN",
                  statusOff: "LOCKED",
                ),
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.lightbulb_outline,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "DOWNLIGHTS",
                  statusOn: "ON",
                  statusOff: "OFF",
                ),
              ],
            ),
            SizedBox(height: size.height * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.lightbulb_outline,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "BEDROOM",
                  statusOn: "ON",
                  statusOff: "OFF",
                ),
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.tv,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "TV",
                  statusOn: "ON",
                  statusOff: "OFF",
                ),
              ],
            ),
            SizedBox(height: size.height * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.speaker,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "SPEAKER R",
                  statusOn: "ON",
                  statusOff: "OFF",
                ),
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.speaker,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "SPEAKER L",
                  statusOn: "ON",
                  statusOff: "OFF",
                ),
              ],
            ),
            SizedBox(height: size.height * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.watch,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "IWATCH",
                  statusOn: "ON",
                  statusOff: "OFF",
                ),
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.air,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "AIRCOND",
                  statusOn: "ON",
                  statusOff: "OFF",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
