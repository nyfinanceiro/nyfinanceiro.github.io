import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Validator {

  // Validate empty text
  static bool empty(String? text) {
    if (text == null || text.isEmpty)
      return true;

    return false;
  }

  // Validate email format
  static bool _validaEmail(String value) {
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return false;
    } else if(!regExp.hasMatch(value)){
      return false;
    }else {
      return true;
    }
  }

  // Validate empty text and email format
  static bool email(String? text) {
    if (!_validaEmail(text!))
      return false;

    return true;
  }

  // Validate empty text and phone number format
  static bool phone(String? text) {
    if (text!.length != 15)
      return false;

    return true;
  }

  // Validate empty text and date format
  static bool date(String? text) {
    if (text!.length != 10)
      return false;

    return true;

  }
}