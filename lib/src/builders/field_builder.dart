import 'package:meta/meta.dart';

import '../errors/errors.dart';
import '../protocols/protocols.dart';
import '../validators/validators.dart';

class FieldBuilder implements Field {
  final _errors = List<FieldError>();
  final dynamic _field;

  FieldBuilder(this._field);

  @override
  Field compare({@required fieldToCompare}) {
    _handlerValidation(CompareFieldsValidator(_field).validate(fieldToCompare));
    return this;
  }

  @override
  Field email({
    String pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  }) {
    _handlerValidation(EmailValidator(_field).validate(pattern));
    return this;
  }

  @override
  Field isRequired() {
    _handlerValidation(RequiredFieldValidator(_field).validate());
    return this;
  }

  @override
  Field maxLength({@required int size}) {
    _handlerValidation(MaxLengthValidator(_field).validate(size));
    return this;
  }

  @override
  Field minLength({@required int size}) {
    _handlerValidation(MinLengthValidator(_field).validate(size));
    return this;
  }

  @override
  FieldError validate() => _errors.length == 0 ? null : _errors.first;

  @override
  List<FieldError> validateAll() => _errors.length == 0 ? null : _errors;

  void _handlerValidation(FieldError error) {
    if (error != null) _errors.add(error);
  }
}
