import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({
    Key? key,
    required this.cardTitle,
    required this.width,
    required this.widgets,
  }) : super(key: key);

  final String cardTitle;
  final double width;
  final List<Widget> widgets;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Material(
      elevation: 10,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: size.width,
          constraints: const BoxConstraints(maxHeight: double.infinity),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Visibility(
                    visible: widget.cardTitle.isNotEmpty,
                    maintainSize: false,
                    child: Text(
                      widget.cardTitle,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: widget.widgets,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
