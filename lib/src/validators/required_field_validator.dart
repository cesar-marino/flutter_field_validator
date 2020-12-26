import '../errors/errors.dart';

class RequiredFieldValidator {
  final dynamic _field;

  RequiredFieldValidator(this._field);

  FieldError validate() {
    return _field?.isNotEmpty != true ? FieldError.requiredField : null;
  }
}
