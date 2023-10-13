import 'package:flutter_stacked_nested_navigation/models/mail_model.dart';
import 'package:stacked/stacked.dart';

class MailDetailsViewModel extends BaseViewModel {
  MailDetailsViewModel({required this.mailId});
  String mailId;

  Mail get mail => demoMailData.firstWhere((m) => m.id == mailId);
}
