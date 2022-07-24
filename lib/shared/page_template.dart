import 'package:flutter/material.dart';

class PageTemplate extends StatefulWidget {
  const PageTemplate(
      {Key? key,
      required this.title,
      required this.widgets,
      required this.showImage})
      : super(key: key);
  final String title;
  final bool showImage;
  final List<Widget> widgets;

  @override
  State<PageTemplate> createState() => _PageTemplateState();
}

class _PageTemplateState extends State<PageTemplate> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(
        children: [
          Row(
            children: [
              Visibility(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: const Image(
                    image: AssetImage('assets/flyparking.png'),
                    width: 50,
                  ),
                ),
                maintainSize: false,
                maintainAnimation: true,
                maintainState: true,
                visible: widget.showImage,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.title,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: widget.widgets,
          ),
        ],
      ),
    );
  }
}
