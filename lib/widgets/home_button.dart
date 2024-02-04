import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final boxColor;
  final label;
  final image;
  final route;
  const MyButton(
      {Key? key,
      required this.boxColor,
      required this.label,
      required this.image,
      required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        child: Container(
            width: 0.4 * (MediaQuery.of(context).size.width),
            height: (143 / 932) * (MediaQuery.of(context).size.height),
            decoration: BoxDecoration(
              color: Color(boxColor),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 27),
              child: Column(
                children: [
                  Image.asset(image),
                  Text(
                    label,
                    style: TextStyle(fontSize: 21),
                  ),
                ],
              ),
            )));
  }
}
