import 'package:flutter/material.dart';
import 'package:wiser/wiser.dart';

class WiserChecBoxListTile extends StatefulWidget {
  final bool? currentValue;
  final Function(bool?) onChanged;
  final String? title;
  final bool compact;
  final bool triState;

  const WiserChecBoxListTile({
    Key? key,
    required this.currentValue,
    required this.onChanged,
    this.title,
    this.compact = true,
    this.triState = true,
  }) : super(key: key);

  @override
  State<WiserChecBoxListTile> createState() => _WiserChecBoxListTileState();
}

class _WiserChecBoxListTileState extends State<WiserChecBoxListTile> {
  late final ValueNotifier<bool?> isSelected;

  @override
  void initState() {
    super.initState();
    isSelected = ValueNotifier(widget.currentValue);
  }

  @override
  void dispose() {
    isSelected.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: isSelected,
      builder: (context, _) {
        return CheckboxListTile(
          tristate: widget.triState,
          title: widget.title != null
              ? Text(
                  widget.title!,
                  style: context.tokens.textStyle.paragraphCopy,
                )
              : null,
          controlAffinity: ListTileControlAffinity.leading,
          value: isSelected.value,
          onChanged: (newValue) {
            isSelected.value = newValue;
            widget.onChanged(isSelected.value ?? false);
          },
          contentPadding: EdgeInsets.zero,
          activeColor: context.tokens.color.primaryMain,
          checkColor: context.tokens.color.neutralShade,
          visualDensity:
              widget.compact ? VisualDensity.compact : VisualDensity.standard,
          enabled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                context.tokens.spacing.spacingXSmall.value),
          ),
          checkboxShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                context.tokens.spacing.spacingXxSmall.value),
            side: BorderSide(
              color: context.tokens.color.neutralMain,
            ),
          ),
        );
      },
    );
  }
}
