import 'package:flutter/material.dart';
import 'package:mauzy_story_app/core.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Future<LoginResult?> _fetchData() async {
    return await LoginInfoPreference().getLoginInfo();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _fetchData(),
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Text(
                  state.data?.name ??
                      AppLocalizations.of(context)!.usernameTitle,
                ),
                const Icon(Icons.keyboard_arrow_down_rounded)
              ],
            ),
            actions: const [
              FlagIconWidget(),
              SizedBox(
                width: 30.0,
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 70,
                    child: Icon(
                      Icons.person,
                      size: 90,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    state.data?.name ??
                        AppLocalizations.of(context)!.usernameTitle,
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, state) => state.maybeMap(
                      orElse: () {
                        return null;
                      },
                      loggedOut: (value) => context.goNamed(Routes.login),
                    ),
                    builder: (context, state) => state.maybeMap(
                      loading: (value) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      orElse: () {
                        return ElevatedButtonWidget(
                          label: AppLocalizations.of(context)!.buttonLogout,
                          onPressed: () {
                            context
                                .read<AuthBloc>()
                                .add(const AuthEvent.doLogout());
                          },
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
