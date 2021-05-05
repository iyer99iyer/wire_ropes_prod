import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:wire_ropes/ui/common_page/common_page_viewmodel.dart';
import 'package:wire_ropes/ui/shared/styles.dart';
import 'package:wire_ropes/ui/shared/ui_helpers.dart';

class CommonPageView extends StatelessWidget {

  final String pageName;

  const CommonPageView({
    Key? key, required this.pageName,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CommonPageViewModel>.reactive(
        onModelReady: (model)=> model.setWidgetsForSelectedWireType(pageName),
        builder: (context, model, child) => Scaffold(
              body: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: kcBackgroundColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      verticalSpaceMedium,
                      Text(
                        "Wire Ropes",
                        style: ktsMainTitleTextStyle,
                      ),
                      verticalSpaceMedium,
                      Container(
                        height: 50,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: model.listWire.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () => model.updateSelectedIndex(index),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: model.selectedIndex == index
                                      ? kcSelectedWireTypeButtonColor
                                      : kcWireTypeButtonColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                margin: EdgeInsets.only(right: 8.0),
                                padding: EdgeInsets.symmetric(
                                    vertical: 4.0, horizontal: 24.0),
                                child: Center(
                                  child: Text(
                                    model.listWire[index],
                                    style: model.selectedIndex == index
                                        ? ktsSelectedWireTypeTitleTextStyle
                                        : ktsWireTypeTitleTextStyle,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      verticalSpaceMedium,
                      model.getWidgetsForSelectedWireType(model.selectedIndex!),


                    ],
                  ),
                ),
              ),
            ),
        viewModelBuilder: () => CommonPageViewModel());
  }
}
