import 'package:flutter/material.dart';
import 'package:wiser/wiser.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _emailcontroller;
  late final TextEditingController _passwordcontroller;
  late final ValueNotifier<bool> _isLoading;

  @override
  void initState() {
    super.initState();
    _emailcontroller = TextEditingController();
    _passwordcontroller = TextEditingController();
    _isLoading = ValueNotifier(false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: context.tokens.spacing.spacingMedium,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              context.tokens.spacing.spacingMedium.verticalGap,
              Text(
                'Login',
                style: context.tokens.textStyle.heading1.copyWith(
                  color: context.tokens.color.primaryMain,
                ),
              ),
              context.tokens.spacing.spacingMedium.verticalGap,
              Text(
                'Insira suas credenciais',
                style: context.tokens.textStyle.paragraph.copyWith(
                  color: context.tokens.color.neutralMain,
                  fontSize: 21,
                ),
              ),
              context.tokens.spacing.spacingLarge.verticalGap,
              AnimatedBuilder(
                  animation: _emailcontroller,
                  builder: (context, _) {
                    return WiserField(
                      hint: 'fulano.beltrano@cwi.com.br',
                      labelText: 'E-mail',
                      controller: _emailcontroller,
                      validator: (text) => text?.hasError,
                      isValid: _emailcontroller.text.isValidEmail,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      errorText: _emailcontroller.text.isValidEmail
                          ? null
                          : 'E-mail inválido.',
                    );
                  }),
              context.tokens.spacing.spacingMedium.verticalGap,
              AnimatedBuilder(
                animation: _passwordcontroller,
                builder: (context, _) {
                  return WiserField(
                    hint: '12345',
                    labelText: 'Senha',
                    helperText: 'Digite pelo menos 5 caracteres',
                    isPassword: true,
                    controller: _passwordcontroller,
                    validator: (text) => text?.hasError,
                    isValid: _passwordcontroller.text.hasMinimumLength,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    errorText: _passwordcontroller.text.hasMinimumLength
                        ? null
                        : 'Senha inválida.',
                  );
                },
              ),
              context.tokens.spacing.spacingXxBig.verticalGap,
              AnimatedBuilder(
                  animation: Listenable.merge([
                    _passwordcontroller,
                    _emailcontroller,
                    _isLoading,
                  ]),
                  builder: (context, _) {
                    return WiserSolidButton.primary(
                      label: 'Acessar',
                      icon: Icons.chevron_right,
                      isDisabled: !(_emailcontroller.text.isValidEmail &&
                          _passwordcontroller.text.hasMinimumLength),
                      isLoading: _isLoading.value,
                      onPressed: () async {
                        if (_emailcontroller.text.isValidEmail &&
                            _passwordcontroller.text.hasMinimumLength) {
                          _isLoading.value = true;
                          await Future.delayed(const Duration(seconds: 2));
                          _isLoading.value = false;
                          showSnack();
                        }
                      },
                    );
                  }),
              context.tokens.spacing.spacingXBig.verticalGap,
              WiserUnderlineButton(
                label: 'Esqueci minha senha',
                labelColor: const Color(0XFF0000CD),
                onPressed: () {},
              ),
              context.tokens.spacing.spacingHuge.verticalGap,
              context.tokens.spacing.spacingXBig.verticalGap,
              Text(
                'Não tem uma conta?',
                style: context.tokens.textStyle.paragraph.copyWith(
                  color: context.tokens.color.neutralMain,
                  fontSize: context.tokens.spacing.spacingBig.value,
                ),
              ),
              context.tokens.spacing.spacingMedium.verticalGap,
              WiserTextButton.primary(
                label: 'Cadastre-se',
                icon: Icons.chevron_right,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showSnack() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Logado com sucesso'),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
