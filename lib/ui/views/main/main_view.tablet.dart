import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'main_viewmodel.dart';

class MainViewTablet extends ViewModelWidget<MainViewModel> {
  const MainViewTablet({super.key});

  @override
  Widget build(BuildContext context, MainViewModel viewModel) {
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
