import 'package:flutter/material.dart';
import 'package:wiser/wiser.dart';

import '../../tokens/tokens.dart';

class WiserButton extends StatelessWidget {
  final String label;
  final Color buttonColor;
  final Color labelColor;
  final void Function()? onPressed;
  final double? width;
  final double? height;
  final bool isLoading;
  final bool withIcon;
  final bool isDisabled;
  final Color spinnerColor;
  final EdgeInsetsGeometry? margin;

  WiserButton.solidPrimary({
    Key? key,
    required this.label,
    required this.onPressed,
    this.margin,
    this.isLoading = false,
    this.isDisabled = false,
    this.withIcon = true,
    this.width,
    this.height,
  })  : buttonColor = CustomTokens.colors.primaryMain,
        labelColor = CustomTokens.colors.neutralShade,
        spinnerColor = CustomTokens.colors.neutralConcrete,
        super(key: key);

  WiserButton.solidSecondary({
    Key? key,
    required this.label,
    required this.onPressed,
    this.margin,
    this.isLoading = false,
    this.isDisabled = false,
    this.withIcon = true,
    this.width,
    this.height,
  })  : buttonColor = CustomTokens.colors.neutralShade,
        labelColor = CustomTokens.colors.primaryMain,
        spinnerColor = CustomTokens.colors.neutralConcrete,
        super(key: key);

  WiserButton.solidTertiary({
    Key? key,
    required this.label,
    required this.onPressed,
    this.margin,
    this.isLoading = false,
    this.isDisabled = false,
    this.withIcon = true,
    this.width,
    this.height,
  })  : buttonColor = CustomTokens.colors.neutralMain,
        labelColor = CustomTokens.colors.neutralTint,
        spinnerColor = CustomTokens.colors.neutralShade,
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
                    return Container(
                      height:
                          height ?? context.tokens.spacing.spacingLarge.value,
                      width:
                          height ?? context.tokens.spacing.spacingLarge.value,
                      padding: EdgeInsets.symmetric(
                        vertical: context.tokens.spacing.spacingSmall.value,
                        horizontal: context.tokens.spacing.spacingXBig.value,
                      ),
                      child: CircularProgressIndicator(color: spinnerColor),
                    );
                  }
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        label,
                        textAlign: TextAlign.center,
                        style: CustomTokens.text.paragraph
                            .copyWith(color: labelColor),
                      ),
                      if (withIcon) ...{
                        SizedBox(
                          width: context.tokens.spacing.spacingXSmall.value,
                        ),
                        Icon(
                          Icons.check,
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
