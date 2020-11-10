import 'package:antlr4/antlr4.dart';

import 'rule.dart';

class Import extends Rule {
  final String path;

  const Import(
    this.path, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [path];
}
