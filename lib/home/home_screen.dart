import 'package:flutter/material.dart';
import 'package:home_rent_app/constants.dart';
import 'package:home_rent_app/home/components/nav_list_bar.dart';

import 'components/house_card.dart';
import 'components/location_and_notification_button.dart';
import 'components/search_field.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LocationAndNotificationButton(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: SearchField(),
                ),
                const SizedBox(height: kDefaultPadding),
                HouseCard(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavListBar(),
    );
  }
}
