import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'chat_details_viewmodel.dart';

class ChatDetailsViewDesktop extends ViewModelWidget<ChatDetailsViewModel> {
  const ChatDetailsViewDesktop({super.key});

  @override
  Widget build(BuildContext context, ChatDetailsViewModel viewModel) {
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
