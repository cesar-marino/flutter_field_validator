import 'package:flutter_field_validator/src/builders/builders.dart';
import 'package:flutter_field_validator/src/protocols/protocols.dart';

class FieldValidator {
  Field field(dynamic field) => FieldBuilder(field);
}
