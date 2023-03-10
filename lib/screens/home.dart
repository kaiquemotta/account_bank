import 'package:checkout_card/components/box_card.dart';
import 'package:checkout_card/components/content_division.dart';
import 'package:checkout_card/components/sections/account_actions.dart';
import 'package:checkout_card/components/sections/account_points.dart';
import 'package:checkout_card/components/sections/header.dart';
import 'package:checkout_card/components/sections/recent_activity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/sections/investments.dart';
import '../components/sections/my_banks.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Header(),
          RecentActivity(),
          AccountActions(),
          AccountPoints(),
          MyBanks(),
          Investments(),
        ],
      ),
    ));
  }
}
