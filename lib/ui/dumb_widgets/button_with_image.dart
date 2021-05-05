import 'package:flutter/material.dart';
import 'package:wire_ropes/ui/shared/styles.dart';
import 'package:wire_ropes/ui/shared/ui_helpers.dart';

class ButtonWithImage extends StatelessWidget {
  final String imagePath;
  final IconData icon;
  final Color color;
  final double size;
  final String title;
  final Function onTap;

  const ButtonWithImage({
    Key? key,
    this.imagePath = "no",
    required this.title,
    required this.onTap,
    this.icon = Icons.warning_amber_outlined,
    this.color = Colors.black,
    this.size = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        child: Column(
          children: [
            imagePath == "no"
                ? Icon(
              icon,
              color: color,
              size: size,
            )
                : Image.asset(imagePath),
            verticalSpaceTiny,
            Container(
              width: 84,
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: kcSelectedWireTypeButtonColor,
              ),
              child: Center(
                child: Text(
                  title,
                  style: ktsWireTypeTitleWithButtonTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}