import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import '../model/form.dart';

class FormController {
  final void Function(String) callback;

  static const String URL =
      "https://script.google.com/macros/s/AKfycbxKYolxtw8QGIG_vSSokGan1cfsu4sbeAm-Ke35nHBDKJ6C3YMKxs3OHQUy3RtXmRGq/exec";

  static const STATUS_SUCESS = "SUCESS";

  FormController(this.callback);

  void submitForm(FeedbackForm feedbackForm) async {
    try {
      await http.get(URL + feedbackForm.toParams()).then((res) {
        callback(convert.jsonDecode(res.body)['status']);
      });
    } catch (error) {
      print(error);
    }
  }
}
