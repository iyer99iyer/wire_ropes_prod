import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:wire_ropes/ui/add_rates_excel/add_rates_excel_viewmodel.dart';
import 'package:wire_ropes/ui/dumb_widgets/LoadingRoundButton.dart';
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
                    // Title
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
                          // importing Excel file container
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

                    // processing Excel, adding to temp table and showing data
                    !model.processAndShowDataProcessing
                        ? RoundMaterialButton(
                            title: "Process & Show Data",
                            onTap: () => model.onProcessShowButtonTapped(),
                            isButtonDisabled:
                                model.fileName == null ? true : false,
                          )
                        : LoadingRoundButton(),
                    verticalSpaceMedium,

                    // showing the processed data in the table format
                    model.tableData != null
                        ? Center(
                            child: DataTable(
                              sortColumnIndex: 0,
                              columnSpacing: 25,
                              decoration: BoxDecoration(
                                color: kcWireTypeButtonColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              columns: model.getDataColumn,
                              rows: model.getDataRow,
                            ))
                        : Container(),
                    verticalSpaceMedium,
                    // importing the verified data into tables
                    !model.importProcessing?RoundMaterialButton(
                      title: "Import",
                      onTap: () => model.onImportButtonTapped(),
                      isButtonDisabled: !model.importButton,
                    ):LoadingRoundButton(),
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
