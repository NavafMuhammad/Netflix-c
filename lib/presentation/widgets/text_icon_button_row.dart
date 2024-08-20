import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/text_icon_button_widget.dart';

class TextIconButtonRow extends StatelessWidget {
  const TextIconButtonRow({
    super.key,
    required this.list,
  });

  final List<TextIconButtonWidget> list;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: list,
    );
  }
}
