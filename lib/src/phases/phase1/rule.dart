import 'package:antlr4/antlr4.dart';
import 'package:equatable/equatable.dart';

abstract class Rule extends Equatable {
  final ParserRuleContext context;

  const Rule(this.context);

  @override
  List<Object> get props => const [];

  @override
  bool get stringify => true;
}
