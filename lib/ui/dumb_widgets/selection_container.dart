import 'package:flutter/cupertino.dart';
import 'package:wire_ropes/ui/shared/styles.dart';
import 'package:wire_ropes/ui/shared/ui_helpers.dart';

class SelectionContainer extends StatelessWidget {
  final double percentage;
  final Widget child;
  final String title;

  const SelectionContainer({
    Key? key,
    required this.percentage,
    required this.child,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      width: screenWidthPercentage(context, percentage: percentage),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kcWireTypeButtonColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: ktsSubTitleTextStyle,
          ),
          verticalSpaceSmall,
          child,
        ],
      ),
    );
  }
}