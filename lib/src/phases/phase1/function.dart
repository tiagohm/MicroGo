import 'package:antlr4/antlr4.dart';

import 'identifier.dart';
import 'rule.dart';
import 'type.dart';

/// The [parameters] and [result] type of a function signature.
class Signature extends Rule {
  final List<Parameter> parameters;
  final DataType result;

  const Signature(
    this.parameters, {
    this.result,
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [parameters, result];
}

class Parameter extends Rule {
  final Identifier identifier;
  final DataType type;
  final bool ellipsis;

  const Parameter(
    this.identifier,
    this.type, {
    this.ellipsis = false,
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [identifier, type, ellipsis];
}
