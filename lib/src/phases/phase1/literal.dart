import 'package:antlr4/antlr4.dart';
import 'package:meta/meta.dart';

import 'expression.dart';

abstract class Literal<T> extends OperandExpression {
  final T value;

  const Literal(
    this.value,
    ParserRuleContext context,
  ) : super(context);

  @override
  List<Object> get props => [value];
}

abstract class BasicLiteral<T> extends Literal<T> {
  const BasicLiteral(
    T value,
    ParserRuleContext context,
  ) : super(value, context);
}

class NilLiteral extends BasicLiteral {
  const NilLiteral({ParserRuleContext context}) : super(null, context);
}

class IntegerLiteral extends BasicLiteral<int> {
  const IntegerLiteral(
    int value, {
    ParserRuleContext context,
  }) : super(value, context);
}

class FloatLiteral extends BasicLiteral<double> {
  const FloatLiteral(
    double value, {
    ParserRuleContext context,
  }) : super(value, context);
}

class RuneLiteral extends BasicLiteral<String> {
  const RuneLiteral(
    String value, {
    ParserRuleContext context,
  }) : super(value, context);
}

class StringLiteral extends BasicLiteral<String> {
  final bool raw;

  const StringLiteral(
    String value, {
    @required this.raw,
    ParserRuleContext context,
  }) : super(value, context);

  @override
  List<Object> get props => [value, raw];
}
