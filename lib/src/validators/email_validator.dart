import '../errors/errors.dart';

class EmailValidator {
  final String _field;

  EmailValidator(this._field);

  FieldError validate(String pattern) {
    return _field?.isNotEmpty == true && !RegExp(pattern).hasMatch(_field)
        ? FieldError.invalidEmail
        : null;
  }
}
