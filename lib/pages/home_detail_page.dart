// ignore_for_file: public_member_api_docs, sort_constructors_first
import "package:flutter/material.dart";
import "package:learningdart/model/catalog.dart";
import "package:learningdart/pages/home_widgets/add_to_cart.dart";
import "package:velocity_x/velocity_x.dart";

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    super.key,
    required this.catalog,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          //iconTheme: IconThemeData(color: context.theme.hintColor),
        ),
        bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.xl2.color(context.accentColor).make(),
              AddToCart(catalog: catalog).wh(160, 50),
            ],
          ).p32(),
        ),
        backgroundColor: context.canvasColor,
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                      tag: Key(catalog.id.toString()),
                      child: Image.network(catalog.image))
                  .h32(context),
              Expanded(
                  child: VxArc(
                height: 30,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl3
                          .color(context.theme.hintColor)
                          .bold
                          .make(),
                      catalog.desc.text.lg
                          .color(context.theme.hintColor)
                          .textStyle(context.captionStyle)
                          .make(),
                      10.heightBox,
                    ],
                  ).py64(),
                ),
              ))
            ],
          ),
        ));
  }
}
