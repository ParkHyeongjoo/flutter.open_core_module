import 'package:flutter/material.dart';

abstract class SLDefaultBody extends StatelessWidget {
  late BuildContext buildContext;

  SLDefaultBody({super.key});

  @override
  Widget build(BuildContext context) {
    buildContext = context;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      onStart(timeStamp);
    });

    return buildBody(context);
  }

  Widget buildBody(BuildContext context);

  void onStart(Duration timeStamp) {
    // TODO : nothing to do
  }
}