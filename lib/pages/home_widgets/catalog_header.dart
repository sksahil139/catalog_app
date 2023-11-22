import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      "catalog App".text.xl5.bold.color(context.theme.hintColor).make(),
      "Trending products"
          .text
          .xl2
          .color(context.theme.hintColor)
          .textStyle(context.captionStyle)
          .make(),
    ]);
  }
}
