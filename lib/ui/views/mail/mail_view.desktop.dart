import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'mail_viewmodel.dart';

class MailViewDesktop extends ViewModelWidget<MailViewModel> {
  const MailViewDesktop({super.key});

  @override
  Widget build(BuildContext context, MailViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, DESKTOP UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
