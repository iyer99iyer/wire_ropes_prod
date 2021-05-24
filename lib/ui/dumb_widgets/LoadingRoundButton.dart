import 'package:flutter/material.dart';
import 'package:wire_ropes/ui/shared/styles.dart';

class LoadingRoundButton extends StatelessWidget {
  const LoadingRoundButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: null,
      padding: EdgeInsets.symmetric(
          vertical: 16.0, horizontal: 8.0),
      color: kcCalculateButtonColor,
      disabledColor: kcCalculateButtonColor,
      child: Container(height:20, width: 20,child: CircularProgressIndicator()),
      shape: StadiumBorder(),
    );
  }
}