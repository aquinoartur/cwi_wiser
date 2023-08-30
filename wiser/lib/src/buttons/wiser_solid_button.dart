import 'package:flutter/material.dart';
import 'package:wiser/wiser.dart';

class WiserSolidButton extends StatelessWidget {
  final String label;
  final Color buttonColor;
  final Color labelColor;
  final void Function()? onPressed;
  final double? width;
  final double? height;
  final bool isLoading;
  final IconData? icon;
  final bool isDisabled;
  final Color spinnerColor;
  final EdgeInsetsGeometry? margin;

  WiserSolidButton.primary({
    Key? key,
    required this.label,
    required this.onPressed,
    this.margin,
    this.isLoading = false,
    this.isDisabled = false,
    this.icon,
    this.width,
    this.height,
  })  : buttonColor = WiserTokens.colors.primaryMain,
        labelColor = WiserTokens.colors.neutralShade,
        spinnerColor = WiserTokens.colors.neutralXtint,
        super(key: key);

  WiserSolidButton.secondary({
    Key? key,
    required this.label,
    required this.onPressed,
    this.margin,
    this.isLoading = false,
    this.isDisabled = false,
    this.icon,
    this.width,
    this.height,
  })  : buttonColor = WiserTokens.colors.neutralShade,
        labelColor = WiserTokens.colors.primaryMain,
        spinnerColor = WiserTokens.colors.neutralXtint,
        super(key: key);

  WiserSolidButton.tertiary({
    Key? key,
    required this.label,
    required this.onPressed,
    this.margin,
    this.isLoading = false,
    this.isDisabled = false,
    this.icon,
    this.width,
    this.height,
  })  : buttonColor = WiserTokens.colors.neutralMain,
        labelColor = WiserTokens.colors.neutralTint,
        spinnerColor = WiserTokens.colors.neutralShade,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height ?? context.tokens.spacing.spacingLarge.value,
      width: width ?? 200,
      child: IgnorePointer(
        ignoring: isLoading || isDisabled,
        child: Material(
          borderRadius: BorderRadius.circular(999),
          color: isDisabled ? buttonColor.withOpacity(.5) : buttonColor,
          child: InkWell(
            borderRadius: BorderRadius.circular(999),
            onTap: onPressed,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                vertical: context.tokens.spacing.spacingSmall.value,
                horizontal: context.tokens.spacing.spacingXBig.value,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(999),
              ),
              child: Builder(
                builder: (context) {
                  if (isLoading && !isDisabled) {
                    return SizedBox(
                      height: height ?? context.tokens.spacing.spacingBig.value,
                      width: height ?? context.tokens.spacing.spacingBig.value,
                      child: Center(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(spinnerColor),
                          strokeWidth: 3.0,
                        ),
                      ),
                    );
                  }
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        label,
                        textAlign: TextAlign.center,
                        style: WiserTokens.text.paragraph.copyWith(
                          color: labelColor,
                        ),
                      ),
                      if (icon != null) ...{
                        SizedBox(
                          width: context.tokens.spacing.spacingXSmall.value,
                        ),
                        Icon(
                          icon,
                          color: labelColor,
                        ),
                      },
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
