import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:wire_ropes/model/sisal/sisal.dart';
import 'package:wire_ropes/ui/dumb_widgets/options.dart';
import 'package:wire_ropes/ui/dumb_widgets/selection_container.dart';
import 'package:wire_ropes/ui/shared/styles.dart';
import 'package:wire_ropes/ui/shared/ui_helpers.dart';
import 'package:wire_ropes/ui/wire_types/sisal/sisal_viewmodel.dart';

class SisalView extends StatelessWidget {

  final Function(Sisal) getDate;

  const SisalView({Key? key, required this.getDate}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SisalViewModel>.reactive(
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) => Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              ListView(
                primary: false,
                shrinkWrap: true,
                children: [
                  SelectionContainer(
                    title: model.coreConstructionTitle,
                    percentage: .39,
                    child: Options(
                      selectedIndex: model.selectedCoreConstructionIndex,
                      onTapUpdateFunction: (index) =>
                          model.updateCoreConstructionSelectedIndex(index),
                      optionList: model.coreConstructionOptionList,
                    ),
                  ),

                  verticalSpaceMedium,
                  SelectionContainer(
                    title: "Diameter",
                    percentage: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Select diameter",
                          style: ktsOptionsTextStyle,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          decoration: BoxDecoration(
                            color: kcSelectedWireTypeButtonColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: DropdownButton(
                            value: model.selectedDiameter,
                            dropdownColor: kcSelectedWireTypeButtonColor,
                            style: ktsSelectedOptionsTextStyle,
                            onChanged: (diameter) =>
                                model.updateSelectedDiameter(
                                    diameter.toString()),
                            items: model.diameterOptionList.map((diameter) {
                              return DropdownMenuItem<String>(
                                value: diameter,
                                child: Text(
                                  diameter,
                                  style: ktsSelectedOptionsTextStyle,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              verticalSpaceMedium,
              MaterialButton(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                onPressed: () => getDate(
                  Sisal(
                    diameter: model.diameterStringValue,
                    coreConstruction: model.coreConstructionStringValue,
                  )
                ),
                child: Center(
                  child: Text(
                    "Calculate",
                    style: ktsCalculateButtonTextStyle,
                  ),
                ),
                color: kcCalculateButtonColor,
                shape: StadiumBorder(),
              ),
            ],
          ),
        ),
        viewModelBuilder: () => SisalViewModel());
  }
}
