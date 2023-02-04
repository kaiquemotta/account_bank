import 'package:checkout_card/themes/icons.dart';
import 'package:flutter/material.dart';

import '../box_card.dart';

class MyBanks extends StatelessWidget {
  const MyBanks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 0, left: 15),
          child: Text('Meus Bancos',
              style: Theme.of(context).textTheme.titleMedium),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 0,top: 10,left: 18,right: 18),
          child: Container(
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              height: 86.0,
              child: BoxCard(
                boxContent: _MyBanks(),
              )),
        ),
      ],
    );
  }
}

class _MyBanks extends StatelessWidget {
  const _MyBanks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Column(
          children: [
            Container(
              width: 100.0,
            ),
            Text("Santander"),
            Icon(
              Bancos.santander,
              size: 35,
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: 90.0,
            ),
            Text("NuBank"),
            Icon(
              Bancos.nubank,
              size: 35,
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: 90.0,
            ),
            Text("Original"),
            Icon(Bancos.original,
            size: 35,
             
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: 90.0,
            ),
            Text("Safra"),
            Icon(
             Bancos.safra,
              size: 35,
            ),
          ],
        ),
      ],
    );
  }
}
