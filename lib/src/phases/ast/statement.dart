import 'dart:collection';

import 'package:antlr4/antlr4.dart';

import 'expression.dart';
import 'identifier.dart';
import 'operator.dart';
import 'rule.dart';

abstract class Statement extends Rule {
  const Statement(ParserRuleContext context) : super(context);

  @override
  List<Object> get props => const [];
}

abstract class SimpleStatement extends Statement {
  const SimpleStatement(ParserRuleContext context) : super(context);
}

class EmptyStatement extends SimpleStatement {
  const EmptyStatement({
    ParserRuleContext context,
  }) : super(context);
}

class LabeledStatement extends Statement {
  final SimpleIdentifier label;
  final Statement statement;

  const LabeledStatement(
    this.label,
    this.statement, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [label, statement];
}

class ReturnStatement extends Statement {
  final List<Expression> expressions;

  const ReturnStatement({
    this.expressions,
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [expressions];
}

class BreakStatement extends Statement {
  final SimpleIdentifier label;

  const BreakStatement({
    this.label,
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [label];
}

class ContinueStatement extends Statement {
  final SimpleIdentifier label;

  const ContinueStatement({
    this.label,
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [label];
}

class GotoStatement extends Statement {
  final SimpleIdentifier label;

  const GotoStatement(
    this.label, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [label];
}

class FallthroughStatement extends Statement {
  const FallthroughStatement({
    ParserRuleContext context,
  }) : super(context);
}

// For

class ForStatement extends Statement {
  final Statement init;
  final Expression condition;
  final Statement post;
  final List<Statement> block;

  const ForStatement(
    this.block, {
    this.init,
    this.condition,
    this.post,
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [init, condition, post, block];
}

class ForeverStatement extends ForStatement {
  const ForeverStatement(
    List<Statement> block, {
    ParserRuleContext context,
  }) : super(block, context: context);
}

class WhileStatement extends ForStatement {
  const WhileStatement(
    Expression condition,
    List<Statement> block, {
    ParserRuleContext context,
  }) : super(block, condition: condition, context: context);
}

class ForRangeStatement extends Statement {
  final List<Identifier> identifiers;
  final Expression expression;
  final Block block;

  const ForRangeStatement(
    this.identifiers,
    this.expression,
    this.block, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [identifiers, expression, block];
}

// IncDec statements

class IncrementStatement extends SimpleStatement {
  final Expression expression;

  const IncrementStatement(
    this.expression, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [expression];
}

class DecrementStatement extends SimpleStatement {
  final Expression expression;

  const DecrementStatement(
    this.expression, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [expression];
}

// Assignments

class Assignment extends SimpleStatement {
  final List<Expression> left;
  final Operator op;
  final List<Expression> right;

  const Assignment(
    this.left,
    this.op,
    this.right, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [left, op, right];
}

// If statements

class IfStatement extends Statement {
  final SimpleStatement statement;
  final Expression condition;
  final Block block;
  final Statement else$;

  const IfStatement(
    this.condition,
    this.block, {
    this.statement,
    this.else$,
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [statement, condition, block, else$];
}

class Block extends Statement
    with ListMixin<Statement>
    implements List<Statement> {
  final List<Statement> statements;

  const Block(
    this.statements, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [statements];

  @override
  int get length => statements.length;

  @override
  Statement operator [](int index) => statements[index];

  @override
  void operator []=(int index, Statement value) {
    throw UnimplementedError('Not supported');
  }

  @override
  set length(int newLength) {
    throw UnimplementedError('Not supported');
  }
}

class ShortVarAssignment extends SimpleStatement {
  final List<Identifier> identifiers;
  final List<Expression> expressions;

  const ShortVarAssignment(
    this.identifiers,
    this.expressions, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [identifiers, expressions];
}

class SwitchStatement extends Statement {
  final SimpleStatement statement;
  final Expression condition;
  final List<SwitchCase> cases;

  const SwitchStatement({
    this.statement,
    this.condition,
    this.cases = const [],
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [statement, condition, cases];
}

class SwitchCase extends Rule {
  final List<Expression> conditions;
  final List<Statement> body;

  bool get isDefault => conditions == null || conditions.isEmpty;

  const SwitchCase(
    this.conditions,
    this.body, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [conditions, body];
}
