import '../errors/errors.dart';

class MinLengthValidator {
  final String _field;

  MinLengthValidator(this._field);

  FieldError validate(int size) {
    return _field?.isNotEmpty == true && _field.length < size
        ? FieldError.minLengthInvalid
        : null;
  }
}
