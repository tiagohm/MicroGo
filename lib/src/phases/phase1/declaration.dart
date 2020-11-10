import 'package:antlr4/antlr4.dart';

import 'expression.dart';
import 'function.dart';
import 'identifier.dart';
import 'statement.dart';
import 'type.dart';

abstract class Declaration extends Statement {
  const Declaration(ParserRuleContext context) : super(context);
}

class FunctionDeclaration extends Declaration {
  final SimpleIdentifier name;
  final Signature signature;
  final Block body;

  const FunctionDeclaration(
    this.name,
    this.signature, {
    this.body,
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [name, signature, body];
}

class MethodDeclaration extends FunctionDeclaration {
  final List<Parameter> receiver;

  const MethodDeclaration(
    this.receiver,
    SimpleIdentifier name,
    Signature signature, {
    Block body,
    ParserRuleContext context,
  }) : super(name, signature, body: body, context: context);

  @override
  List<Object> get props => [receiver, name, signature, body];
}

class TypeDeclaration extends Declaration {
  final SimpleIdentifier name;
  final Type type;

  const TypeDeclaration(
    this.name,
    this.type, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [name, type];
}

class ConstDeclaration extends Declaration {
  final List<Identifier> identifiers;
  final List<Expression> expressions;
  final DataType type;

  const ConstDeclaration(
    this.identifiers,
    this.expressions, {
    this.type,
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [identifiers, expressions, type];
}

class VarDeclaration extends Declaration {
  final List<Identifier> identifiers;
  final List<Expression> expressions;
  final DataType type;

  const VarDeclaration(
    this.identifiers,
    this.expressions, {
    this.type,
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [identifiers, expressions, type];
}
