import 'package:antlr4/antlr4.dart';
import 'package:microgo/src/phases/phase1/declaration.dart';

import 'function.dart';
import 'identifier.dart';
import 'rule.dart';

class Package extends Rule {
  final SimpleIdentifier name;
  final List<Parameter> parameters;
  final List<PackageArgument> arguments;
  final List<Declaration> body;

  bool get isStatic => parameters == null || parameters.isEmpty;

  const Package(
    this.name, {
    this.parameters = const [],
    this.arguments = const [],
    this.body = const [],
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [name, parameters, arguments, body];
}

class PackageArgument extends Rule {
  final SimpleIdentifier alias;
  final SimpleIdentifier name;
  final List<Argument> arguments;

  const PackageArgument(
    this.alias,
    this.name,
    this.arguments, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [alias, name, arguments];
}
