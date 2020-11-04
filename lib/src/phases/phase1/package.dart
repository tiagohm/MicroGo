import 'package:antlr4/antlr4.dart';

import 'rule.dart';

class Package extends Rule {
  final String name;

  const Package(
    this.name, {
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [name];
}
