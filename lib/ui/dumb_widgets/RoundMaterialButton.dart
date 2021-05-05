import 'package:flutter/material.dart';
import 'package:wire_ropes/ui/shared/styles.dart';

class RoundMaterialButton extends StatelessWidget {
  final String title;
  final bool isButtonDisabled;
  final Function onTap;

  const RoundMaterialButton({
    Key? key,
    required this.title,
    required this.onTap,
    required this.isButtonDisabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: isButtonDisabled ? null : () => onTap(),
      // () => onTap(),
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      color: kcCalculateButtonColor,
      disabledColor: kcInfoTextTextColor,
      child: Text(
        title,
        style: ktsCalculateButtonTextStyle,
      ),
      shape: StadiumBorder(),
    );
  }
}
