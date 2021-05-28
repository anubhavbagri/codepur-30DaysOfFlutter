import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_application_1/models/catalogue.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Anubhav";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogueJson =
        await rootBundle.loadString("assets/files/catalogue.json");
    // print(catalogueJson);

    //decoding json string into another format(map)
    final decodedData = jsonDecode(catalogueJson);
    // print(decodedData);
    // if we have a map and we want to convert it to string -> jsonEncode()

    var productsData = decodedData["products"];
    // print(productsData);

    CatalogueModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
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
          itemCount: CatalogueModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogueModel.items[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
