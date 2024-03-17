import 'package:flutter/material.dart';
import 'package:mauzy_story_app/core.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController retypePasswordController;
  bool isButtonEnabled = false;
  final formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    retypePasswordController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    retypePasswordController.dispose();
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
                children: [
                  Text(
                    AppLocalizations.of(context)!.registerTitle,
                    style: blackTextStyle.copyWith(fontSize: 20),
                  ),
                  Text(
                    AppLocalizations.of(context)!.registerSubtitle,
                    style: greyTextStyle.copyWith(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFieldWidget(
                    controller: nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppLocalizations.of(context)!.validatorName;
                      }
                      return null;
                    },
                    hintText: AppLocalizations.of(context)!.typeName,
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(
                    height: 10.0,
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
                    height: 10.0,
                  ),
                  TextFieldWidget(
                    controller: retypePasswordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppLocalizations.of(context)!
                            .validatorRetypePassword;
                      }
                      final isSamePassword = passwordController.text !=
                          retypePasswordController.text;
                      if (isSamePassword) {
                        return AppLocalizations.of(context)!.samePassword;
                      }
                      return null;
                    },
                    obsecureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    hintText: AppLocalizations.of(context)!.reTypePassword,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, state) => state.maybeMap(
                      orElse: () {
                        return null;
                      },
                      loggedOut: (value) {
                        snackBar(
                            context, 'Berhasil mendaftar akun, silahkan login');
                        context.goNamed(Routes.login);
                        return null;
                      },
                      error: (value) => snackBar(context, value.message),
                    ),
                    builder: (context, state) => state.maybeMap(
                      loading: (value) => const CircularProgressIndicator(),
                      orElse: () => ElevatedButtonWidget(
                        onPressed: () async {
                          final validate = formKey.currentState!.validate();

                          if (validate) {
                            final model = RegisterRequestModel(
                              name: nameController.text,
                              email: emailController.text,
                              password: passwordController.text,
                            );
                            context
                                .read<AuthBloc>()
                                .add(AuthEvent.doRegister(model));
                          }
                        },
                        label: AppLocalizations.of(context)!.buttonRegister,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.zero,
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
                Text(AppLocalizations.of(context)!.haveAccount,
                    style: greyTextStyle),
                LinkButton(
                  text: AppLocalizations.of(context)!.haveAccount2,
                  onPressed: () {
                    context.goNamed(Routes.login);
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
