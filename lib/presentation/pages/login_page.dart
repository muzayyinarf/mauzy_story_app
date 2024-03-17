import 'package:flutter/material.dart';
import 'package:mauzy_story_app/core.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final formKey = GlobalKey<FormState>();
  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Mauzy Story',
                    style: logoStyle.copyWith(
                        fontSize: 50, fontWeight: FontWeight.w100),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFieldWidget(
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppLocalizations.of(context)!.validatorEmail;
                      }
                      return null;
                    },
                    hintText: AppLocalizations.of(context)!.typeEmail,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFieldWidget(
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppLocalizations.of(context)!.validatorPassword;
                      }
                      return null;
                    },
                    obsecureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    hintText: AppLocalizations.of(context)!.typePassword,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, state) {
                      state.maybeMap(
                        orElse: () {},
                        loggedIn: (value) => context.goNamed(Routes.stories),
                        error: (value) => snackBar(context, value.message),
                      );
                    },
                    builder: (context, state) {
                      return state.maybeMap(
                        loading: (value) => const CircularProgressIndicator(),
                        orElse: () => ElevatedButtonWidget(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              final model = LoginRequestModel(
                                  email: emailController.text,
                                  password: passwordController.text);
                              context
                                  .read<AuthBloc>()
                                  .add(AuthEvent.doLogin(model));
                            }
                          },
                          label: AppLocalizations.of(context)!.buttonLogin,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: whiteColor,
          border: Border(
            top: BorderSide(
              color: greyTextColor,
              width: 0.5,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppLocalizations.of(context)!.noAccount,
                    style: greyTextStyle),
                LinkButton(
                  text: AppLocalizations.of(context)!.noAccount2,
                  onPressed: () {
                    context.goNamed(Routes.register);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
