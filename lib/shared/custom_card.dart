import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({Key? key, required this.cardTitle}) : super(key: key);

  final String cardTitle;
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
        child: SizedBox(
          width: size.width,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(10),
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
      ),
    );
  }
}
