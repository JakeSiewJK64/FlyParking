import 'package:flutter/widgets.dart';
import 'package:flyparking/models/menu_option.dart';

class CustomOptionMenuViewHolder extends StatelessWidget {
  const CustomOptionMenuViewHolder({Key? key, required this.optionItem})
      : super(key: key);

  final MenuOption optionItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(optionItem.image),
          width: 50,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          child: Text(
            optionItem.name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
