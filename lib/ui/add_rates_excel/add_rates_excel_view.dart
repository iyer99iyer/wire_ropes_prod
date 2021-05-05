import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:wire_ropes/ui/add_rates_excel/add_rates_excel_viewmodel.dart';
import 'package:wire_ropes/ui/dumb_widgets/OutlineContainer.dart';
import 'package:wire_ropes/ui/dumb_widgets/RoundMaterialButton.dart';
import 'package:wire_ropes/ui/dumb_widgets/custom_container_without_title.dart';
import 'package:wire_ropes/ui/shared/styles.dart';
import 'package:wire_ropes/ui/shared/ui_helpers.dart';

class AddRatesExcelView extends StatelessWidget {
  const AddRatesExcelView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddRatesExcelViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              body: Container(
                padding: EdgeInsets.all(16.0),
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: kcBackgroundColor,
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    verticalSpaceLarge,
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => model.navigateBack(),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 40,
                            color: kcPrimaryColor,
                            semanticLabel: "Go Back",
                          ),
                        ),
                        horizontalSpaceSmall,
                        Text(
                          "Add Rates Excel",
                          style: ktsMainTitleTextStyle,
                        ),
                      ],
                    ),
                    verticalSpaceMedium,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "  Import Excel",
                            style: ktsSubTitleTextStyle,
                          ),
                          verticalSpaceSmall,
                          CustomContainerWithoutTitle(
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/image/excel_image.png",
                                        scale: 1.6,
                                      ),
                                      Text(
                                        model.fileName ?? "Select File...",
                                        style: ktsInfoTextTextStyle,
                                      ),
                                    ],
                                  ),
                                  MaterialButton(
                                    onPressed: () =>
                                        model.onFileSelectButtonTapped(),
                                    color: kcPrimaryColor,
                                    child: Text(
                                      "Select File...",
                                      style: ktsSelectedOptionsTextStyle,
                                    ),
                                    shape: StadiumBorder(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceMedium,
                    RoundMaterialButton(
                      title: "Process & Show Data",
                      onTap: () => model.onProcessShowButtonTapped(),
                      isButtonDisabled: model.fileName == null ? true : false,
                    ),
                    verticalSpaceMedium,
                    model.tableDataFromExcel != null ?Center(
                        child: CustomContainerWithoutTitle(
                      child: Column(
                        children: [
                          OutlineContainer(
                            child: Center(
                                child: Text(
                              model.tableDataFromExcel == null
                                  ? "Yo"
                                  : model.tableDataFromExcel!.wireTypeTitle,
                              style: ktsSubTitleTextStyle,
                            )),
                          ),
                          verticalSpaceSmall,
                          OutlineContainer(
                            child: Column(
                              children: List<Widget>.generate(model.tableDataFromExcel!.titleList.length, (int index) {
                                return Column(
                                  children: [
                                    IntrinsicHeight(
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            model.tableDataFromExcel!.titleList[index],
                                            style: ktsInfoTextTextStyle,
                                          ),
                                          VerticalDivider(
                                            thickness: 2.0,
                                            color: Colors.black,
                                          ),
                                          Text(
                                            model.tableDataFromExcel!.totalList[index].toString(),
                                            style: ktsInfoTextTextStyle,
                                          ),
                                        ],
                                      ),
                                    ),
                                    if(index < model.tableDataFromExcel!.titleList.length-1) Divider(thickness: 2.0,color: Colors.black,),
                                  ],
                                );
                                // model.tableDataFromExcel!.titleList[index]
                              }),
                            ),
                          )
                        ],
                      ),
                      percentage: 0.6,
                    )):Container(),
                    verticalSpaceMedium,
                    RoundMaterialButton(
                      title: "Import",
                      onTap: () {},
                      isButtonDisabled: model.tableDataFromExcel != null ? false: true,
                    ),
                  ],
                ),
              ),
            ),
        viewModelBuilder: () => AddRatesExcelViewModel());
  }
}

// [

//
// IntrinsicHeight(
// child: Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceAround,
// children: [
// Text(
// "6X19 sc",
// style: ktsInfoTextTextStyle,
// ),
// VerticalDivider(
// thickness: 2.0,
// color: Colors.black,
// ),
// Text(
// "24",
// style: ktsInfoTextTextStyle,
// ),
// ],
// ),
// ),
// Divider(thickness: 2.0,color: Colors.black,),
// IntrinsicHeight(
// child: Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceAround,
// children: [
// Text(
// "6X19 sc",
// style: ktsInfoTextTextStyle,
// ),
// VerticalDivider(
// thickness: 2.0,
// color: Colors.black,
// ),
// Text(
// "24",
// style: ktsInfoTextTextStyle,
// ),
// ],
// ),
// ),
// ],
