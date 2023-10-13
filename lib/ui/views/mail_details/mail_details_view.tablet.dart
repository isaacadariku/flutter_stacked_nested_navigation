import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'mail_details_viewmodel.dart';

class MailDetailsViewTablet extends ViewModelWidget<MailDetailsViewModel> {
  const MailDetailsViewTablet({super.key});

  @override
  Widget build(BuildContext context, MailDetailsViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, TABLET UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
