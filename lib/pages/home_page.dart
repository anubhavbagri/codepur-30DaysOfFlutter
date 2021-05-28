import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalogue.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Anubhav";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogueModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalogue App",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          // itemCount: CatalogueModel.items.length,
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
