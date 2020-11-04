import 'package:antlr4/antlr4.dart';

import 'import.dart';
import 'package.dart';
import 'rule.dart';

class SourceFile extends Rule {
  final Package package;
  final List<Import> imports;

  const SourceFile(
    this.package, {
    this.imports = const [],
    ParserRuleContext context,
  }) : super(context);

  @override
  List<Object> get props => [package, imports];
}
