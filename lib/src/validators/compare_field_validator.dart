import '../errors/errors.dart';

class CompareFieldsValidator {
  final dynamic _field;

  CompareFieldsValidator(this._field);

  FieldError validate(dynamic fieldToCompare) {
    return _field != fieldToCompare ? FieldError.notEquals : null;
  }
}
