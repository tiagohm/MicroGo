import 'package:antlr4/antlr4.dart';
import 'package:meta/meta.dart';
import 'package:microgo/src/phases/phase1/identifier.dart';
import 'package:microgo/src/phases/phase1/type.dart';

import 'expression.dart';
import 'function.dart';
import 'rule.dart';
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

class CompositeLiteral extends Literal {
  final LiteralType type;
  final CompositeValue value;

  CompositeLiteral(
    this.type,
    this.value, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [type, value];
}

class CompositeValue extends Rule {
  final List<KeyedElement> elements;

  const CompositeValue(
    this.elements, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [elements];
}

class KeyedElement<T> extends Rule {
  final Key<T> key;
  final Element element;

  bool get keyed => key != null;

  const KeyedElement(
    this.element, {
    this.key,
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [key, element];
}

abstract class Key<T> extends Rule {
  final T value;

  const Key(
    this.value, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [value];
}

/// Represents a named field of [StructType] in a composite value.
class FieldKey extends Key<SimpleIdentifier> {
  const FieldKey(
    SimpleIdentifier value, {
    ParserRuleContext context,
  }) : super(value, context: context);
}

/// Represents a named field of [ArrayType] in a composite value.
class IndexedKey extends Key<Expression> {
  const IndexedKey(
    Expression value, {
    ParserRuleContext context,
  }) : super(value, context: context);
}

class Element<T> extends Rule {
  final T value;

  const Element(
    this.value, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [value];
}
