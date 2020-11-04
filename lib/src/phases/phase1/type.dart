import 'package:antlr4/antlr4.dart';

import 'function.dart';
import 'identifier.dart';
import 'rule.dart';

/// A [DataType] determines a set of values together with
/// operations and methods specific to those values.
abstract class DataType extends Rule {
  const DataType(ParserRuleContext context) : super(context);

  @override
  List<Object> get props => const [];
}

/// Composes a [DataType] from existing types.
abstract class LiteralType extends DataType {
  const LiteralType(ParserRuleContext context) : super(context);
}

final integerTypeNameRegex = RegExp(r'^u?int(\d+)$');
final floatTypeNameRegex = RegExp(r'float(\d+)$');

/// A [DataType] represented by a [name].
class NamedType extends DataType {
  final Identifier name;

  const NamedType(
    this.name,
    ParserRuleContext context,
  ) : super(context);

  factory NamedType.from(
    Identifier identifier,
    ParserRuleContext context,
  ) {
    final name = identifier.value;

    if (identifier is SimpleIdentifier) {
      // Boolean
      if (name == 'bool') {
        return BooleanType(identifier, context: context);
      }

      // Integer
      var m = integerTypeNameRegex.firstMatch(name);

      if (m != null) {
        final bits = int.parse(m.group(1));
        final unsigned = bits <= 1 || name[0] == 'u';

        if (bits > 1 && bits <= 64) {
          return IntegerType(bits, unsigned, identifier, context: context);
        } else if (bits == 1) {
          return BooleanType(identifier, context: context);
        }
      }

      // Float
      m = floatTypeNameRegex.firstMatch(name);

      if (m != null) {
        final bits = int.parse(m.group(1));

        if (bits == 32 || bits == 64) {
          return FloatType(bits, identifier, context: context);
        }
      }
    }

    return NamedType(identifier, context);
  }

  @override
  List<Object> get props => [name];
}

/// A [NamedType] representing primitive types.
class PrimitiveType extends NamedType {
  const PrimitiveType(Identifier name, ParserRuleContext context)
      : super(name, context);
}

/// A [PrimitiveType] that represents interger numbers of 1-64 [bits] of length,
/// [unsigned] or not.
class IntegerType extends PrimitiveType {
  final int bits;
  final bool unsigned;

  const IntegerType(
    this.bits,
    this.unsigned,
    Identifier name, {
    ParserRuleContext context,
  }) : super(name, context);

  @override
  List<Object> get props => [name, bits];
}

/// A [PrimitiveType] that represents floating-point numbers of 32 or 64 [bits].
class FloatType extends PrimitiveType {
  final int bits;

  const FloatType(
    this.bits,
    Identifier name, {
    ParserRuleContext context,
  }) : super(name, context);

  @override
  List<Object> get props => [name, bits];
}

/// A [PrimitiveType] that represents boolean values.
class BooleanType extends PrimitiveType {
  const BooleanType(
    Identifier name, {
    ParserRuleContext context,
  }) : super(name, context);
}

// TODO: Onde é usado?
class CastType extends DataType {
  final DataType type;

  const CastType(
    this.type, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [type];
}

/// A struct is a sequence of named elements, called [Field]s,
///  each of which has a name and a type.
class StructType extends LiteralType {
  final List<Field> fields;

  const StructType(
    this.fields, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [fields];
}

/// A named element of [StructType].
abstract class Field extends Rule {
  const Field(ParserRuleContext context) : super(context);

  @override
  List<Object> get props => [];
}

/// A [Field] with a [name] specified explicitly and a [type].
class NamedField extends Field {
  final Identifier name;
  final DataType type;

  const NamedField(
    this.name,
    this.type, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [name, type];
}

/// A [Field] with a name specified implicitly by a [type]
/// or a [pointer] to a non-interface [type].
class EmbeddedField extends Field {
  final DataType type;
  final bool pointer;

  const EmbeddedField(
    this.type, {
    this.pointer,
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [pointer, type];
}

/// A set of [Parameter] returned by a function.
class Tuple extends DataType {
  final List<Parameter> parameters;

  const Tuple(
    this.parameters, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [parameters];

  @override
  bool get stringify => true;
}

/// Denotes the set of all functions with the same [signature].
class FunctionType extends LiteralType {
  final Signature signature;

  const FunctionType(
    this.signature, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [signature];
}

class PointerType extends LiteralType {
  final LiteralType type;

  const PointerType(
    this.type, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [type];
}
