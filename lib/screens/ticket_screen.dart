import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_info_list.dart';
import '../utils/app_styles.dart';
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
