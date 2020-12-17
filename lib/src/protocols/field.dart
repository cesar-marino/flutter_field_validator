import 'package:meta/meta.dart';

import '../errors/errors.dart';

abstract class Field {
  Field compare({@required fieldToCompare});

  Field email({String pattern});

  Field isRequired();

  Field maxLength({@required int size});

  Field minLength({@required int size});

  FieldError validate();

  List<FieldError> validateAll();
}
