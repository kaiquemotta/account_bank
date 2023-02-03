import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BoxCard extends StatelessWidget {
  final Widget boxContent;
  const BoxCard({Key? key, required this.boxContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[3],
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).cardColor
      ),
      child: boxContent,
    );
  }
}
