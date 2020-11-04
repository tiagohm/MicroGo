import 'package:antlr4/antlr4.dart';
import 'package:microgo/src/grammar/MicroGoBaseVisitor.dart';
import 'package:microgo/src/grammar/MicroGoParser.dart';
import 'package:microgo/src/phases/phase1/operator.dart';
import 'package:microgo/src/phases/phase1/type.dart';

import 'expression.dart';
import 'function.dart';
import 'identifier.dart';
import 'import.dart';
import 'literal.dart';
import 'package.dart';
import 'source_file.dart';
import 'statement.dart';

class PhaseOneVisitor extends MicroGoBaseVisitor {
  final context = <dynamic, ParserRuleContext>{};

  @override
  dynamic visit(ParseTree tree) {
    return tree == null ? null : super.visit(tree);
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
    return [for (final i in ctx.importDecls()) ...visit(i)];
  }

  @override
  dynamic visitTopLevelDeclList(TopLevelDeclListContext ctx) {
    // TODO: implement visitTopLevelDeclList
    return super.visitTopLevelDeclList(ctx);
  }

  // Package clause

  @override
  Package visitPackageClause(PackageClauseContext ctx) {
    return Package(visit(ctx.packageName()), context: ctx);
  }

  @override
  String visitPackageName(PackageNameContext ctx) {
    return ctx.IDENTIFIER().text;
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
    return [for (final i in ctx.importSpecs()) visit(i)];
  }

  @override
  Import visitImportSpec(ImportSpecContext ctx) {
    final name = visit(ctx.packageName());
    final path = visit(ctx.importPath());
    return Import(path, name: name, context: ctx);
  }

  @override
  String visitImportPath(ImportPathContext ctx) {
    return visit(ctx.stringLit());
  }

  // Declarations and scope

  @override
  dynamic visitTopLevelDecl(TopLevelDeclContext ctx) {
    // TODO: implement visitTopLevelDecl
    return super.visitTopLevelDecl(ctx);
  }

  @override
  dynamic visitDeclaration(DeclarationContext ctx) {
    // TODO: implement visitDeclaration
    return super.visitDeclaration(ctx);
  }

  // Constant declarations

  @override
  dynamic visitConstDecl(ConstDeclContext ctx) {
    // TODO: implement visitConstDecl
    return super.visitConstDecl(ctx);
  }

  @override
  dynamic visitConstSpecList(ConstSpecListContext ctx) {
    // TODO: implement visitConstSpecList
    return super.visitConstSpecList(ctx);
  }

  @override
  dynamic visitConstSpec(ConstSpecContext ctx) {
    // TODO: implement visitConstSpec
    return super.visitConstSpec(ctx);
  }

  @override
  List<Identifier> visitIdentifierList(IdentifierListContext ctx) {
    return [for (final i in ctx.identifiers()) visit(i)];
  }

  @override
  Identifier visitIdentifier(IdentifierContext ctx) {
    return SimpleIdentifier(ctx.IDENTIFIER().text, context: ctx);
  }

  @override
  dynamic visitExpressionList(ExpressionListContext ctx) {
    // TODO: implement visitExpressionList
    return super.visitExpressionList(ctx);
  }

  // Type declarations

  @override
  dynamic visitTypeDecl(TypeDeclContext ctx) {
    // TODO: implement visitTypeDecl
    return super.visitTypeDecl(ctx);
  }

  @override
  dynamic visitTypeSpecList(TypeSpecListContext ctx) {
    // TODO: implement visitTypeSpecList
    return super.visitTypeSpecList(ctx);
  }

  @override
  dynamic visitTypeSpec(TypeSpecContext ctx) {
    // TODO: implement visitTypeSpec
    return super.visitTypeSpec(ctx);
  }

  @override
  dynamic visitAliasDecl(AliasDeclContext ctx) {
    // TODO: implement visitAliasDecl
    return super.visitAliasDecl(ctx);
  }

  @override
  dynamic visitTypeDef(TypeDefContext ctx) {
    // TODO: implement visitTypeDef
    return super.visitTypeDef(ctx);
  }

  // Variable declarations

  @override
  dynamic visitVarDecl(VarDeclContext ctx) {
    // TODO: implement visitVarDecl
    return super.visitVarDecl(ctx);
  }

  @override
  dynamic visitVarSpecList(VarSpecListContext ctx) {
    // TODO: implement visitVarSpecList
    return super.visitVarSpecList(ctx);
  }

  @override
  dynamic visitVarSpec(VarSpecContext ctx) {
    // TODO: implement visitVarSpec
    return super.visitVarSpec(ctx);
  }

  // Types

  @override
  DataType visitType(TypeContext ctx) {
    return visit(ctx.typeName()) ??
        visit(ctx.typeLit()) ??
        CastType(visit(ctx.type()), context: ctx);
  }

  @override
  DataType visitTypeName(TypeNameContext ctx) {
    return NamedType.from(
      visit(ctx.identifier()) ?? visit(ctx.qualifiedIdent()),
      ctx,
    );
  }

  @override
  dynamic visitTypeLit(TypeLitContext ctx) {
    // TODO: implement visitTypeLit
    return super.visitTypeLit(ctx);
  }

  // Array types

  @override
  dynamic visitArrayType(ArrayTypeContext ctx) {
    // TODO: implement visitArrayType
    return super.visitArrayType(ctx);
  }

  @override
  dynamic visitArrayLength(ArrayLengthContext ctx) {
    // TODO: implement visitArrayLength
    return super.visitArrayLength(ctx);
  }

  @override
  dynamic visitElementType(ElementTypeContext ctx) {
    // TODO: implement visitElementType
    return super.visitElementType(ctx);
  }

  // Slice types

  @override
  dynamic visitSliceType(SliceTypeContext ctx) {
    // TODO: implement visitSliceType
    return super.visitSliceType(ctx);
  }

  // Struct types

  @override
  StructType visitStructType(StructTypeContext ctx) {
    return StructType(visit(ctx.fieldDeclList()), context: ctx);
  }

  @override
  List<Field> visitFieldDeclList(FieldDeclListContext ctx) {
    return [for (final i in ctx.fieldDecls()) ...visit(i)];
  }

  @override
  List<Field> visitFieldDecl(FieldDeclContext ctx) {
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
  Field visitEmbeddedField(EmbeddedFieldContext ctx) {
    return EmbeddedField(
      visit(ctx.typeName()),
      pointer: ctx.STAR() != null,
      context: ctx,
    );
  }

  // Pointer types

  @override
  dynamic visitPointerType(PointerTypeContext ctx) {
    // TODO: implement visitPointerType
    return super.visitPointerType(ctx);
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
    return [for (final p in ctx.parameterDecls()) ...visit(p)];
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
  dynamic visitInterfaceType(InterfaceTypeContext ctx) {
    // TODO: implement visitInterfaceType
    return super.visitInterfaceType(ctx);
  }

  @override
  dynamic visitMethodSpec(MethodSpecContext ctx) {
    // TODO: implement visitMethodSpec
    return super.visitMethodSpec(ctx);
  }

  @override
  Identifier visitMethodName(MethodNameContext ctx) {
    return SimpleIdentifier(ctx.IDENTIFIER().text, context: ctx);
  }

  @override
  dynamic visitInterfaceTypeName(InterfaceTypeNameContext ctx) {
    // TODO: implement visitInterfaceTypeName
    return super.visitInterfaceTypeName(ctx);
  }

  // Blocks

  @override
  dynamic visitBlock(BlockContext ctx) {
    // TODO: implement visitBlock
    return super.visitBlock(ctx);
  }

  @override
  dynamic visitStatementList(StatementListContext ctx) {
    // TODO: implement visitStatementList
    return super.visitStatementList(ctx);
  }

  // Short variable declarations

  @override
  dynamic visitShortVarDecl(ShortVarDeclContext ctx) {
    // TODO: implement visitShortVarDecl
    return super.visitShortVarDecl(ctx);
  }

  // Function declarations

  @override
  dynamic visitFunctionDecl(FunctionDeclContext ctx) {
    // TODO: implement visitFunctionDecl
    return super.visitFunctionDecl(ctx);
  }

  @override
  dynamic visitFunctionName(FunctionNameContext ctx) {
    // TODO: implement visitFunctionName
    return super.visitFunctionName(ctx);
  }

  @override
  dynamic visitFunctionBody(FunctionBodyContext ctx) {
    // TODO: implement visitFunctionBody
    return super.visitFunctionBody(ctx);
  }

  // Method declarations

  @override
  dynamic visitMethodDecl(MethodDeclContext ctx) {
    // TODO: implement visitMethodDecl
    return super.visitMethodDecl(ctx);
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
    // TODO: implement visitMethodDecl
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
      value.substring(1, value.length - 1),
      raw: false,
      context: ctx,
    );
  }

  @override
  Expression visitOperandName(OperandNameContext ctx) {
    return NamedOperandExpression(visitChildren(ctx), context: ctx);
  }

  // Qualified identifiers

  @override
  Identifier visitQualifiedIdent(QualifiedIdentContext ctx) {
    return QualifiedIdentifier(
      Package(visit(ctx.packageName()), context: ctx),
      ctx.IDENTIFIER().text,
      context: ctx,
    );
  }

  // Composite literals

  @override
  dynamic visitCompositeLit(CompositeLitContext ctx) {
    // TODO: implement visitCompositeLit
    return super.visitCompositeLit(ctx);
  }

  @override
  dynamic visitLiteralType(LiteralTypeContext ctx) {
    // TODO: implement visitLiteralType
    return super.visitLiteralType(ctx);
  }

  @override
  dynamic visitLiteralValue(LiteralValueContext ctx) {
    // TODO: implement visitLiteralValue
    return super.visitLiteralValue(ctx);
  }

  @override
  dynamic visitElementList(ElementListContext ctx) {
    // TODO: implement visitElementList
    return super.visitElementList(ctx);
  }

  @override
  dynamic visitKeyedElement(KeyedElementContext ctx) {
    // TODO: implement visitKeyedElement
    return super.visitKeyedElement(ctx);
  }

  @override
  dynamic visitKey(KeyContext ctx) {
    // TODO: implement visitKey
    return super.visitKey(ctx);
  }

  @override
  dynamic visitFieldName(FieldNameContext ctx) {
    // TODO: implement visitFieldName
    return super.visitFieldName(ctx);
  }

  @override
  dynamic visitElement(ElementContext ctx) {
    // TODO: implement visitElement
    return super.visitElement(ctx);
  }

  // Function literals

  @override
  dynamic visitFunctionLit(FunctionLitContext ctx) {
    // TODO: implement visitFunctionLit
    return super.visitFunctionLit(ctx);
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
  Expression visitArgumentsExprAlt(ArgumentsExprAltContext ctx) {
    // TODO: implement visitArgumentsExprAlt
    return super.visitArgumentsExprAlt(ctx);
  }

  @override
  dynamic visitArguments(ArgumentsContext ctx) {
    // TODO: implement visitArguments
    return super.visitArguments(ctx);
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
  dynamic visitStatement(StatementContext ctx) {
    // TODO: implement visitStatement
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
  dynamic visitExpressionStmt(ExpressionStmtContext ctx) {
    // TODO: implement visitExpressionStmt
    return super.visitExpressionStmt(ctx);
  }

  // IncDec statements

  @override
  Statement visitIncStmtAlt(IncStmtAltContext ctx) {
    return IncrementStatement(visit(ctx.expression()), context: ctx);
  }

  @override
  Statement visitDecStmtAlt(DecStmtAltContext ctx) {
    return DecrementStatement(visit(ctx.expression()), context: ctx);
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
    if (ctx.multOp() != null) {
      return visit(ctx.multOp());
    } else if (ctx.addOp() != null) {
      return visit(ctx.addOp());
    } else {
      return AssignmentOperator(context: ctx);
    }
  }

  // If statements

  @override
  Statement visitIfStmt(IfStmtContext ctx) {
    return IfStatement(
      visit(ctx.expression()),
      visit(ctx.block(0)),
      statement: visit(ctx.simpleStmt()),
      else_: visit(ctx.ifStmt()) ?? visit(ctx.block(1)),
    );
  }

  // Switch statements

  @override
  dynamic visitSwitchStmt(SwitchStmtContext ctx) {
    // TODO: implement visitSwitchStmt
    return super.visitSwitchStmt(ctx);
  }

  @override
  dynamic visitExprSwitchStmt(ExprSwitchStmtContext ctx) {
    // TODO: implement visitExprSwitchStmt
    return super.visitExprSwitchStmt(ctx);
  }

  @override
  dynamic visitExprCaseClause(ExprCaseClauseContext ctx) {
    // TODO: implement visitExprCaseClause
    return super.visitExprCaseClause(ctx);
  }

  @override
  dynamic visitExprSwitchCase(ExprSwitchCaseContext ctx) {
    // TODO: implement visitExprSwitchCase
    return super.visitExprSwitchCase(ctx);
  }

  @override
  dynamic visitTypeSwitchStmt(TypeSwitchStmtContext ctx) {
    // TODO: implement visitTypeSwitchStmt
    return super.visitTypeSwitchStmt(ctx);
  }

  @override
  dynamic visitTypeSwitchGuard(TypeSwitchGuardContext ctx) {
    // TODO: implement visitTypeSwitchGuard
    return super.visitTypeSwitchGuard(ctx);
  }

  @override
  dynamic visitTypeCaseClause(TypeCaseClauseContext ctx) {
    // TODO: implement visitTypeCaseClause
    return super.visitTypeCaseClause(ctx);
  }

  @override
  dynamic visitTypeSwitchCase(TypeSwitchCaseContext ctx) {
    // TODO: implement visitTypeSwitchCase
    return super.visitTypeSwitchCase(ctx);
  }

  @override
  dynamic visitTypeList(TypeListContext ctx) {
    // TODO: implement visitTypeList
    return super.visitTypeList(ctx);
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
      visit(ctx.simpleStmt(0)),
      visit(ctx.condition()),
      visit(ctx.simpleStmt(1)),
    ];
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
