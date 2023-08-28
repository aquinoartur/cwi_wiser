import 'package:flutter/cupertino.dart';
import 'package:wiser/tokens/tokens.g.dart';

class WiserToogle extends StatefulWidget {
  final bool initialValue;
  final Function(bool)? onChanged;

  const WiserToogle({
    Key? key,
    required this.initialValue,
    this.onChanged,
  }) : super(key: key);

  @override
  State<WiserToogle> createState() => _WiserToogleState();
}

class _WiserToogleState extends State<WiserToogle> {
  late final ValueNotifier<bool> isSelected;

  @override
  void initState() {
    super.initState();
    isSelected = ValueNotifier(widget.initialValue);
  }

  @override
  void dispose() {
    isSelected.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isSelected,
      builder: (context, value, _) {
        return CupertinoSwitch(
          value: value,
          activeColor: value
              ? context.tokens.color.primaryXtint
              : context.tokens.color.neutralXtint,
          thumbColor: value
              ? context.tokens.color.primaryMain
              : context.tokens.color.neutralTint,
          trackColor: value
              ? context.tokens.color.primaryXtint
              : context.tokens.color.neutralXtint,
          onChanged: (v) {
            isSelected.value = v;
            widget.onChanged?.call(value);
          },
        );
      },
    );
  }
}
