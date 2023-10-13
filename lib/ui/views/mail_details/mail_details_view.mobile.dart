import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'mail_details_viewmodel.dart';

class MailDetailsViewMobile extends ViewModelWidget<MailDetailsViewModel> {
  const MailDetailsViewMobile({super.key});

  @override
  Widget build(BuildContext context, MailDetailsViewModel viewModel) {
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
