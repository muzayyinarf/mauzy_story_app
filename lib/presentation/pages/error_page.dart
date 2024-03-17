import 'package:flutter/material.dart';
import 'package:mauzy_story_app/core.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.errorAppBar),
      ),
      body: Center(
        child: Text(AppLocalizations.of(context)!.errorNotFound),
      ),
    );
  }
}
