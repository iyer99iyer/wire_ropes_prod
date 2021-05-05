import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:wire_ropes/ui/dumb_widgets/button_with_image.dart';
import 'package:wire_ropes/ui/dumb_widgets/custom_container_without_title.dart';
import 'package:wire_ropes/ui/home_page/home_page_viewmodel.dart';
import 'package:wire_ropes/ui/shared/styles.dart';
import 'package:wire_ropes/ui/shared/ui_helpers.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: Text(
                  "Home",
                  style: ktsMainTitleTextStyle.copyWith(color: Colors.white),
                ),
                centerTitle: true,
                leading: Icon(
                  Icons.menu,
                  size: 30,
                ),
              ),
              body: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: kcBackgroundColor,
                ),
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  shrinkWrap: true,
                  children: [
                    verticalSpaceMedium,
                    Text(
                      "Services",
                      style: ktsMainTitleTextStyle,
                    ),
                    CustomContainerWithoutTitle(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ButtonWithImage(
                                imagePath: model.msImagePath,
                                title: model.msTitle,
                                onTap: () => model.navigateToCommonPage(
                                    wireType: model.msTitle),
                              ),
                              ButtonWithImage(
                                imagePath: model.ssImagePath,
                                title: model.ssTitle,
                                onTap: () => model.navigateToCommonPage(
                                    wireType: model.ssTitle),
                              ),
                              ButtonWithImage(
                                imagePath: model.sisalImagePath,
                                title: model.sisalTitle,
                                onTap: () => model.navigateToCommonPage(
                                    wireType: model.sisalTitle),
                              )
                            ],
                          ),
                          verticalSpaceMedium,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ButtonWithImage(
                                  imagePath: model.slingImagePath,
                                  title: model.slingTitle,
                                  onTap: () => model.navigateToCommonPage(
                                      wireType: model.slingTitle)),
                              ButtonWithImage(
                                  imagePath: model.calcImagePath,
                                  title: model.calcTitle,
                                  onTap: () => model.navigateToCommonPage(
                                      wireType: model.slingTitle)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceLarge,
                    Text(
                      "Wire Rates",
                      style: ktsMainTitleTextStyle,
                    ),
                    CustomContainerWithoutTitle(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ButtonWithImage(
                            title: "Add Rates",
                            onTap: () => model.navigateToAddRatesExcel(),
                            icon: Icons.note_add,
                            size: 50,
                            color: Colors.green,
                          ),
                          ButtonWithImage(
                            title: "Edit Rates",
                            onTap: () {},
                            icon: Icons.edit,
                            size: 50,
                          ),
                          ButtonWithImage(
                            title: "Update Rates",
                            onTap: () {},
                            icon: Icons.article,
                            size: 50,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        viewModelBuilder: () => HomePageViewModel());
  }
}




