import 'package:flutter/material.dart';
import 'package:wiser/wiser.dart';

class FieldsScreen extends StatefulWidget {
  static const String routeName = '/fields';
  const FieldsScreen({super.key});

  @override
  State<FieldsScreen> createState() => _FieldsScreenState();
}

class _FieldsScreenState extends State<FieldsScreen> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '1234');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fields'),
        backgroundColor: context.tokens.color.neutralShade,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: context.tokens.spacing.spacingBig,
            child: AnimatedBuilder(
              animation: Listenable.merge([_controller]),
              builder: (context, child) {
                return Column(
                  children: [
                    WiserFormField(
                      hint: 'Wiser Form Field',
                      labelText: 'Label',
                      helperText: 'Description Text',
                      autofocus: true,
                      suffixIcon: Icon(
                        Icons.chevron_right,
                        color: WiserTokens.colors.neutralMain,
                      ),
                    ),
                    WiserTokens.spacing.spacingLarge.verticalGap,
                    WiserFormField(
                      hint: 'Wiser Form Field',
                      labelText: 'Label',
                      helperText: 'Description Text',
                      suffixIcon: Icon(
                        Icons.chevron_right,
                        color: WiserTokens.colors.neutralMain,
                      ),
                    ),
                    WiserTokens.spacing.spacingLarge.verticalGap,
                    WiserFormField(
                      hint: 'Wiser Form Field',
                      labelText: 'Label',
                      helperText: 'Description Text',
                      isValid: true,
                      suffixIcon: Icon(
                        Icons.chevron_right,
                        color: WiserTokens.colors.neutralMain,
                      ),
                    ),
                    WiserTokens.spacing.spacingLarge.verticalGap,
                    WiserFormField(
                      hint: 'Wiser Form Field',
                      labelText: 'Digite sua senha',
                      helperText: 'Digite ao menos 5 caracteres',
                      controller: _controller,
                      validator: (text) => text?.hasError,
                      isValid: _controller.text.hasMinimumLength,
                      errorText: _controller.text.hasMinimumLength
                          ? null
                          : 'Número de caracteres insuficiente.',
                      suffixIcon: Icon(
                        Icons.chevron_right,
                        color: WiserTokens.colors.neutralMain,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
