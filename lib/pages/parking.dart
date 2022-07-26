import 'package:flutter/material.dart';

class Parking extends StatefulWidget {
  const Parking({Key? key}) : super(key: key);

  @override
  State<Parking> createState() => _ParkingState();
}

class _ParkingState extends State<Parking> {
  @override
  Widget build(BuildContext context) {
    final List<String> items = ["One", "Two", "Three"];
    String _selected = items[0];
    return DropdownButton<String>(
      onChanged: ((value) => {
            setState(() {
              _selected = value!;
            })
          }),
      value: _selected,
      items: items.map(
        (String value) {
          return DropdownMenuItem<String>(value: value, child: Text(value));
        },
      ).toList(),
    );
  }
}
