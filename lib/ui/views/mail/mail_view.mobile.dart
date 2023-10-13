import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'mail_viewmodel.dart';

class MailViewMobile extends ViewModelWidget<MailViewModel> {
  const MailViewMobile({super.key});

  @override
  Widget build(BuildContext context, MailViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, MOBILE UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
