import 'package:antlr4/antlr4.dart';
import 'package:meta/meta.dart';

import 'expression.dart';
import 'function.dart';
import 'statement.dart';

abstract class Literal extends OperandExpression {
  const Literal(
    ParserRuleContext context,
  ) : super(context);
}

abstract class BasicLiteral<T> extends Literal {
  final T value;

  const BasicLiteral(
    this.value,
    ParserRuleContext context,
  ) : super(context);
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

class FunctionLiteral extends Literal {
  final Signature signature;
  final Block block;

  const FunctionLiteral(
    this.signature,
    this.block, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [signature, block];
}
