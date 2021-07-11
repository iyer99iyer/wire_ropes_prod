import 'package:flutter/material.dart';
import 'package:wire_ropes/shared_custom_styles_and_widget/widgets/box_text.dart';
import 'package:wire_ropes/ui/shared/styles.dart';

class RopeDetails extends StatelessWidget {
  final String wireTitle, wireDetails, discount, quantity, rate;

  const RopeDetails({
    Key? key,
    required this.wireTitle,
    required this.wireDetails,
    required this.discount,
    required this.quantity,
    required this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3, bottom: 3),
      child: Material(
        color: kcWireTypeButtonColor,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // BoxText.headingThree("Metal Steel Rope"),
                      BoxText.headingThree(wireTitle),
                      BoxText.headingThree("Discount"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // BoxText.subHeading(
                      //     "Steel Core| 8X19 |7mm \nUn-Galvanised"),
                      BoxText.subHeading(wireDetails),
                      // BoxText.subHeadingColorStyle("23 %"),
                      BoxText.subHeadingColorStyle('$discount %'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BoxText.headingFour("Quantity"),
                      BoxText.headingFour(quantity),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BoxText.headingFour("Rate"),
                      BoxText.headingFour('Rs. $rate'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
