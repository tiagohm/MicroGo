import 'package:antlr4/antlr4.dart';

import 'function.dart';
import 'identifier.dart';
import 'operator.dart';
import 'statement.dart';
import 'type.dart';

abstract class Expression extends SimpleStatement {
  const Expression(ParserRuleContext context) : super(context);
}

abstract class PrimaryExpression extends Expression {
  const PrimaryExpression(ParserRuleContext context) : super(context);
}

abstract class OperandExpression extends PrimaryExpression {
  const OperandExpression(ParserRuleContext context) : super(context);
}

class NamedOperandExpression extends OperandExpression {
  final Identifier identifier;

  const NamedOperandExpression(
    this.identifier, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [identifier];
}

class ConversionExpression extends PrimaryExpression {
  final DataType type;
  final Expression expression;

  const ConversionExpression(
    this.type,
    this.expression, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [type, expression];
}

class MethodExpression extends PrimaryExpression {
  final DataType type;
  final Identifier identifier;

  const MethodExpression(
    this.type,
    this.identifier, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [type, identifier];
}

abstract class OperatorExpression<T extends Operator> extends Expression {
  final T op;

  const OperatorExpression(
    this.op,
    ParserRuleContext context,
  ) : super(context);

  @override
  List<Object> get props => [op];
}

class UnaryExpression extends OperatorExpression<UnaryOperator> {
  final Expression expression;

  const UnaryExpression(
    UnaryOperator op,
    this.expression, {
    ParserRuleContext context,
  }) : super(op, context);

  @override
  List<Object> get props => [op, expression];
}

class MultExpression extends OperatorExpression<MultOperator> {
  final Expression left;
  final Expression right;

  const MultExpression(
    MultOperator op,
    this.left,
    this.right, {
    ParserRuleContext context,
  }) : super(op, context);

  @override
  List<Object> get props => [op, left, right];
}

class AddExpression extends OperatorExpression<AddOperator> {
  final Expression left;
  final Expression right;

  const AddExpression(
    AddOperator op,
    this.left,
    this.right, {
    ParserRuleContext context,
  }) : super(op, context);

  @override
  List<Object> get props => [op, left, right];
}

class RelationalExpression extends OperatorExpression<RelationalOperator> {
  final Expression left;
  final Expression right;

  const RelationalExpression(
    RelationalOperator op,
    this.left,
    this.right, {
    ParserRuleContext context,
  }) : super(op, context);

  @override
  List<Object> get props => [op, left, right];
}

class LogicalExpression extends OperatorExpression<LogicalOperator> {
  final Expression left;
  final Expression right;

  const LogicalExpression(
    LogicalOperator op,
    this.left,
    this.right, {
    ParserRuleContext context,
  }) : super(op, context);

  @override
  List<Object> get props => [op, left, right];
}

class SelectorExpression extends PrimaryExpression {
  final PrimaryExpression primary;
  final Identifier identifier;

  const SelectorExpression(
    this.primary,
    this.identifier, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [primary, identifier];
}

class IndexExpression extends PrimaryExpression {
  final PrimaryExpression primary;
  final Expression expression;

  const IndexExpression(
    this.primary,
    this.expression, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [expression];
}

class SliceExpression extends PrimaryExpression {
  final PrimaryExpression primary;
  final Expression left;
  final Expression right;

  const SliceExpression(
    this.primary, {
    this.left,
    this.right,
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [left, right];
}

class TypeAssertionExpression extends PrimaryExpression {
  final PrimaryExpression primary;
  final DataType type;

  const TypeAssertionExpression(
    this.primary,
    this.type, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [type];
}

class CallExpression extends PrimaryExpression {
  final PrimaryExpression primary;
  final List<Argument> arguments;

  const CallExpression(
    this.primary, {
    this.arguments = const [],
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [primary, arguments];
}
