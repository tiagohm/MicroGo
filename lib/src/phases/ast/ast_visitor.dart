import 'dart:convert';

import 'package:antlr4/antlr4.dart';
import 'package:microgo/src/grammar/MicroGoBaseVisitor.dart';
import 'package:microgo/src/grammar/MicroGoParser.dart';

import 'declaration.dart';
import 'expression.dart';
import 'function.dart';
import 'identifier.dart';
import 'import.dart';
import 'literal.dart';
import 'operator.dart';
import 'package.dart';
import 'source_file.dart';
import 'statement.dart';
import 'type.dart';

class AstVisitor extends MicroGoBaseVisitor {
  final context = <dynamic, ParserRuleContext>{};

  @override
  dynamic visit(ParseTree tree) {
    return tree == null ? null : super.visit(tree);
  }

  List<T> visitList<T>(List<ParseTree> trees) {
    return trees == null || trees.isEmpty
        ? const []
        : [for (final i in trees) visit(i) as T];
  }

  List<T> visitSpreadList<T>(List<ParseTree> trees) {
    return trees == null || trees.isEmpty
        ? const []
        : [for (final i in trees) ...(visit(i) as List<T>)];
  }

  // Source

  @override
  SourceFile visitSourceFile(SourceFileContext ctx) {
    final package = visit(ctx.packageClause());
    final imports = visit(ctx.importDeclList());
    return SourceFile(package, imports: imports, context: ctx);
  }

  @override
  List<Import> visitImportDeclList(ImportDeclListContext ctx) {
    return visitSpreadList(ctx.importDecls());
  }

  // Package clause

  @override
  Package visitPackageClause(PackageClauseContext ctx) {
    return Package(
      visit(ctx.packageName()),
      parameters: visit(ctx.parameters()) ?? const [],
      arguments: visit(ctx.packageArgument()),
      body: visit(ctx.packageBody()),
      context: ctx,
    );
  }

  @override
  Identifier visitPackageName(PackageNameContext ctx) {
    return SimpleIdentifier(ctx.IDENTIFIER().text, context: ctx);
  }

  @override
  List<PackageArgument> visitPackageArgument(PackageArgumentContext ctx) {
    return visit(ctx.packageArgumentDeclList());
  }

  @override
  List<PackageArgument> visitPackageArgumentDeclList(
      PackageArgumentDeclListContext ctx) {
    return visitList(ctx.packageArgumentDecls());
  }

  @override
  PackageArgument visitPackageArgumentDecl(PackageArgumentDeclContext ctx) {
    return PackageArgument(
      visit(ctx.packageAlias()),
      visit(ctx.packageName()),
      visit(ctx.arguments()),
      context: ctx,
    );
  }

  @override
  Identifier visitPackageAlias(PackageAliasContext ctx) {
    return SimpleIdentifier(ctx.IDENTIFIER().text, context: ctx);
  }

  @override
  List<Declaration> visitPackageBody(PackageBodyContext ctx) {
    return visit(ctx.packageLevelDeclList());
  }

  // Import declarations

  @override
  List<Import> visitImportDecl(ImportDeclContext ctx) {
    if (ctx.importSpec() != null) {
      return [visit(ctx.importSpec())];
    } else {
      return visit(ctx.importSpecList());
    }
  }

  @override
  List<Import> visitImportSpecList(ImportSpecListContext ctx) {
    return visitList(ctx.importSpecs());
  }

  @override
  Import visitImportSpec(ImportSpecContext ctx) {
    return Import(visit(ctx.importPath()), context: ctx);
  }

  @override
  String visitImportPath(ImportPathContext ctx) {
    return visit(ctx.stringLit());
  }

  // Declarations and scope

  @override
  List<Declaration> visitPackageLevelDeclList(PackageLevelDeclListContext ctx) {
    return visitList(ctx.packageLevelDecls());
  }

  @override
  Declaration visitPackageLevelDecl(PackageLevelDeclContext ctx) {
    return super.visitPackageLevelDecl(ctx);
  }

  @override
  Declaration visitDeclaration(DeclarationContext ctx) {
    return super.visitDeclaration(ctx);
  }

  // Constant declarations

  @override
  List<Declaration> visitConstDecl(ConstDeclContext ctx) {
    if (ctx.constSpec() != null) {
      return [visit(ctx.constSpec())];
    } else {
      return visit(ctx.constSpecList());
    }
  }

  @override
  List<Declaration> visitConstSpecList(ConstSpecListContext ctx) {
    return visitList(ctx.constSpecs());
  }

  @override
  Declaration visitConstSpec(ConstSpecContext ctx) {
    return ConstDeclaration(
      visit(ctx.identifierList()),
      visit(ctx.expressionList()),
      type: visit(ctx.type()),
      context: ctx,
    );
  }

  @override
  List<Identifier> visitIdentifierList(IdentifierListContext ctx) {
    return visitList(ctx.identifiers());
  }

  @override
  Identifier visitIdentifier(IdentifierContext ctx) {
    return SimpleIdentifier(ctx.IDENTIFIER().text, context: ctx);
  }

  @override
  List<Expression> visitExpressionList(ExpressionListContext ctx) {
    return visitList(ctx.expressions());
  }

  // Type declarations

  @override
  List<TypeDeclaration> visitTypeDecl(TypeDeclContext ctx) {
    return visitList(ctx.typeSpecs());
  }

  @override
  TypeDeclaration visitTypeSpec(TypeSpecContext ctx) {
    return TypeDeclaration(
      visit(ctx.identifier()),
      visit(ctx.type()),
      context: ctx,
    );
  }

  // Variable declarations

  @override
  List<VarDeclaration> visitVarDecl(VarDeclContext ctx) {
    if (ctx.varSpec() != null) {
      return [visit(ctx.varSpec())];
    } else {
      return visit(ctx.varSpecList());
    }
  }

  @override
  List<VarDeclaration> visitVarSpecList(VarSpecListContext ctx) {
    return visitList(ctx.varSpecs());
  }

  @override
  VarDeclaration visitVarSpec(VarSpecContext ctx) {
    return VarDeclaration(
      visit(ctx.identifierList()),
      visit(ctx.expressionList()) ?? const [],
      type: visit(ctx.type()),
      context: ctx,
    );
  }

  // Types

  @override
  DataType visitType(TypeContext ctx) {
    return visit(ctx.type()) ?? super.visitType(ctx);
  }

  @override
  DataType visitTypeName(TypeNameContext ctx) {
    return NamedType.from(
      visit(ctx.identifier()) ?? visit(ctx.qualifiedIdent()),
      context: ctx,
    );
  }

  @override
  DataType visitTypeLit(TypeLitContext ctx) {
    return super.visitTypeLit(ctx);
  }

  // Array types

  @override
  DataType visitArrayType(ArrayTypeContext ctx) {
    return ArrayType(
      visit(ctx.arrayLength()),
      visit(ctx.type()),
      context: ctx,
    );
  }

  @override
  Expression visitArrayLength(ArrayLengthContext ctx) {
    return super.visitArrayLength(ctx);
  }

  // Struct types

  @override
  StructType visitStructType(StructTypeContext ctx) {
    return StructType(visit(ctx.fieldDeclList()), context: ctx);
  }

  @override
  List<StructField> visitFieldDeclList(FieldDeclListContext ctx) {
    return visitSpreadList(ctx.fieldDecls());
  }

  @override
  List<StructField> visitFieldDecl(FieldDeclContext ctx) {
    if (ctx.embeddedField() != null) {
      return [visit(ctx.embeddedField())];
    } else {
      final type = visit(ctx.type());
      return [
        for (final i in visit(ctx.identifierList()))
          NamedField(i, type, context: ctx),
      ];
    }
  }

  @override
  StructField visitEmbeddedField(EmbeddedFieldContext ctx) {
    return EmbeddedField(
      visit(ctx.typeName()),
      pointer: ctx.STAR() != null,
      context: ctx,
    );
  }

  // Pointer types

  @override
  DataType visitPointerType(PointerTypeContext ctx) {
    return PointerType(visit(ctx.type()), context: ctx);
  }

  // Function types

  @override
  FunctionType visitFunctionType(FunctionTypeContext ctx) {
    return FunctionType(visit(ctx.signature()), context: ctx);
  }

  @override
  Signature visitSignature(SignatureContext ctx) {
    return Signature(
      visit(ctx.parameters()),
      result: visit(ctx.result()),
      context: ctx,
    );
  }

  @override
  DataType visitResult(ResultContext ctx) {
    if (ctx.parameters() != null) {
      return Tuple(visit(ctx.parameters()), context: ctx);
    } else {
      return visit(ctx.type());
    }
  }

  @override
  List<Parameter> visitParameters(ParametersContext ctx) {
    return visit(ctx.parameterList()) ?? const [];
  }

  @override
  List<Parameter> visitParameterList(ParameterListContext ctx) {
    return visitSpreadList(ctx.parameterDecls());
  }

  @override
  List<Parameter> visitParameterDecl(ParameterDeclContext ctx) {
    final identifiers = visit(ctx.identifierList());
    final type = visit(ctx.type());
    final ellipsis = ctx.ELLIPSIS() != null;

    if (identifiers != null) {
      return [
        for (final i in identifiers) Parameter(i, type, ellipsis: ellipsis)
      ];
    } else {
      return [Parameter(null, type, ellipsis: ellipsis)];
    }
  }

  // Interface types

  @override
  InterfaceType visitInterfaceType(InterfaceTypeContext ctx) {
    return InterfaceType(visit(ctx.interfaceTypeSpecList()), context: ctx);
  }

  @override
  List<InterfaceField> visitInterfaceTypeSpecList(
    InterfaceTypeSpecListContext ctx,
  ) {
    return visitList(ctx.interfaceTypeSpecs());
  }

  @override
  InterfaceField visitInterfaceTypeSpec(InterfaceTypeSpecContext ctx) {
    return super.visitInterfaceTypeSpec(ctx);
  }

  @override
  InterfaceField visitMethodSpec(MethodSpecContext ctx) {
    return MethodField(
      visit(ctx.methodName()),
      visit(ctx.signature()),
      context: ctx,
    );
  }

  @override
  Identifier visitMethodName(MethodNameContext ctx) {
    return SimpleIdentifier(ctx.IDENTIFIER().text, context: ctx);
  }

  // Blocks

  @override
  Statement visitBlock(BlockContext ctx) {
    return Block(visit(ctx.statementList()));
  }

  @override
  List<Statement> visitStatementList(StatementListContext ctx) {
    return visitList(ctx.statements());
  }

  // Short variable declarations

  @override
  Statement visitShortVarDecl(ShortVarDeclContext ctx) {
    return ShortVarAssignment(
      visit(ctx.identifierList()),
      visit(ctx.expressionList()),
      context: ctx,
    );
  }

  // Function declarations

  @override
  Declaration visitFunctionDecl(FunctionDeclContext ctx) {
    return FunctionDeclaration(
      visit(ctx.functionName()),
      visit(ctx.signature()),
      body: visit(ctx.functionBody()),
      context: ctx,
    );
  }

  @override
  Identifier visitFunctionName(FunctionNameContext ctx) {
    return SimpleIdentifier(ctx.IDENTIFIER().text);
  }

  @override
  Statement visitFunctionBody(FunctionBodyContext ctx) {
    return super.visitFunctionBody(ctx);
  }

  // Method declarations

  @override
  Declaration visitMethodDecl(MethodDeclContext ctx) {
    return MethodDeclaration(
      visit(ctx.receiver()),
      visit(ctx.methodName()),
      visit(ctx.signature()),
      body: visit(ctx.functionBody()),
      context: ctx,
    );
  }

  @override
  List<Parameter> visitReceiver(ReceiverContext ctx) {
    return super.visitReceiver(ctx);
  }

  // Expressions

  // Operands

  @override
  Expression visitOperand(OperandContext ctx) {
    return visit(ctx.literal()) ??
        visit(ctx.operandName()) ??
        visit(ctx.expression());
  }

  @override
  Literal visitLiteral(LiteralContext ctx) {
    return super.visitLiteral(ctx);
  }

  @override
  Literal visitBasicLit(BasicLitContext ctx) {
    return super.visitBasicLit(ctx);
  }

  @override
  Literal visitNilLit(NilLitContext ctx) {
    return NilLiteral(context: ctx);
  }

  @override
  Literal visitBooleanLit(BooleanLitContext ctx) {
    return BooleanLiteral(ctx.TRUE() != null);
  }

  @override
  Literal visitIntegerLit(IntegerLitContext ctx) {
    return super.visitIntegerLit(ctx);
  }

  @override
  Literal visitDecimalLit(DecimalLitContext ctx) {
    return IntegerLiteral(
      int.parse(ctx.text.replaceAll('_', '')),
      context: ctx,
    );
  }

  @override
  Literal visitOctalLit(OctalLitContext ctx) {
    final text = ctx.text;
    final index = text[1] == 'O' || text[1] == 'o' ? 2 : 1;
    return IntegerLiteral(
      int.parse(text.substring(index).replaceAll('_', ''), radix: 8),
      context: ctx,
    );
  }

  @override
  Literal visitHexLit(HexLitContext ctx) {
    return IntegerLiteral(
      int.parse(ctx.text.substring(2).replaceAll('_', ''), radix: 16),
      context: ctx,
    );
  }

  @override
  Literal visitBinaryLit(BinaryLitContext ctx) {
    return IntegerLiteral(
      int.parse(ctx.text.substring(2).replaceAll('_', ''), radix: 2),
      context: ctx,
    );
  }

  @override
  Literal visitFloatLit(FloatLitContext ctx) {
    return super.visitFloatLit(ctx);
  }

  @override
  Literal visitDecimalFloatLit(DecimalFloatLitContext ctx) {
    return FloatLiteral(
      double.parse(ctx.text.replaceAll('_', '')),
      context: ctx,
    );
  }

  @override
  Literal visitHexFloatLit(HexFloatLitContext ctx) {
    // TODO: implement visitHexFloatLit
    return super.visitHexFloatLit(ctx);
  }

  @override
  Literal visitRuneLit(RuneLitContext ctx) {
    final value = ctx.RUNE_LIT().text;
    return RuneLiteral(
      value.substring(1, value.length - 1),
      context: ctx,
    );
  }

  @override
  Literal visitStringLit(StringLitContext ctx) {
    return super.visitStringLit(ctx);
  }

  @override
  Literal visitRawStringLit(RawStringLitContext ctx) {
    final value = ctx.RAW_STRING_LIT().text;
    print(ctx.RAW_STRING_LIT().text.codeUnits);
    return StringLiteral(
      value.substring(1, value.length - 1),
      raw: true,
      context: ctx,
    );
  }

  @override
  Literal visitInterpretedStringLit(InterpretedStringLitContext ctx) {
    final value = ctx.INTERPRETED_STRING_LIT().text;
    return StringLiteral(
      _interpretString(value.substring(1, value.length - 1)),
      raw: false,
      context: ctx,
    );
  }

  static const _escapedChars = 'abfnrtv\\\'"';
  static const _escapedCharCodes = [
    0x07, 0x08, 0x0C, 0x0A, 0x0D, //
    0x09, 0x0B, 0x5C, 0x27, 0x22
  ];

  static String _interpretString(String raw) {
    final sb = StringBuffer();
    var escape = false;

    for (var i = 0; i < raw.length; i++) {
      final c = raw[i];

      if (c == '\\' && !escape) {
        escape = true;
      } else if (!escape) {
        sb.write(c);
      } else {
        // Escaped char.
        final index = _escapedChars.indexOf(c);

        if (index >= 0) {
          final code = _escapedCharCodes[index];
          sb.writeCharCode(code);
          escape = false;
          continue;
        }

        // Octal byte. (3 bytes)
        if (i + 2 < raw.length &&
            _isOctal(c) &&
            _isOctal(raw[i + 1]) &&
            _isOctal(raw[i + 2])) {
          final code = int.parse(raw.substring(i, i + 3), radix: 8);
          sb.writeCharCode(code);
          escape = false;
          i += 2;
          continue;
        }

        // Hex byte. (2 bytes)
        if (c == 'x' && i + 2 < raw.length) {
          final code = int.parse(raw.substring(i + 1, i + 3), radix: 16);
          sb.writeCharCode(code);
          escape = false;
          i += 2;
          continue;
        }

        // Little U byte. (4 bytes)
        if (c == 'u' && i + 4 < raw.length) {
          final code = int.parse(raw.substring(i + 1, i + 5), radix: 16);
          sb.writeCharCode(code);
          escape = false;
          i += 4;
          continue;
        }

        // Big U byte. (8 bytes)
        if (c == 'U' && i + 8 < raw.length) {
          final code = int.parse(raw.substring(i + 1, i + 9), radix: 16);
          sb.writeCharCode(code);
          escape = false;
          i += 8;
          continue;
        }

        throw Exception('Invalid escape char: $c');
      }
    }

    return '$sb';
  }

  static bool _isOctal(String c) {
    final code = c.codeUnits[0];
    return code >= 48 && code <= 57;
  }

  @override
  Expression visitOperandName(OperandNameContext ctx) {
    return NamedOperandExpression(visitChildren(ctx), context: ctx);
  }

  // Qualified identifiers

  @override
  Identifier visitQualifiedIdent(QualifiedIdentContext ctx) {
    return QualifiedIdentifier(
      visit(ctx.packageName()),
      ctx.IDENTIFIER().text,
      context: ctx,
    );
  }

  // Composite literals

  @override
  CompositeLiteral visitCompositeLit(CompositeLitContext ctx) {
    return CompositeLiteral(
      visit(ctx.literalType()),
      visit(ctx.literalValue()),
      context: ctx,
    );
  }

  @override
  DataType visitLiteralType(LiteralTypeContext ctx) {
    return super.visitLiteralType(ctx);
  }

  @override
  DataType visitEllipsisArrayType(EllipsisArrayTypeContext ctx) {
    return EllipsisArrayType(visit(ctx.type()), context: ctx);
  }

  @override
  CompositeValue visitLiteralValue(LiteralValueContext ctx) {
    return CompositeValue(visit(ctx.elementList()), context: ctx);
  }

  @override
  List<KeyedElement> visitElementList(ElementListContext ctx) {
    return visitList(ctx.keyedElements());
  }

  @override
  KeyedElement visitKeyedElement(KeyedElementContext ctx) {
    return KeyedElement(
      visit(ctx.element()),
      key: visit(ctx.key()),
      context: ctx,
    );
  }

  @override
  Key visitKey(KeyContext ctx) {
    if (ctx.fieldName() != null) {
      return FieldKey(visit(ctx.fieldName()), context: ctx);
    } else {
      return IndexedKey(visit(ctx.fieldIndex()), context: ctx);
    }
  }

  @override
  Identifier visitFieldName(FieldNameContext ctx) {
    return SimpleIdentifier(ctx.IDENTIFIER().text, context: ctx);
  }

  @override
  Expression visitFieldIndex(FieldIndexContext ctx) {
    return super.visitFieldIndex(ctx);
  }

  @override
  Element visitElement(ElementContext ctx) {
    if (ctx.expression() != null) {
      return Element<Expression>(visit(ctx.expression()), context: ctx);
    } else {
      return Element<CompositeValue>(visit(ctx.literalValue()), context: ctx);
    }
  }

  // Function literals

  @override
  Literal visitFunctionLit(FunctionLitContext ctx) {
    return FunctionLiteral(
      visit(ctx.signature()),
      visit(ctx.functionBody()),
      context: ctx,
    );
  }

  // Primary expressions

  @override
  Expression visitOperandExprAlt(OperandExprAltContext ctx) {
    return super.visitOperandExprAlt(ctx);
  }

  @override
  Expression visitConversionExprAlt(ConversionExprAltContext ctx) {
    return super.visitConversionExprAlt(ctx);
  }

  @override
  Expression visitMethodExprAlt(MethodExprAltContext ctx) {
    return super.visitMethodExprAlt(ctx);
  }

  @override
  Expression visitSelectorExprAlt(SelectorExprAltContext ctx) {
    return SelectorExpression(
      visit(ctx.primaryExpr()),
      visit(ctx.selector()),
      context: ctx,
    );
  }

  @override
  Expression visitIndexExprAlt(IndexExprAltContext ctx) {
    return IndexExpression(
      visit(ctx.primaryExpr()),
      visit(ctx.index()),
      context: ctx,
    );
  }

  @override
  Expression visitIndex(IndexContext ctx) {
    return visit(ctx.expression());
  }

  @override
  Expression visitSliceExprAlt(SliceExprAltContext ctx) {
    final s = visit(ctx.slice());
    return SliceExpression(
      visit(ctx.primaryExpr()),
      left: s[0],
      right: s[1],
      context: ctx,
    );
  }

  @override
  List<Expression> visitSlice(SliceContext ctx) {
    return [visit(ctx.expression(0)), visit(ctx.expression(1))];
  }

  @override
  Expression visitCallExprAlt(CallExprAltContext ctx) {
    return CallExpression(
      visit(ctx.primaryExpr()),
      arguments: visit(ctx.arguments()),
      context: ctx,
    );
  }

  @override
  List<Expression> visitArguments(ArgumentsContext ctx) {
    return visit(ctx.expressionList()) ?? const [];
  }

  @override
  Identifier visitSelector(SelectorContext ctx) {
    return SimpleIdentifier(ctx.IDENTIFIER().text, context: ctx);
  }

  // Method expressions

  @override
  Expression visitMethodExpr(MethodExprContext ctx) {
    return MethodExpression(
      visit(ctx.type()),
      visit(ctx.methodName()),
      context: ctx,
    );
  }

  // Operators

  @override
  Expression visitUnaryExprAlt(UnaryExprAltContext ctx) {
    return super.visitUnaryExprAlt(ctx);
  }

  @override
  Expression visitMultExprAlt(MultExprAltContext ctx) {
    return MultExpression(
      visit(ctx.multOp()),
      visit(ctx.expression(0)),
      visit(ctx.expression(1)),
      context: ctx,
    );
  }

  @override
  Expression visitAddExprAlt(AddExprAltContext ctx) {
    return AddExpression(
      visit(ctx.addOp()),
      visit(ctx.expression(0)),
      visit(ctx.expression(1)),
      context: ctx,
    );
  }

  @override
  Expression visitRelExprAlt(RelExprAltContext ctx) {
    return RelationalExpression(
      visit(ctx.relOp()),
      visit(ctx.expression(0)),
      visit(ctx.expression(1)),
      context: ctx,
    );
  }

  @override
  Expression visitAndExprAlt(AndExprAltContext ctx) {
    return LogicalExpression(
      LogicalOperator('&&', context: ctx),
      visit(ctx.expression(0)),
      visit(ctx.expression(1)),
      context: ctx,
    );
  }

  @override
  Expression visitOrExprAlt(OrExprAltContext ctx) {
    return LogicalExpression(
      LogicalOperator('||', context: ctx),
      visit(ctx.expression(0)),
      visit(ctx.expression(1)),
      context: ctx,
    );
  }

  @override
  Expression visitUnaryExpr(UnaryExprContext ctx) {
    return visit(ctx.primaryExpr()) ??
        UnaryExpression(
          visit(ctx.unarypOp()),
          visit(ctx.unaryExpr()),
          context: ctx,
        );
  }

  @override
  Operator visitUnarypOp(UnarypOpContext ctx) {
    return UnaryOperator(ctx.text, context: ctx);
  }

  @override
  Operator visitMultOp(MultOpContext ctx) {
    return MultOperator(ctx.text, context: ctx);
  }

  @override
  Operator visitAddOp(AddOpContext ctx) {
    return AddOperator(ctx.text, context: ctx);
  }

  @override
  Operator visitRelOp(RelOpContext ctx) {
    return RelationalOperator(ctx.text, context: ctx);
  }

  // Conversions

  @override
  Expression visitConversion(ConversionContext ctx) {
    return ConversionExpression(
      visit(ctx.type()),
      visit(ctx.expression()),
      context: ctx,
    );
  }

  // Statements

  @override
  Statement visitStatement(StatementContext ctx) {
    return super.visitStatement(ctx);
  }

  @override
  Statement visitSimpleStmt(SimpleStmtContext ctx) {
    return super.visitSimpleStmt(ctx);
  }

  // Empty statements

  @override
  Statement visitEmptyStmt(EmptyStmtContext ctx) {
    return EmptyStatement(context: ctx);
  }

  // Labeled statements

  @override
  Statement visitLabeledStmt(LabeledStmtContext ctx) {
    return LabeledStatement(
      visit(ctx.label()),
      visit(ctx.statement()),
      context: ctx,
    );
  }

  @override
  Identifier visitLabel(LabelContext ctx) {
    return SimpleIdentifier(ctx.IDENTIFIER().text, context: ctx);
  }

  // Expression statements

  @override
  Statement visitExpressionStmt(ExpressionStmtContext ctx) {
    return super.visitExpressionStmt(ctx);
  }

  // IncDec statements

  @override
  Statement visitIncDecStmt(IncDecStmtContext ctx) {
    if (ctx.PLUS_PLUS() != null) {
      return IncrementStatement(visit(ctx.expression()), context: ctx);
    } else {
      return DecrementStatement(visit(ctx.expression()), context: ctx);
    }
  }

  // Assignments

  @override
  Statement visitAssignment(AssignmentContext ctx) {
    return Assignment(
      visit(ctx.expressionList(0)),
      visit(ctx.assignOp()),
      visit(ctx.expressionList(1)),
      context: ctx,
    );
  }

  @override
  Operator visitAssignOp(AssignOpContext ctx) {
    return super.visitAssignOp(ctx);
  }

  @override
  Operator visitMultAssignOp(MultAssignOpContext ctx) {
    final text = ctx.text;
    return MultOperator(text.substring(0, text.length - 1), context: ctx);
  }

  @override
  Operator visitAddAssignOp(AddAssignOpContext ctx) {
    final text = ctx.text;
    return AddOperator(text.substring(0, text.length - 1), context: ctx);
  }

  @override
  Operator visitEqualAssignOp(EqualAssignOpContext ctx) {
    return null;
  }

  // If statements

  @override
  Statement visitIfStmt(IfStmtContext ctx) {
    return IfStatement(
      visit(ctx.expression()),
      visit(ctx.block(0)),
      statement: visit(ctx.simpleStmt()),
      else$: visit(ctx.ifStmt()) ?? visit(ctx.block(1)),
    );
  }

  // Switch statements

  @override
  Statement visitSwitchStmt(SwitchStmtContext ctx) {
    return SwitchStatement(
      statement: visit(ctx.simpleStmt()),
      condition: visit(ctx.expression()),
      cases: visitList(ctx.switchCaseClauses()),
      context: ctx,
    );
  }

  @override
  SwitchCase visitSwitchCaseClause(SwitchCaseClauseContext ctx) {
    return SwitchCase(
      visit(ctx.switchCase()),
      visit(ctx.statementList()),
      context: ctx,
    );
  }

  @override
  List<Expression> visitSwitchCase(SwitchCaseContext ctx) {
    if (ctx.DEFAULT() != null) {
      return null;
    } else {
      return visit(ctx.expressionList());
    }
  }

  // For statements

  @override
  Statement visitForStmt(ForStmtContext ctx) {
    final block = visit(ctx.block()) ?? const [];

    if (ctx.condition() == null &&
        ctx.forClause() == null &&
        ctx.rangeClause() == null) {
      return ForeverStatement(block, context: ctx);
    } else if (ctx.condition() != null) {
      return WhileStatement(visit(ctx.condition()), block, context: ctx);
    } else if (ctx.forClause() != null) {
      final res = visit(ctx.forClause()) as List;

      if (res[0] == null && res[1] == null && res[2] == null) {
        return ForeverStatement(block, context: ctx);
      } else {
        return ForStatement(
          block,
          init: res[0],
          condition: res[1],
          post: res[2],
          context: ctx,
        );
      }
    } else {
      final res = visit(ctx.rangeClause());
      return ForRangeStatement(res[0], res[1], block, context: ctx);
    }
  }

  @override
  Expression visitCondition(ConditionContext ctx) {
    return super.visitCondition(ctx);
  }

  @override
  List visitForClause(ForClauseContext ctx) {
    return [
      visit(ctx.initStmt()),
      visit(ctx.condition()),
      visit(ctx.postStmt()),
    ];
  }

  @override
  Statement visitInitStmt(InitStmtContext ctx) {
    return super.visitInitStmt(ctx);
  }

  @override
  Statement visitPostStmt(PostStmtContext ctx) {
    return super.visitPostStmt(ctx);
  }

  @override
  List visitRangeClause(RangeClauseContext ctx) {
    return [
      visit(ctx.identifierList()),
      visit(ctx.expression()),
    ];
  }

  // Return statements

  @override
  Statement visitReturnStmt(ReturnStmtContext ctx) {
    return ReturnStatement(
      expressions: visit(ctx.expressionList()),
      context: ctx,
    );
  }

  // Break statements

  @override
  Statement visitBreakStmt(BreakStmtContext ctx) {
    return BreakStatement(label: visit(ctx.label()), context: ctx);
  }

  // Continue statements

  @override
  Statement visitContinueStmt(ContinueStmtContext ctx) {
    return ContinueStatement(label: visit(ctx.label()), context: ctx);
  }

  // Goto statements

  @override
  Statement visitGotoStmt(GotoStmtContext ctx) {
    return GotoStatement(visit(ctx.label()), context: ctx);
  }

  // Fallthrough statements

  @override
  Statement visitFallthroughStmt(FallthroughStmtContext ctx) {
    return FallthroughStatement(context: ctx);
  }
}
