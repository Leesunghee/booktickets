import 'package:barcode_widget/barcode_widget.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_info_list.dart';
import '../utils/app_styles.dart';
import '../widgets/column_layout.dart';
import '../widgets/layout_bulider_widget.dart';
import '../widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20),
            ),
            children: [
              Gap(
                AppLayout.getHeight(40),
              ),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              Gap(
                AppLayout.getHeight(20),
              ),
              const AppTicketTabs(
                firstTab: "Upcoming",
                secondTab: "Previous",
              ),
              Gap(
                AppLayout.getHeight(10),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getWidth(15),
                ),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(15),
                  vertical: AppLayout.getHeight(15),
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(15),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: "Flutter DB",
                          secondText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: "5221 364869",
                          secondText: "passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(
                      AppLayout.getHeight(20),
                    ),
                    const AppLayoutBuilderWidget(
                      isColor: false,
                      sections: 15,
                      width: 5,
                    ),
                    Gap(
                      AppLayout.getHeight(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: "364738 28274478",
                          secondText: "Number of E-ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: "B2SG28",
                          secondText: "Booking code",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(
                      AppLayout.getHeight(20),
                    ),
                    const AppLayoutBuilderWidget(
                      isColor: false,
                      sections: 15,
                      width: 5,
                    ),
                    Gap(
                      AppLayout.getHeight(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/visa.png",
                                  scale: 11,
                                ),
                                Text(
                                  " *** 2462",
                                  style: Styles.headLineStyle3,
                                ),
                              ],
                            ),
                            Gap(
                              AppLayout.getHeight(5),
                            ),
                            Text(
                              "Payment method",
                              style: Styles.headLineStyle4,
                            )
                          ],
                        ),
                        const AppColumnLayout(
                          firstText: "\$249.99",
                          secondText: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(
                      AppLayout.getHeight(10),
                    ),
                  ],
                ),
              ),
              /*
              bar code
               */
              const SizedBox(
                height: 1,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      AppLayout.getHeight(21),
                    ),
                    bottomRight: Radius.circular(
                      AppLayout.getHeight(21),
                    ),
                  ),
                ),
                margin: EdgeInsets.only(
                  left: AppLayout.getWidth(15),
                  right: AppLayout.getWidth(15),
                ),
                padding: EdgeInsets.only(
                  top: AppLayout.getHeight(25),
                  bottom: AppLayout.getHeight(25),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(15),
                    ),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: "https://github.com/martinovovo",
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(
                AppLayout.getHeight(20),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getWidth(15),
                ),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getWidth(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getWidth(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
