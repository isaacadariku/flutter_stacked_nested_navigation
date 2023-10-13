import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_stacked_nested_navigation/app/app.bottomsheets.dart';
import 'package:flutter_stacked_nested_navigation/app/app.locator.dart';
import 'package:flutter_stacked_nested_navigation/ui/common/app_strings.dart';
import 'package:flutter_stacked_nested_navigation/ui/views/home/home_viewmodel.dart';

import '../helpers/test_helpers.dart';

void main() {
  HomeViewModel getModel() => HomeViewModel();

  group('HomeViewmodelTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());

    group('incrementCounter -', () {
      test('When called once should return  Counter is: 1', () {
        final model = getModel();
        model.incrementCounter();
        expect(model.counterLabel, 'Counter is: 1');
      });
    });

    group('showBottomSheet -', () {
      test('When called, should show custom bottom sheet using notice variant',
          () {
        final bottomSheetService = getAndRegisterBottomSheetService();

        final model = getModel();
        model.showBottomSheet();
        verify(bottomSheetService.showCustomSheet(
          variant: BottomSheetType.notice,
          title: ksHomeBottomSheetTitle,
          description: ksHomeBottomSheetDescription,
        ));
      });
    });
  });
}
