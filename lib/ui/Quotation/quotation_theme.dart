import 'package:flutter/material.dart';
import 'package:wire_ropes/shared_custom_styles_and_widget/widgets/box_text.dart';
import 'package:wire_ropes/ui/dumb_widgets/RoundMaterialButton.dart';
import 'package:wire_ropes/ui/shared/styles.dart';
import 'package:wire_ropes/ui/shared/ui_helpers.dart';

class QuotationTheme extends StatelessWidget {
  final String mainHeading;
  final String subHeading;
  final String orderId;
  final Widget child;
  final String buttonText;
  final Function onTap;

  const QuotationTheme({
    Key? key,
    required this.mainHeading,
    required this.subHeading,
    required this.orderId,
    required this.child,
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: kcBackgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
          child: ListView(
            shrinkWrap: true,
            primary: false,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                    ),
                  ),
                  horizontalSpaceSmall,
                  BoxText.mainHeadingMontserrat(mainHeading),
                ],
              ),
              verticalSpaceLarge,
              Row(
                children: [
                  BoxText.subHeadingMontserrat(subHeading),
                  horizontalSpaceSmall,
                  BoxText.orderIdMontserrat(orderId),
                ],
              ),
              verticalSpaceMedium,
              child,
              verticalSpaceMedium,
              RoundMaterialButton(
                title: buttonText,
                onTap: onTap,
                isButtonDisabled: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
