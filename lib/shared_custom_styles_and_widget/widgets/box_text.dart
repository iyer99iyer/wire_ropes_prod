import 'package:flutter/material.dart';
import 'package:wire_ropes/shared_custom_styles_and_widget/styles/text_styles.dart';

class BoxText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;

  BoxText.headingOne(this.text) : textStyle = heading1Style;
  BoxText.headingTwo(this.text) : textStyle = heading2Style;
  BoxText.headingThree(this.text) : textStyle = heading3Style;
  BoxText.subHeading(this.text) : textStyle = subHeadingStyle;
  BoxText.editText(this.text) : textStyle = editTextStyle;
  BoxText.body(this.text) : textStyle = bodyStyle;
  BoxText.mainButton(this.text) : textStyle = mainButtonTextStyle;
  BoxText.button(this.text) : textStyle = buttonTextStyle;
  BoxText.mainHeadingMontserrat(this.text) : textStyle = mainHeadingMontserratTextStyle;
  BoxText.subHeadingMontserrat(this.text) : textStyle = subHeadingMontserratTextStyle;
  BoxText.orderIdMontserrat(this.text) : textStyle = orderIdMontserratTextStyle;
  BoxText.buttonTextMontserrat(this.text) : textStyle = buttonTextMontserratTextStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
    );
  }
}
