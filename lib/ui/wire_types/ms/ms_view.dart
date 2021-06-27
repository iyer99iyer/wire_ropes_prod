import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:wire_ropes/model/ms/ms.dart';
import 'package:wire_ropes/ui/dumb_widgets/options.dart';
import 'package:wire_ropes/ui/dumb_widgets/selection_container.dart';
import 'package:wire_ropes/ui/shared/styles.dart';
import 'package:wire_ropes/ui/shared/ui_helpers.dart';

import 'ms_viewmodel.dart';

class MSView extends StatelessWidget {
  final Function(MS) getData;

  const MSView({
    Key? key,
    required this.getData,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MSViewModel>.reactive(
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) => Scaffold(
              backgroundColor: Colors.transparent,
              body: Column(
                children: [
                  ListView(
                    primary: false,
                    shrinkWrap: true,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SelectionContainer(
                            title: model.coreTitle,
                            percentage: .39,
                            child: Options(
                              selectedIndex: model.selectedCoreIndex,
                              onTapUpdateFunction: (index) =>
                                  model.updateCoreSelectedIndex(index),
                              optionList: model.coreOptionList,
                            ),
                          ),
                          SelectionContainer(
                            title: model.coatingTitle,
                            percentage: .45,
                            child: Options(
                              selectedIndex: model.selectedCoatingIndex,
                              onTapUpdateFunction: (index) =>
                                  model.updateCoatingSelectedIndex(index),
                              optionList: model.coatingOptionList,
                            ),
                          ),
                        ],
                      ),
                      verticalSpaceMedium,
                      SelectionContainer(
                        title: model.constructionTitle,
                        percentage: 1,
                        child: Options(
                          scrollDirection: Axis.horizontal,
                          selectedIndex: model.selectedConstructionIndex,
                          onTapUpdateFunction: (index) =>
                              model.updateConstructionSelectedIndex(index),
                          optionList: model.constructionOptionList,
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
                    onPressed: () => getData(
                      MS(
                        core: model.coreStringValue,
                        construction: model.constructionStringValue,
                        coating: model.coatingStringValue,
                        diameter: model.diameterStringValue,
                      ),
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
        viewModelBuilder: () => MSViewModel());
  }
}




