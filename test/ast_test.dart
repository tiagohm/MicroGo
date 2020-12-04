import 'dart:math';

import 'package:microgo/src/phases/ast/expression.dart';
import 'package:microgo/src/phases/ast/function.dart';
import 'package:microgo/src/phases/ast/identifier.dart';
import 'package:microgo/src/phases/ast/literal.dart';
import 'package:microgo/src/phases/ast/operator.dart';
import 'package:microgo/src/phases/ast/ast_visitor.dart';
import 'package:microgo/src/phases/ast/statement.dart';
import 'package:microgo/src/phases/ast/type.dart';
import 'package:test/test.dart';

import 'helper.dart';

void main() {
  final visitor = AstVisitor();

  test('SourceFile', () async {
    // TODO:
  });

  test('ImportDeclList', () async {
    // TODO:
  });

  test('PackageClause', () async {
    // TODO:
  });

  test('PackageName', () async {
    // TODO:
  });

  test('PackageArgument', () async {
    // TODO:
  });

  test('PackageArgumentDeclList', () async {
    // TODO:
  });

  test('PackageArgumentDecl', () async {
    // TODO:
  });

  test('PackageAlias', () async {
    // TODO:
  });

  test('PackageBody', () async {
    // TODO:
  });

  test('ImportDecl', () async {
    // TODO:
  });

  test('ImportSpecList', () async {
    // TODO:
  });

  test('ImportSpec', () async {
    // TODO:
  });

  test('ImportPath', () async {
    // TODO:
  });

  test('PackageLevelDeclList', () async {
    // TODO:
  });

  test('PackageLevelDecl', () async {
    // TODO:
  });

  test('Declaration', () async {
    // TODO:
  });

  test('ConstDecl', () async {
    // TODO:
  });

  test('ConstSpecList', () async {
    // TODO:
  });

  test('ConstSpec', () async {
    // TODO:
  });

  test('IdentifierList', () async {
    // TODO:
  });

  test('Identifier', () async {
    // TODO:
  });

  test('ExpressionList', () async {
    // TODO:
  });

  test('TypeDecl', () async {
    // TODO:
  });

  test('TypeSpec', () async {
    // TODO:
  });

  test('VarDecl', () async {
    // TODO:
  });

  test('VarSpecList', () async {
    // TODO:
  });

  test('VarSpec', () async {
    // TODO:
  });

  test('Type', () async {
    // TODO:
  });

  test('TypeName', () async {
    // TODO:
  });

  test('TypeLit', () async {
    // TODO:
  });

  test('ArrayType', () async {
    // TODO:
  });

  test('ArrayLength', () async {
    // TODO:
  });

  test('SliceType', () async {
    // TODO:
  });

  test('StructType', () async {
    // TODO:
  });

  test('FieldDeclList', () async {
    // TODO:
  });

  test('FieldDecl', () async {
    // TODO:
  });

  test('EmbeddedField', () async {
    // TODO:
  });

  test('PointerType', () async {
    // TODO:
  });

  test('FunctionType', () async {
    // TODO:
  });

  test('Signature', () async {
    // TODO:
  });

  test('Result', () async {
    // TODO:
  });

  test('Parameters', () async {
    // TODO:
  });

  test('ParameterList', () async {
    // TODO:
  });

  test('ParameterDecl', () async {
    // TODO:
  });

  test('InterfaceType', () async {
    // TODO:
  });

  test('InterfaceTypeSpecList', () async {
    // TODO:
  });

  test('InterfaceTypeSpec', () async {
    // TODO:
  });

  test('MethodSpec', () async {
    // TODO:
  });

  test('MethodName', () async {
    // TODO:
  });

  test('Block', () async {
    // TODO:
  });

  test('StatementList', () async {
    // TODO:
  });

  test('ShortVarDecl', () async {
    // TODO:
  });

  test('FunctionDecl', () async {
    // TODO:
  });

  test('FunctionName', () async {
    // TODO:
  });

  test('FunctionBody', () async {
    // TODO:
  });

  test('Method Declaration', () async {
    // TODO:
  });

  test('Nil Literal', () async {
    final p = await parserFromText('nil');
    final a = visitor.visit(p.nilLit());
    expect(a, const NilLiteral());
  });

  test('Decimal Literal', () async {
    var p = await parserFromText('0');
    var a = visitor.visit(p.decimalLit());
    expect(a, IntegerLiteral(0));

    p = await parserFromText('10');
    a = visitor.visit(p.decimalLit());
    expect(a, IntegerLiteral(10));
  });

  test('Octal Literal', () async {
    var p = await parserFromText('012');
    var a = visitor.visit(p.octalLit());
    expect(a, const IntegerLiteral(10));

    p = await parserFromText('0o12');
    a = visitor.visit(p.octalLit());
    expect(a, const IntegerLiteral(10));
  });

  test('Hex Literal', () async {
    final p = await parserFromText('0xA');
    final a = visitor.visit(p.hexLit());
    expect(a, const IntegerLiteral(10));
  });

  test('Binary Literal', () async {
    final p = await parserFromText('0b1010');
    final a = visitor.visit(p.binaryLit());
    expect(a, const IntegerLiteral(10));
  });

  test('Decimal Float Literal', () async {
    final p = await parserFromText('3.141592653589793');
    final a = visitor.visit(p.decimalFloatLit());
    expect(a, const FloatLiteral(pi));
  });

  test('Hex Float Literal', () async {
    // TODO:
  });

  test('Rune Literal', () async {
    final p = await parserFromText("'a'");
    final a = visitor.visit(p.runeLit());
    expect(a, const RuneLiteral('a'));
  });

  test('Raw String Literal', () async {
    final p = await parserFromText(r'''`Go\tJava\nPython
    \xFF`''');
    final a = visitor.visit(p.rawStringLit());
    expect(a, const StringLiteral('Go\\tJava\\nPython\n    \\xFF', raw: true));
  });

  test('Interpreted String Literal:Escape Char', () async {
    final p = await parserFromText(r'''"\"\'\a\b\f\n\r\t\v\\"''');
    final a = visitor.visit(p.interpretedStringLit()) as StringLiteral;
    expect(a.value, '\"\'\x07\b\f\n\r\t\v\\');
    expect(a.raw, isFalse);
  });

  test('Interpreted String Literal:Octal', () async {
    final p = await parserFromText(r'''"\124\151\141\147\157"''');
    final a = visitor.visit(p.interpretedStringLit()) as StringLiteral;
    expect(a.value, 'Tiago');
    expect(a.raw, isFalse);
  });

  test('Interpreted String Literal:Hex', () async {
    final p = await parserFromText(r'''"\x54\x69\x61\x67\x6f"''');
    final a = visitor.visit(p.interpretedStringLit()) as StringLiteral;
    expect(a.value, 'Tiago');
    expect(a.raw, isFalse);
  });

  test('Interpreted String Literal:Little U', () async {
    final p = await parserFromText(r'''"\u0054\u0069\u0061\u0067\u006f"''');
    final a = visitor.visit(p.interpretedStringLit()) as StringLiteral;
    expect(a.value, 'Tiago');
    expect(a.raw, isFalse);
  });

  test('Interpreted String Literal:Big U', () async {
    final p = await parserFromText(
        r'''"\U00000054\U00000069\U00000061\U00000067\U0000006f"''');
    final a = visitor.visit(p.interpretedStringLit()) as StringLiteral;
    expect(a.value, 'Tiago');
    expect(a.raw, isFalse);
  });

  test('Operand Name', () async {
    var p = await parserFromText('foo');
    var a = visitor.visit(p.operandName());
    expect(a, const NamedOperandExpression(SimpleIdentifier('foo')));

    p = await parserFromText('foo.bar');
    a = visitor.visit(p.operandName());
    expect(
        a,
        const NamedOperandExpression(
            QualifiedIdentifier(SimpleIdentifier('foo'), 'bar')));
  });

  test('Qualified Ident', () async {
    final p = await parserFromText('foo.bar');
    final a = visitor.visit(p.qualifiedIdent());
    expect(a, const QualifiedIdentifier(SimpleIdentifier('foo'), 'bar'));
  });

  test('Composite Literal', () async {
    final p = await parserFromText('T{a: 0, b: "t", c: { d: 5.7, e: true }}');
    final a = visitor.visit(p.compositeLit());
    expect(
        a,
        CompositeLiteral(
            NamedType.from(SimpleIdentifier('T')),
            const CompositeValue([
              KeyedElement(Element<Expression>(IntegerLiteral(0)),
                  key: FieldKey(SimpleIdentifier('a'))),
              KeyedElement(Element<Expression>(StringLiteral('t', raw: false)),
                  key: FieldKey(SimpleIdentifier('b'))),
              KeyedElement(
                  Element<CompositeValue>(CompositeValue([
                    KeyedElement(Element<Expression>(FloatLiteral(5.7)),
                        key: FieldKey(SimpleIdentifier('d'))),
                    KeyedElement(Element<Expression>(BooleanLiteral(true)),
                        key: FieldKey(SimpleIdentifier('e'))),
                  ])),
                  key: FieldKey(SimpleIdentifier('c'))),
            ])));
  });

  test('Ellipsis Array Type', () async {
    final p = await parserFromText('[...]uint8');
    final a = visitor.visit(p.ellipsisArrayType());
    expect(
        a,
        const EllipsisArrayType(
            IntegerType(8, true, SimpleIdentifier('uint8'))));
  });

  test('Literal Value', () async {
    final p = await parserFromText('{a: 0, b: "t", c: { d: 5.7, e: true }}');
    final a = visitor.visit(p.literalValue());
    expect(
        a,
        const CompositeValue([
          KeyedElement(Element<Expression>(IntegerLiteral(0)),
              key: FieldKey(SimpleIdentifier('a'))),
          KeyedElement(Element<Expression>(StringLiteral('t', raw: false)),
              key: FieldKey(SimpleIdentifier('b'))),
          KeyedElement(
              Element<CompositeValue>(CompositeValue([
                KeyedElement(Element<Expression>(FloatLiteral(5.7)),
                    key: FieldKey(SimpleIdentifier('d'))),
                KeyedElement(Element<Expression>(BooleanLiteral(true)),
                    key: FieldKey(SimpleIdentifier('e'))),
              ])),
              key: FieldKey(SimpleIdentifier('c'))),
        ]));
  });

  test('Element List', () async {
    final p = await parserFromText('0: 1, 1: 2, 2: 4');
    final a = visitor.visit(p.elementList());
    expect(a, const [
      KeyedElement(Element<Expression>(IntegerLiteral(1)),
          key: IndexedKey(IntegerLiteral(0))),
      KeyedElement(Element<Expression>(IntegerLiteral(2)),
          key: IndexedKey(IntegerLiteral(1))),
      KeyedElement(Element<Expression>(IntegerLiteral(4)),
          key: IndexedKey(IntegerLiteral(2)))
    ]);
  });

  test('Element:Literal', () async {
    final p = await parserFromText('1');
    final a = visitor.visit(p.element());
    expect(a, const Element<Expression>(IntegerLiteral(1)));
  });

  test('Element:Composite', () async {
    final p = await parserFromText('{a: 0}');
    final a = visitor.visit(p.element());
    expect(
        a,
        const Element<CompositeValue>(CompositeValue([
          KeyedElement(Element<Expression>(IntegerLiteral(0)),
              key: FieldKey(SimpleIdentifier('a'))),
        ])));
  });

  test('Keyed Element', () async {
    var p = await parserFromText('a: 1');
    var a = visitor.visit(p.keyedElement());
    expect(
        a,
        const KeyedElement(Element<Expression>(IntegerLiteral(1)),
            key: FieldKey(SimpleIdentifier('a'))));

    p = await parserFromText('0: 1');
    a = visitor.visit(p.keyedElement());
    expect(
        a,
        const KeyedElement(Element<Expression>(IntegerLiteral(1)),
            key: IndexedKey(IntegerLiteral(0))));
  });

  test('Key:Field', () async {
    final p = await parserFromText('a');
    final a = visitor.visit(p.key());
    expect(a, const FieldKey(SimpleIdentifier('a')));
  });

  test('Key:Index', () async {
    final p = await parserFromText('1');
    final a = visitor.visit(p.key());
    expect(a, const IndexedKey(IntegerLiteral(1)));
  });

  test('Function Literal', () async {
    final p = await parserFromText('func (){}');
    final a = visitor.visit(p.functionLit());
    expect(a, const FunctionLiteral(Signature([]), Block([])));
  });

  test('Function Literal & Call', () async {
    final p = await parserFromText('func (){}()');
    final a = visitor.visit(p.primaryExpr());
    expect(a, const CallExpression(FunctionLiteral(Signature([]), Block([]))));
  });

  test('Index', () async {
    final p = await parserFromText('foo[1]');
    final a = visitor.visit(p.primaryExpr());
    expect(
        a,
        const IndexExpression(NamedOperandExpression(SimpleIdentifier('foo')),
            IntegerLiteral(1)));
  });

  test('Call', () async {
    final p = await parserFromText('foo()');
    final a = visitor.visit(p.primaryExpr());
    expect(a,
        const CallExpression(NamedOperandExpression(SimpleIdentifier('foo'))));
  });

  test('Arguments', () async {
    final p = await parserFromText('(a, 1 + 3, "string")');
    final a = visitor.visit(p.arguments());
    expect(a, const [
      NamedOperandExpression(SimpleIdentifier('a')),
      AddExpression(AddOperator('+'), IntegerLiteral(1), IntegerLiteral(3)),
      StringLiteral('string', raw: false),
    ]);
  });

  test('Selector', () async {
    final p = await parserFromText('foo.bar');
    final a = visitor.visit(p.primaryExpr());
    expect(
        a,
        const SelectorExpression(
            NamedOperandExpression(SimpleIdentifier('foo')),
            SimpleIdentifier('bar')));
  });

  test('Method Expression', () async {
    var p = await parserFromText('T.Mv');
    var a = visitor.visit(p.methodExpr());
    expect(
        a,
        MethodExpression(NamedType.from(SimpleIdentifier('T')),
            const SimpleIdentifier('Mv')));

    // This should be invalid, but we are parsing the rule only.
    p = await parserFromText('*T.Mp');
    a = visitor.visit(p.methodExpr());
    expect(
      a,
      MethodExpression(PointerType(NamedType.from(SimpleIdentifier('T'))),
          const SimpleIdentifier('Mp')),
    );
  });

  test('Arithmetic Expression', () async {
    final p = await parserFromText('a + b * c / (d - e)');
    final a = visitor.visit(p.expression());
    expect(
        a,
        const AddExpression(
          AddOperator('+'),
          NamedOperandExpression(SimpleIdentifier('a')),
          MultExpression(
              MultOperator('/'),
              MultExpression(
                MultOperator('*'),
                NamedOperandExpression(SimpleIdentifier('b')),
                NamedOperandExpression(SimpleIdentifier('c')),
              ),
              AddExpression(
                  AddOperator('-'),
                  NamedOperandExpression(SimpleIdentifier('d')),
                  NamedOperandExpression(SimpleIdentifier('e')))),
        ));
  });

  test('Logical Expression', () async {
    final p = await parserFromText('a || b > c && (d < e)');
    final a = visitor.visit(p.expression());
    expect(
        a,
        const LogicalExpression(
          LogicalOperator('||'),
          NamedOperandExpression(SimpleIdentifier('a')),
          LogicalExpression(
              LogicalOperator('&&'),
              RelationalExpression(
                RelationalOperator('>'),
                NamedOperandExpression(SimpleIdentifier('b')),
                NamedOperandExpression(SimpleIdentifier('c')),
              ),
              RelationalExpression(
                  RelationalOperator('<'),
                  NamedOperandExpression(SimpleIdentifier('d')),
                  NamedOperandExpression(SimpleIdentifier('e')))),
        ));
  });

  test('Mult Expression', () async {
    final p = await parserFromText('a % b');
    final a = visitor.visit(p.expression());
    expect(
        a,
        const MultExpression(
            MultOperator('%'),
            NamedOperandExpression(SimpleIdentifier('a')),
            NamedOperandExpression(SimpleIdentifier('b'))));
  });

  test('Add Expression', () async {
    final p = await parserFromText('a + b');
    final a = visitor.visit(p.expression());
    expect(
        a,
        const AddExpression(
            AddOperator('+'),
            NamedOperandExpression(SimpleIdentifier('a')),
            NamedOperandExpression(SimpleIdentifier('b'))));
  });

  test('Relational Expression', () async {
    final p = await parserFromText('a != b');
    final a = visitor.visit(p.expression());
    expect(
        a,
        const RelationalExpression(
            RelationalOperator('!='),
            NamedOperandExpression(SimpleIdentifier('a')),
            NamedOperandExpression(SimpleIdentifier('b'))));
  });

  test('And Expression', () async {
    final p = await parserFromText('a && b');
    final a = visitor.visit(p.expression());
    expect(
        a,
        const LogicalExpression(
            LogicalOperator('&&'),
            NamedOperandExpression(SimpleIdentifier('a')),
            NamedOperandExpression(SimpleIdentifier('b'))));
  });

  test('Or Expression', () async {
    final p = await parserFromText('a || b');
    final a = visitor.visit(p.expression());
    expect(
        a,
        const LogicalExpression(
            LogicalOperator('||'),
            NamedOperandExpression(SimpleIdentifier('a')),
            NamedOperandExpression(SimpleIdentifier('b'))));
  });

  test('Unary Expression', () async {
    final p = await parserFromText('^a');
    final a = visitor.visit(p.unaryExpr());
    expect(
        a,
        const UnaryExpression(
            UnaryOperator('^'), NamedOperandExpression(SimpleIdentifier('a'))));
  });

  test('Conversion', () async {
    final p = await parserFromText('uint8(a)');
    final a = visitor.visit(p.conversion());
    expect(
        a,
        const ConversionExpression(
            IntegerType(8, true, SimpleIdentifier('uint8')),
            NamedOperandExpression(SimpleIdentifier('a'))));
  });

  test('Labeled Statement', () async {
    final p = await parserFromText('a: b++');
    final a = visitor.visit(p.labeledStmt());
    expect(
        a,
        const LabeledStatement(SimpleIdentifier('a'),
            IncrementStatement(NamedOperandExpression(SimpleIdentifier('b')))));
  });

  test('Increment Statement', () async {
    final p = await parserFromText('a++');
    final a = visitor.visit(p.incDecStmt());
    expect(
        a, IncrementStatement(NamedOperandExpression(SimpleIdentifier('a'))));
  });

  test('Decrement Statement', () async {
    final p = await parserFromText('b--');
    final a = visitor.visit(p.incDecStmt());
    expect(
        a,
        const DecrementStatement(
            NamedOperandExpression(SimpleIdentifier('b'))));
  });

  test('Assignment', () async {
    final p = await parserFromText('a, b = b, a');
    final a = visitor.visit(p.assignment());
    expect(
      a,
      const Assignment(
        [
          NamedOperandExpression(SimpleIdentifier('a')),
          NamedOperandExpression(SimpleIdentifier('b'))
        ],
        null,
        [
          NamedOperandExpression(SimpleIdentifier('b')),
          NamedOperandExpression(SimpleIdentifier('a'))
        ],
      ),
    );
  });

  test('If:Empty', () async {
    final p = await parserFromText('if true {}');
    final a = visitor.visit(p.ifStmt());
    expect(a, const IfStatement(BooleanLiteral(true), Block([])));
  });

  test('If:Statement', () async {
    final p = await parserFromText('if a := 0; a >= 0 { a = -1 }');
    final a = visitor.visit(p.ifStmt());
    expect(
        a,
        const IfStatement(
          RelationalExpression(RelationalOperator('>='),
              NamedOperandExpression(SimpleIdentifier('a')), IntegerLiteral(0)),
          Block([
            Assignment([NamedOperandExpression(SimpleIdentifier('a'))], null,
                [UnaryExpression(UnaryOperator('-'), IntegerLiteral(1))]),
          ]),
          statement:
              ShortVarAssignment([SimpleIdentifier('a')], [IntegerLiteral(0)]),
        ));
  });

  test('Switch:No Condition', () async {
    final p = await parserFromText('''switch {
      case a == 1:
        return 0
      case a == 2:
        return 1
    }''');
    final a = visitor.visit(p.switchStmt());
    expect(
        a,
        const SwitchStatement(cases: [
          SwitchCase([
            RelationalExpression(
                RelationalOperator('=='),
                NamedOperandExpression(SimpleIdentifier('a')),
                IntegerLiteral(1)),
          ], [
            ReturnStatement(expressions: [IntegerLiteral(0)])
          ]),
          SwitchCase([
            RelationalExpression(
                RelationalOperator('=='),
                NamedOperandExpression(SimpleIdentifier('a')),
                IntegerLiteral(2)),
          ], [
            ReturnStatement(expressions: [IntegerLiteral(1)])
          ]),
        ]));
  });

  test('Switch:Condition', () async {
    final p = await parserFromText('''switch a {
      case 1:
        return 0
      case 2:
        return 1
    }''');
    final a = visitor.visit(p.switchStmt());
    expect(
        a,
        const SwitchStatement(
            condition: NamedOperandExpression(SimpleIdentifier('a')),
            cases: [
              SwitchCase([
                IntegerLiteral(1)
              ], [
                ReturnStatement(expressions: [IntegerLiteral(0)])
              ]),
              SwitchCase([
                IntegerLiteral(2)
              ], [
                ReturnStatement(expressions: [IntegerLiteral(1)])
              ]),
            ]));
  });

  test('Switch:Statement', () async {
    final p = await parserFromText('''switch a++; a {
      case 1:
        return 0
      case 2:
        return 1
    }''');
    final a = visitor.visit(p.switchStmt());
    expect(
        a,
        const SwitchStatement(
            statement: IncrementStatement(
                NamedOperandExpression(SimpleIdentifier('a'))),
            condition: NamedOperandExpression(SimpleIdentifier('a')),
            cases: [
              SwitchCase([
                IntegerLiteral(1)
              ], [
                ReturnStatement(expressions: [IntegerLiteral(0)])
              ]),
              SwitchCase([
                IntegerLiteral(2)
              ], [
                ReturnStatement(expressions: [IntegerLiteral(1)])
              ]),
            ]));
  });

  test('Switch Case Clause', () async {
    final p = await parserFromText('''case 1: a++; break''');
    final a = visitor.visit(p.switchCaseClause());
    expect(
        a,
        const SwitchCase([
          IntegerLiteral(1)
        ], [
          IncrementStatement(NamedOperandExpression(SimpleIdentifier('a'))),
          BreakStatement(),
        ]));
  });

  test('Switch Case:Single Expression', () async {
    final p = await parserFromText('case 1');
    final a = visitor.visit(p.switchCase());
    expect(a, [IntegerLiteral(1)]);
  });

  test('Switch Case:Expression', () async {
    final p = await parserFromText('case 1, a');
    final a = visitor.visit(p.switchCase());
    expect(a, const [
      IntegerLiteral(1),
      NamedOperandExpression(SimpleIdentifier('a'))
    ]);
  });

  test('Switch Case:Default', () async {
    final p = await parserFromText('default');
    final a = visitor.visit(p.switchCase());
    expect(a, null);
  });

  test('For:Empty Body', () async {
    final p = await parserFromText('for i := 0; i < 10; i++ {}');
    final a = visitor.visit(p.forStmt());
    expect(
        a,
        const ForStatement(
          [],
          init:
              ShortVarAssignment([SimpleIdentifier('i')], [IntegerLiteral(0)]),
          condition: RelationalExpression(
              RelationalOperator('<'),
              NamedOperandExpression(SimpleIdentifier('i')),
              IntegerLiteral(10)),
          post:
              IncrementStatement(NamedOperandExpression(SimpleIdentifier('i'))),
        ));
  });

  test('For:Single Body', () async {
    final p = await parserFromText('''for i := 0; i < 10; i++ {
      sum += i
    }''');
    final a = visitor.visit(p.forStmt());
    expect(
        a,
        const ForStatement(
          [
            Assignment(
              [NamedOperandExpression(SimpleIdentifier('sum'))],
              AddOperator('+'),
              [NamedOperandExpression(SimpleIdentifier('i'))],
            )
          ],
          init:
              ShortVarAssignment([SimpleIdentifier('i')], [IntegerLiteral(0)]),
          condition: RelationalExpression(
              RelationalOperator('<'),
              NamedOperandExpression(SimpleIdentifier('i')),
              IntegerLiteral(10)),
          post:
              IncrementStatement(NamedOperandExpression(SimpleIdentifier('i'))),
        ));
  });

  test('While', () async {
    final p = await parserFromText('''for i < 100 {
      sum += sum
    }''');
    final a = visitor.visit(p.forStmt());
    expect(
        a,
        const WhileStatement(
          RelationalExpression(
              RelationalOperator('<'),
              NamedOperandExpression(SimpleIdentifier('i')),
              IntegerLiteral(100)),
          [
            Assignment(
              [NamedOperandExpression(SimpleIdentifier('sum'))],
              AddOperator('+'),
              [NamedOperandExpression(SimpleIdentifier('sum'))],
            )
          ],
        ));
  });

  test('Forever', () async {
    final p = await parserFromText('''for {
      sum++
      break
    }''');
    final a = visitor.visit(p.forStmt());
    expect(
        a,
        const ForeverStatement(
          [
            IncrementStatement(NamedOperandExpression(SimpleIdentifier('sum'))),
            BreakStatement(),
          ],
        ));
  });

  test('For Clause:Empty', () async {
    final p = await parserFromText(';;');
    final a = visitor.visit(p.forClause());
    expect(a, const [null, null, null]);
  });

  test('For Clause:Only Init', () async {
    final p = await parserFromText('i := 0;;');
    final a = visitor.visit(p.forClause());
    expect(a, const [
      ShortVarAssignment([SimpleIdentifier('i')], [IntegerLiteral(0)]),
      null,
      null,
    ]);
  });

  test('For Clause:Only Condition', () async {
    final p = await parserFromText(';i < 10;');
    final a = visitor.visit(p.forClause());
    expect(a, const [
      null,
      RelationalExpression(RelationalOperator('<'),
          NamedOperandExpression(SimpleIdentifier('i')), IntegerLiteral(10)),
      null,
    ]);
  });

  test('For Clause:Only Post', () async {
    final p = await parserFromText(';;i++');
    final a = visitor.visit(p.forClause());
    expect(a, const [
      null,
      null,
      IncrementStatement(NamedOperandExpression(SimpleIdentifier('i'))),
    ]);
  });

  test('For Clause:Full', () async {
    final p = await parserFromText('i := 0;i < 10;i++');
    final a = visitor.visit(p.forClause());
    expect(a, const [
      ShortVarAssignment([SimpleIdentifier('i')], [IntegerLiteral(0)]),
      RelationalExpression(RelationalOperator('<'),
          NamedOperandExpression(SimpleIdentifier('i')), IntegerLiteral(10)),
      IncrementStatement(NamedOperandExpression(SimpleIdentifier('i'))),
    ]);
  });

  test('Range Clause:Empty', () async {
    final p = await parserFromText('range a');
    final a = visitor.visit(p.rangeClause());
    expect(a, const [null, NamedOperandExpression(SimpleIdentifier('a'))]);
  });

  test('Range Clause:Only Index', () async {
    final p = await parserFromText('i := range a');
    final a = visitor.visit(p.rangeClause());
    expect(a, const [
      [SimpleIdentifier('i')],
      NamedOperandExpression(SimpleIdentifier('a'))
    ]);
  });

  test('Range Clause:Skip Index', () async {
    final p = await parserFromText('_, v := range a');
    final a = visitor.visit(p.rangeClause());
    expect(a, const [
      [SimpleIdentifier('_'), SimpleIdentifier('v')],
      NamedOperandExpression(SimpleIdentifier('a'))
    ]);
  });

  test('Range Clause:Skip Value', () async {
    final p = await parserFromText('i, _ := range a');
    final a = visitor.visit(p.rangeClause());
    expect(a, const [
      [SimpleIdentifier('i'), SimpleIdentifier('_')],
      NamedOperandExpression(SimpleIdentifier('a'))
    ]);
  });

  test('Return:Empty', () async {
    final p = await parserFromText('return');
    final a = visitor.visit(p.returnStmt());
    expect(a, const ReturnStatement());
  });

  test('Return:Single Integer', () async {
    final p = await parserFromText('return 1');
    final a = visitor.visit(p.returnStmt());
    expect(a, const ReturnStatement(expressions: [IntegerLiteral(1)]));
  });

  test('Return:Tuple', () async {
    final p = await parserFromText('return 1, a');
    final a = visitor.visit(p.returnStmt());
    expect(
        a,
        const ReturnStatement(expressions: [
          IntegerLiteral(1),
          NamedOperandExpression(SimpleIdentifier('a')),
        ]));
  });

  test('Return:Math Expression', () async {
    final p = await parserFromText('return 1 + 5 * a');
    final a = visitor.visit(p.returnStmt());
    expect(
        a,
        const ReturnStatement(expressions: [
          AddExpression(
              AddOperator('+'),
              IntegerLiteral(1),
              MultExpression(MultOperator('*'), IntegerLiteral(5),
                  NamedOperandExpression(SimpleIdentifier('a')))),
        ]));
  });

  test('Break:No Label', () async {
    final p = await parserFromText('break');
    final a = visitor.visit(p.breakStmt());
    expect(a, const BreakStatement());
  });

  test('Break:Label', () async {
    final p = await parserFromText('break a');
    final a = visitor.visit(p.breakStmt());
    expect(a, const BreakStatement(label: SimpleIdentifier('a')));
  });

  test('Continue:No Label', () async {
    final p = await parserFromText('continue');
    final a = visitor.visit(p.continueStmt());
    expect(a, const ContinueStatement());
  });

  test('Continue:Label', () async {
    final p = await parserFromText('continue a');
    final a = visitor.visit(p.continueStmt());
    expect(a, const ContinueStatement(label: SimpleIdentifier('a')));
  });

  test('Goto:Label', () async {
    final p = await parserFromText('goto a');
    final a = visitor.visit(p.gotoStmt());
    expect(a, const GotoStatement(SimpleIdentifier('a')));
  });

  test('Fallthrough', () async {
    final p = await parserFromText('fallthrough');
    final a = visitor.visit(p.fallthroughStmt());
    expect(a, const FallthroughStatement());
  });
}
