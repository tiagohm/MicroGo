import 'package:antlr4/antlr4.dart';

import 'rule.dart';

class Import extends Rule {
  final String name;
  final String path;

  const Import(
    this.path, {
    this.name,
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [path, name];
}
