import 'package:flutter/widgets.dart';
import 'package:flyparking/models/highlights_model.dart';
import 'package:flyparking/shared/custom_card.dart';

class HighlightsComponentViewHolder extends StatelessWidget {
  const HighlightsComponentViewHolder({Key? key, required this.highlightsModel})
      : super(key: key);

  final HighlightsModel highlightsModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: CustomCard(
        cardTitle: highlightsModel.title,
        width: double.infinity,
        widgets: [
          Column(
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      highlightsModel.message,
                      style: const TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                constraints: const BoxConstraints(
                    minWidth: double.infinity, maxHeight: 200),
                child: Image(
                  width: double.infinity,
                  image: AssetImage(highlightsModel.image),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
