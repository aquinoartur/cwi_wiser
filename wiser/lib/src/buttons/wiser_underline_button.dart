import 'package:wiser/wiser.dart';
import 'package:flutter/cupertino.dart';

class WiserUnderlineButton extends StatelessWidget {
  final String label;
  final Color? labelColor;
  final Color defaultLabelColor;
  final void Function()? onPressed;
  final double? width;
  final double? height;
  final IconData? icon;
  final bool isDisabled;
  final EdgeInsetsGeometry? margin;

  WiserUnderlineButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.margin,
    this.labelColor,
    this.isDisabled = false,
    this.icon,
    this.width,
    this.height,
  })  : defaultLabelColor = WiserTokens.colors.neutralShade,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isDisabled,
      child: CupertinoButton(
        onPressed: onPressed,
        child: Container(
          margin: margin,
          height: height,
          width: width ?? 200,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(999),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  textAlign: TextAlign.center,
                  style: WiserTokens.text.paragraph.copyWith(
                    color: labelColor ?? defaultLabelColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
                if (icon != null) ...{
                  SizedBox(
                    width: context.tokens.spacing.spacingXSmall.value,
                  ),
                  Icon(
                    icon,
                    color: labelColor ?? defaultLabelColor,
                  ),
                },
              ],
            ),
          ),
        ),
      ),
    );
  }
}
