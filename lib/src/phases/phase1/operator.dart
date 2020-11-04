import 'package:antlr4/antlr4.dart';

import 'rule.dart';

abstract class Operator extends Rule {
  final String value;

  const Operator(
    this.value,
    ParserRuleContext context,
  ) : super(context);

  @override
  List<Object> get props => [value];
}

class UnaryOperator extends Operator {
  const UnaryOperator(
    String value, {
    ParserRuleContext context,
  }) : super(value, context);
}

class MultOperator extends Operator {
  const MultOperator(
    String value, {
    ParserRuleContext context,
  }) : super(value, context);
}

class AddOperator extends Operator {
  const AddOperator(
    String value, {
    ParserRuleContext context,
  }) : super(value, context);
}

class LogicalOperator extends Operator {
  const LogicalOperator(
    String value, {
    ParserRuleContext context,
  }) : super(value, context);
}

class RelationalOperator extends Operator {
  const RelationalOperator(
    String value, {
    ParserRuleContext context,
  }) : super(value, context);
}

class AssignmentOperator extends Operator {
  const AssignmentOperator({
    ParserRuleContext context,
  }) : super('=', context);
}

class ShortAssignmentOperator extends Operator {
  const ShortAssignmentOperator({
    ParserRuleContext context,
  }) : super(':=', context);
}
