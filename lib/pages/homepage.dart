import 'package:flutter/material.dart';
import 'package:flyparking/models/menu_option.dart';
import 'package:flyparking/shared/custom_card.dart';
import 'package:flyparking/shared/custom_option_menu_viewholder.dart';
import 'package:flyparking/shared/page_template.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<MenuOption> menuOptions = [
    MenuOption("Home", "assets/home.png", "/home"),
    MenuOption("Account", "assets/profile.png", "/home"),
    MenuOption("Topup", "assets/topup.png", "/home"),
    MenuOption("Parking", "assets/parking.png", "/home"),
    MenuOption("Vechicles", "assets/car.png", "/home"),
  ];

  List<Widget> getWidgets() {
    return <Widget>[
      for (var item in menuOptions) CustomOptionMenuViewHolder(optionItem: item)
    ];
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            PageTemplate(
              title: "My FlyParking",
              showImage: true,
              widgets: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Welcome back, JakeSiewJK64",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffe74c3c),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Credit: 10.00",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomCard(
                  cardTitle: "",
                  width: 100,
                  widgets: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Wrap(
                          spacing: 55,
                          direction: Axis.horizontal,
                          children: getWidgets(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
