// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'MicroGoParser.dart';

import 'MicroGoBaseParser.dart';

/// This abstract class defines a complete generic visitor for a parse tree
/// produced by [MicroGoParser].
///
/// [T] is the eturn type of the visit operation. Use `void` for
/// operations with no return type.
abstract class MicroGoVisitor<T> extends ParseTreeVisitor<T> {
  /// Visit a parse tree produced by [MicroGoParser.sourceFile].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitSourceFile(SourceFileContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.importDeclList].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitImportDeclList(ImportDeclListContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.topLevelDeclList].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitTopLevelDeclList(TopLevelDeclListContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.packageClause].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitPackageClause(PackageClauseContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.packageName].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitPackageName(PackageNameContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.importDecl].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitImportDecl(ImportDeclContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.importSpecList].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitImportSpecList(ImportSpecListContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.importSpec].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitImportSpec(ImportSpecContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.importPath].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitImportPath(ImportPathContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.topLevelDecl].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitTopLevelDecl(TopLevelDeclContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.declaration].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitDeclaration(DeclarationContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.constDecl].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitConstDecl(ConstDeclContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.constSpecList].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitConstSpecList(ConstSpecListContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.constSpec].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitConstSpec(ConstSpecContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.identifierList].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitIdentifierList(IdentifierListContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.identifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitIdentifier(IdentifierContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.expressionList].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitExpressionList(ExpressionListContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.typeDecl].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitTypeDecl(TypeDeclContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.typeSpecList].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitTypeSpecList(TypeSpecListContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.typeSpec].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitTypeSpec(TypeSpecContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.aliasDecl].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitAliasDecl(AliasDeclContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.typeDef].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitTypeDef(TypeDefContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.varDecl].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitVarDecl(VarDeclContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.varSpecList].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitVarSpecList(VarSpecListContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.varSpec].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitVarSpec(VarSpecContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.type].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitType(TypeContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.typeName].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitTypeName(TypeNameContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.typeLit].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitTypeLit(TypeLitContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.arrayType].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitArrayType(ArrayTypeContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.arrayLength].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitArrayLength(ArrayLengthContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.elementType].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitElementType(ElementTypeContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.sliceType].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitSliceType(SliceTypeContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.structType].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitStructType(StructTypeContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.fieldDeclList].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitFieldDeclList(FieldDeclListContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.fieldDecl].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitFieldDecl(FieldDeclContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.embeddedField].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitEmbeddedField(EmbeddedFieldContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.pointerType].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitPointerType(PointerTypeContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.functionType].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitFunctionType(FunctionTypeContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.signature].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitSignature(SignatureContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.result].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitResult(ResultContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.parameters].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitParameters(ParametersContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.parameterList].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitParameterList(ParameterListContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.parameterDecl].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitParameterDecl(ParameterDeclContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.interfaceType].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitInterfaceType(InterfaceTypeContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.methodSpec].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitMethodSpec(MethodSpecContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.methodName].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitMethodName(MethodNameContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.interfaceTypeName].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitInterfaceTypeName(InterfaceTypeNameContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.block].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitBlock(BlockContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.statementList].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitStatementList(StatementListContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.shortVarDecl].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitShortVarDecl(ShortVarDeclContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.functionDecl].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitFunctionDecl(FunctionDeclContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.functionName].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitFunctionName(FunctionNameContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.functionBody].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitFunctionBody(FunctionBodyContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.methodDecl].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitMethodDecl(MethodDeclContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.operand].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitOperand(OperandContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.literal].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitLiteral(LiteralContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.basicLit].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitBasicLit(BasicLitContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.nilLit].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitNilLit(NilLitContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.integerLit].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitIntegerLit(IntegerLitContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.decimalLit].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitDecimalLit(DecimalLitContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.binaryLit].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitBinaryLit(BinaryLitContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.octalLit].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitOctalLit(OctalLitContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.hexLit].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitHexLit(HexLitContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.floatLit].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitFloatLit(FloatLitContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.decimalFloatLit].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitDecimalFloatLit(DecimalFloatLitContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.hexFloatLit].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitHexFloatLit(HexFloatLitContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.runeLit].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitRuneLit(RuneLitContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.stringLit].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitStringLit(StringLitContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.rawStringLit].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitRawStringLit(RawStringLitContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.interpretedStringLit].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitInterpretedStringLit(InterpretedStringLitContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.operandName].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitOperandName(OperandNameContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.qualifiedIdent].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitQualifiedIdent(QualifiedIdentContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.compositeLit].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitCompositeLit(CompositeLitContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.literalType].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitLiteralType(LiteralTypeContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.literalValue].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitLiteralValue(LiteralValueContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.elementList].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitElementList(ElementListContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.keyedElement].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitKeyedElement(KeyedElementContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.key].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitKey(KeyContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.fieldName].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitFieldName(FieldNameContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.element].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitElement(ElementContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.functionLit].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitFunctionLit(FunctionLitContext ctx);

  /// Visit a parse tree produced by the {@code ConversionExprAlt}
  /// labeled alternative in {@link MicroGoParser#primaryExpr}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitConversionExprAlt(ConversionExprAltContext ctx);

  /// Visit a parse tree produced by the {@code SliceExprAlt}
  /// labeled alternative in {@link MicroGoParser#primaryExpr}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitSliceExprAlt(SliceExprAltContext ctx);

  /// Visit a parse tree produced by the {@code MethodExprAlt}
  /// labeled alternative in {@link MicroGoParser#primaryExpr}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitMethodExprAlt(MethodExprAltContext ctx);

  /// Visit a parse tree produced by the {@code SelectorExprAlt}
  /// labeled alternative in {@link MicroGoParser#primaryExpr}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitSelectorExprAlt(SelectorExprAltContext ctx);

  /// Visit a parse tree produced by the {@code ArgumentsExprAlt}
  /// labeled alternative in {@link MicroGoParser#primaryExpr}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitArgumentsExprAlt(ArgumentsExprAltContext ctx);

  /// Visit a parse tree produced by the {@code OperandExprAlt}
  /// labeled alternative in {@link MicroGoParser#primaryExpr}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitOperandExprAlt(OperandExprAltContext ctx);

  /// Visit a parse tree produced by the {@code IndexExprAlt}
  /// labeled alternative in {@link MicroGoParser#primaryExpr}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitIndexExprAlt(IndexExprAltContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.selector].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitSelector(SelectorContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.index].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitIndex(IndexContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.slice].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitSlice(SliceContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.arguments].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitArguments(ArgumentsContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.methodExpr].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitMethodExpr(MethodExprContext ctx);

  /// Visit a parse tree produced by the {@code MultExprAlt}
  /// labeled alternative in {@link MicroGoParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitMultExprAlt(MultExprAltContext ctx);

  /// Visit a parse tree produced by the {@code OrExprAlt}
  /// labeled alternative in {@link MicroGoParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitOrExprAlt(OrExprAltContext ctx);

  /// Visit a parse tree produced by the {@code AndExprAlt}
  /// labeled alternative in {@link MicroGoParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitAndExprAlt(AndExprAltContext ctx);

  /// Visit a parse tree produced by the {@code AddExprAlt}
  /// labeled alternative in {@link MicroGoParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitAddExprAlt(AddExprAltContext ctx);

  /// Visit a parse tree produced by the {@code UnaryExprAlt}
  /// labeled alternative in {@link MicroGoParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitUnaryExprAlt(UnaryExprAltContext ctx);

  /// Visit a parse tree produced by the {@code RelExprAlt}
  /// labeled alternative in {@link MicroGoParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitRelExprAlt(RelExprAltContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.unaryExpr].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitUnaryExpr(UnaryExprContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.unarypOp].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitUnarypOp(UnarypOpContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.multOp].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitMultOp(MultOpContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.addOp].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitAddOp(AddOpContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.relOp].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitRelOp(RelOpContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.conversion].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitConversion(ConversionContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.statement].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitStatement(StatementContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.simpleStmt].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitSimpleStmt(SimpleStmtContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.emptyStmt].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitEmptyStmt(EmptyStmtContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.labeledStmt].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitLabeledStmt(LabeledStmtContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.label].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitLabel(LabelContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.expressionStmt].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitExpressionStmt(ExpressionStmtContext ctx);

  /// Visit a parse tree produced by the {@code IncStmtAlt}
  /// labeled alternative in {@link MicroGoParser#incDecStmt}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitIncStmtAlt(IncStmtAltContext ctx);

  /// Visit a parse tree produced by the {@code DecStmtAlt}
  /// labeled alternative in {@link MicroGoParser#incDecStmt}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitDecStmtAlt(DecStmtAltContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.assignment].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitAssignment(AssignmentContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.assignOp].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitAssignOp(AssignOpContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.ifStmt].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitIfStmt(IfStmtContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.switchStmt].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitSwitchStmt(SwitchStmtContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.exprSwitchStmt].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitExprSwitchStmt(ExprSwitchStmtContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.exprCaseClause].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitExprCaseClause(ExprCaseClauseContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.exprSwitchCase].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitExprSwitchCase(ExprSwitchCaseContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.typeSwitchStmt].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitTypeSwitchStmt(TypeSwitchStmtContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.typeSwitchGuard].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitTypeSwitchGuard(TypeSwitchGuardContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.typeCaseClause].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitTypeCaseClause(TypeCaseClauseContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.typeSwitchCase].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitTypeSwitchCase(TypeSwitchCaseContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.typeList].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitTypeList(TypeListContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.forStmt].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitForStmt(ForStmtContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.condition].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitCondition(ConditionContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.forClause].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitForClause(ForClauseContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.rangeClause].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitRangeClause(RangeClauseContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.returnStmt].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitReturnStmt(ReturnStmtContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.breakStmt].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitBreakStmt(BreakStmtContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.continueStmt].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitContinueStmt(ContinueStmtContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.gotoStmt].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitGotoStmt(GotoStmtContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.fallthroughStmt].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitFallthroughStmt(FallthroughStmtContext ctx);

  /// Visit a parse tree produced by [MicroGoParser.eos].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitEos(EosContext ctx);
}
