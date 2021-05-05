import 'package:flutter/material.dart';
import 'package:wire_ropes/ui/shared/ui_helpers.dart';

class OutlineContainer extends StatelessWidget {
  final Widget child;

  const OutlineContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      width: screenWidthPercentage(context, percentage: 0.5),
      decoration: BoxDecoration(
        border: Border.all(width: 2.0),
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }
}