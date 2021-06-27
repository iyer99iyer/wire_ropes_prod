import 'package:flutter/cupertino.dart';
import 'package:wire_ropes/ui/shared/styles.dart';

class Options extends StatelessWidget {
  final List<String> optionList;
  final Function(int) onTapUpdateFunction;
  final int selectedIndex;
  final Axis scrollDirection;

  const Options({
    Key? key,
    required this.optionList,
    required this.onTapUpdateFunction,
    required this.selectedIndex,
    this.scrollDirection = Axis.vertical,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: scrollDirection != Axis.vertical ? 40 : null,
      child: ListView.builder(
        primary: false,
        shrinkWrap: scrollDirection != Axis.vertical ? false : true,
        scrollDirection: scrollDirection,
        itemCount: optionList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => onTapUpdateFunction(index),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: selectedIndex == index
                    ? kcSelectedWireTypeButtonColor
                    : null,
              ),
              child: Text(
                optionList[index],
                style: selectedIndex == index
                    ? ktsOptionsTextStyle.copyWith(color: kcSelectedTextColor)
                    : ktsOptionsTextStyle,
              ),
            ),
          );
        },
      ),
    );
  }
}