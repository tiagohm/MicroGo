import 'package:antlr4/antlr4.dart';

import 'package.dart';
import 'rule.dart';

abstract class Identifier extends Rule {
  final String value;

  const Identifier(
    this.value,
    ParserRuleContext context,
  ) : super(context);

  @override
  List<Object> get props => [value];
}

class SimpleIdentifier extends Identifier {
  const SimpleIdentifier(
    String name, {
    ParserRuleContext context,
  }) : super(name, context);
}

class QualifiedIdentifier extends Identifier {
  final Package package;

  const QualifiedIdentifier(
    this.package,
    String value, {
    ParserRuleContext context,
  }) : super(value, context);

  @override
  List<Object> get props => [package, value];
}
