import 'package:flutter/material.dart';
import 'package:wire_ropes/ui/shared/styles.dart';
import 'package:wire_ropes/ui/shared/ui_helpers.dart';

class CustomContainerWithoutTitle extends StatelessWidget {
  final Widget child;
  final double percentage;

  const CustomContainerWithoutTitle({
    Key? key,
    required this.child, this.percentage=1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      width: percentage >= 1?  double.infinity : screenWidthPercentage(context,percentage: percentage),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kcWireTypeButtonColor,
      ),
      child: child,
    );
  }
}