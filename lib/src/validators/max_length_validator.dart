import 'package:flutter_field_validator/src/errors/errors.dart';

class MaxLengthValidator {
  final String _field;

  MaxLengthValidator(this._field);

  FieldError validate(int size) {
    return _field?.isNotEmpty == true && _field.length > size
        ? FieldError.maxLengthInvalid
        : null;
  }
}
