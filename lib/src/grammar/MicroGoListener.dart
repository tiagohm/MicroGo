// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'MicroGoBaseParser.dart';
import 'MicroGoParser.dart';

/// This abstract class defines a complete listener for a parse tree produced by
/// [MicroGoParser].
abstract class MicroGoListener extends ParseTreeListener {
  /// Enter a parse tree produced by [MicroGoParser.sourceFile].
  /// [ctx] the parse tree
  void enterSourceFile(SourceFileContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.sourceFile].
  /// [ctx] the parse tree
  void exitSourceFile(SourceFileContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.packageClause].
  /// [ctx] the parse tree
  void enterPackageClause(PackageClauseContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.packageClause].
  /// [ctx] the parse tree
  void exitPackageClause(PackageClauseContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.packageName].
  /// [ctx] the parse tree
  void enterPackageName(PackageNameContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.packageName].
  /// [ctx] the parse tree
  void exitPackageName(PackageNameContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.importDecl].
  /// [ctx] the parse tree
  void enterImportDecl(ImportDeclContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.importDecl].
  /// [ctx] the parse tree
  void exitImportDecl(ImportDeclContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.importSpec].
  /// [ctx] the parse tree
  void enterImportSpec(ImportSpecContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.importSpec].
  /// [ctx] the parse tree
  void exitImportSpec(ImportSpecContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.importPath].
  /// [ctx] the parse tree
  void enterImportPath(ImportPathContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.importPath].
  /// [ctx] the parse tree
  void exitImportPath(ImportPathContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.stringLit].
  /// [ctx] the parse tree
  void enterStringLit(StringLitContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.stringLit].
  /// [ctx] the parse tree
  void exitStringLit(StringLitContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.rawStringLit].
  /// [ctx] the parse tree
  void enterRawStringLit(RawStringLitContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.rawStringLit].
  /// [ctx] the parse tree
  void exitRawStringLit(RawStringLitContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.interpretedStringLit].
  /// [ctx] the parse tree
  void enterInterpretedStringLit(InterpretedStringLitContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.interpretedStringLit].
  /// [ctx] the parse tree
  void exitInterpretedStringLit(InterpretedStringLitContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.topLevelDecl].
  /// [ctx] the parse tree
  void enterTopLevelDecl(TopLevelDeclContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.topLevelDecl].
  /// [ctx] the parse tree
  void exitTopLevelDecl(TopLevelDeclContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.declaration].
  /// [ctx] the parse tree
  void enterDeclaration(DeclarationContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.declaration].
  /// [ctx] the parse tree
  void exitDeclaration(DeclarationContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.constDecl].
  /// [ctx] the parse tree
  void enterConstDecl(ConstDeclContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.constDecl].
  /// [ctx] the parse tree
  void exitConstDecl(ConstDeclContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.constSpec].
  /// [ctx] the parse tree
  void enterConstSpec(ConstSpecContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.constSpec].
  /// [ctx] the parse tree
  void exitConstSpec(ConstSpecContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.identifierList].
  /// [ctx] the parse tree
  void enterIdentifierList(IdentifierListContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.identifierList].
  /// [ctx] the parse tree
  void exitIdentifierList(IdentifierListContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.expressionList].
  /// [ctx] the parse tree
  void enterExpressionList(ExpressionListContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.expressionList].
  /// [ctx] the parse tree
  void exitExpressionList(ExpressionListContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.typeDecl].
  /// [ctx] the parse tree
  void enterTypeDecl(TypeDeclContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.typeDecl].
  /// [ctx] the parse tree
  void exitTypeDecl(TypeDeclContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.typeSpec].
  /// [ctx] the parse tree
  void enterTypeSpec(TypeSpecContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.typeSpec].
  /// [ctx] the parse tree
  void exitTypeSpec(TypeSpecContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.aliasDecl].
  /// [ctx] the parse tree
  void enterAliasDecl(AliasDeclContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.aliasDecl].
  /// [ctx] the parse tree
  void exitAliasDecl(AliasDeclContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.typeDef].
  /// [ctx] the parse tree
  void enterTypeDef(TypeDefContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.typeDef].
  /// [ctx] the parse tree
  void exitTypeDef(TypeDefContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.varDecl].
  /// [ctx] the parse tree
  void enterVarDecl(VarDeclContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.varDecl].
  /// [ctx] the parse tree
  void exitVarDecl(VarDeclContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.varSpec].
  /// [ctx] the parse tree
  void enterVarSpec(VarSpecContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.varSpec].
  /// [ctx] the parse tree
  void exitVarSpec(VarSpecContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.type].
  /// [ctx] the parse tree
  void enterType(TypeContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.type].
  /// [ctx] the parse tree
  void exitType(TypeContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.typeName].
  /// [ctx] the parse tree
  void enterTypeName(TypeNameContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.typeName].
  /// [ctx] the parse tree
  void exitTypeName(TypeNameContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.typeLit].
  /// [ctx] the parse tree
  void enterTypeLit(TypeLitContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.typeLit].
  /// [ctx] the parse tree
  void exitTypeLit(TypeLitContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.arrayType].
  /// [ctx] the parse tree
  void enterArrayType(ArrayTypeContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.arrayType].
  /// [ctx] the parse tree
  void exitArrayType(ArrayTypeContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.arrayLength].
  /// [ctx] the parse tree
  void enterArrayLength(ArrayLengthContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.arrayLength].
  /// [ctx] the parse tree
  void exitArrayLength(ArrayLengthContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.elementType].
  /// [ctx] the parse tree
  void enterElementType(ElementTypeContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.elementType].
  /// [ctx] the parse tree
  void exitElementType(ElementTypeContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.sliceType].
  /// [ctx] the parse tree
  void enterSliceType(SliceTypeContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.sliceType].
  /// [ctx] the parse tree
  void exitSliceType(SliceTypeContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.structType].
  /// [ctx] the parse tree
  void enterStructType(StructTypeContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.structType].
  /// [ctx] the parse tree
  void exitStructType(StructTypeContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.fieldDecl].
  /// [ctx] the parse tree
  void enterFieldDecl(FieldDeclContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.fieldDecl].
  /// [ctx] the parse tree
  void exitFieldDecl(FieldDeclContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.embeddedField].
  /// [ctx] the parse tree
  void enterEmbeddedField(EmbeddedFieldContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.embeddedField].
  /// [ctx] the parse tree
  void exitEmbeddedField(EmbeddedFieldContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.pointerType].
  /// [ctx] the parse tree
  void enterPointerType(PointerTypeContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.pointerType].
  /// [ctx] the parse tree
  void exitPointerType(PointerTypeContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.baseType].
  /// [ctx] the parse tree
  void enterBaseType(BaseTypeContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.baseType].
  /// [ctx] the parse tree
  void exitBaseType(BaseTypeContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.functionType].
  /// [ctx] the parse tree
  void enterFunctionType(FunctionTypeContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.functionType].
  /// [ctx] the parse tree
  void exitFunctionType(FunctionTypeContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.signature].
  /// [ctx] the parse tree
  void enterSignature(SignatureContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.signature].
  /// [ctx] the parse tree
  void exitSignature(SignatureContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.result].
  /// [ctx] the parse tree
  void enterResult(ResultContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.result].
  /// [ctx] the parse tree
  void exitResult(ResultContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.parameters].
  /// [ctx] the parse tree
  void enterParameters(ParametersContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.parameters].
  /// [ctx] the parse tree
  void exitParameters(ParametersContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.parameterList].
  /// [ctx] the parse tree
  void enterParameterList(ParameterListContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.parameterList].
  /// [ctx] the parse tree
  void exitParameterList(ParameterListContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.parameterDecl].
  /// [ctx] the parse tree
  void enterParameterDecl(ParameterDeclContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.parameterDecl].
  /// [ctx] the parse tree
  void exitParameterDecl(ParameterDeclContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.interfaceType].
  /// [ctx] the parse tree
  void enterInterfaceType(InterfaceTypeContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.interfaceType].
  /// [ctx] the parse tree
  void exitInterfaceType(InterfaceTypeContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.methodSpec].
  /// [ctx] the parse tree
  void enterMethodSpec(MethodSpecContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.methodSpec].
  /// [ctx] the parse tree
  void exitMethodSpec(MethodSpecContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.methodName].
  /// [ctx] the parse tree
  void enterMethodName(MethodNameContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.methodName].
  /// [ctx] the parse tree
  void exitMethodName(MethodNameContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.interfaceTypeName].
  /// [ctx] the parse tree
  void enterInterfaceTypeName(InterfaceTypeNameContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.interfaceTypeName].
  /// [ctx] the parse tree
  void exitInterfaceTypeName(InterfaceTypeNameContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.block].
  /// [ctx] the parse tree
  void enterBlock(BlockContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.block].
  /// [ctx] the parse tree
  void exitBlock(BlockContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.statementList].
  /// [ctx] the parse tree
  void enterStatementList(StatementListContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.statementList].
  /// [ctx] the parse tree
  void exitStatementList(StatementListContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.shortVarDecl].
  /// [ctx] the parse tree
  void enterShortVarDecl(ShortVarDeclContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.shortVarDecl].
  /// [ctx] the parse tree
  void exitShortVarDecl(ShortVarDeclContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.functionDecl].
  /// [ctx] the parse tree
  void enterFunctionDecl(FunctionDeclContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.functionDecl].
  /// [ctx] the parse tree
  void exitFunctionDecl(FunctionDeclContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.functionName].
  /// [ctx] the parse tree
  void enterFunctionName(FunctionNameContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.functionName].
  /// [ctx] the parse tree
  void exitFunctionName(FunctionNameContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.functionBody].
  /// [ctx] the parse tree
  void enterFunctionBody(FunctionBodyContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.functionBody].
  /// [ctx] the parse tree
  void exitFunctionBody(FunctionBodyContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.methodDecl].
  /// [ctx] the parse tree
  void enterMethodDecl(MethodDeclContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.methodDecl].
  /// [ctx] the parse tree
  void exitMethodDecl(MethodDeclContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.receiver].
  /// [ctx] the parse tree
  void enterReceiver(ReceiverContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.receiver].
  /// [ctx] the parse tree
  void exitReceiver(ReceiverContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.operand].
  /// [ctx] the parse tree
  void enterOperand(OperandContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.operand].
  /// [ctx] the parse tree
  void exitOperand(OperandContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.literal].
  /// [ctx] the parse tree
  void enterLiteral(LiteralContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.literal].
  /// [ctx] the parse tree
  void exitLiteral(LiteralContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.basicLit].
  /// [ctx] the parse tree
  void enterBasicLit(BasicLitContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.basicLit].
  /// [ctx] the parse tree
  void exitBasicLit(BasicLitContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.nilLit].
  /// [ctx] the parse tree
  void enterNilLit(NilLitContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.nilLit].
  /// [ctx] the parse tree
  void exitNilLit(NilLitContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.integerLit].
  /// [ctx] the parse tree
  void enterIntegerLit(IntegerLitContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.integerLit].
  /// [ctx] the parse tree
  void exitIntegerLit(IntegerLitContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.decimalLit].
  /// [ctx] the parse tree
  void enterDecimalLit(DecimalLitContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.decimalLit].
  /// [ctx] the parse tree
  void exitDecimalLit(DecimalLitContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.binaryLit].
  /// [ctx] the parse tree
  void enterBinaryLit(BinaryLitContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.binaryLit].
  /// [ctx] the parse tree
  void exitBinaryLit(BinaryLitContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.octalLit].
  /// [ctx] the parse tree
  void enterOctalLit(OctalLitContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.octalLit].
  /// [ctx] the parse tree
  void exitOctalLit(OctalLitContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.hexLit].
  /// [ctx] the parse tree
  void enterHexLit(HexLitContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.hexLit].
  /// [ctx] the parse tree
  void exitHexLit(HexLitContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.floatLit].
  /// [ctx] the parse tree
  void enterFloatLit(FloatLitContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.floatLit].
  /// [ctx] the parse tree
  void exitFloatLit(FloatLitContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.decimalFloatLit].
  /// [ctx] the parse tree
  void enterDecimalFloatLit(DecimalFloatLitContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.decimalFloatLit].
  /// [ctx] the parse tree
  void exitDecimalFloatLit(DecimalFloatLitContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.hexFloatLit].
  /// [ctx] the parse tree
  void enterHexFloatLit(HexFloatLitContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.hexFloatLit].
  /// [ctx] the parse tree
  void exitHexFloatLit(HexFloatLitContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.runeLit].
  /// [ctx] the parse tree
  void enterRuneLit(RuneLitContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.runeLit].
  /// [ctx] the parse tree
  void exitRuneLit(RuneLitContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.operandName].
  /// [ctx] the parse tree
  void enterOperandName(OperandNameContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.operandName].
  /// [ctx] the parse tree
  void exitOperandName(OperandNameContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.qualifiedIdent].
  /// [ctx] the parse tree
  void enterQualifiedIdent(QualifiedIdentContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.qualifiedIdent].
  /// [ctx] the parse tree
  void exitQualifiedIdent(QualifiedIdentContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.compositeLit].
  /// [ctx] the parse tree
  void enterCompositeLit(CompositeLitContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.compositeLit].
  /// [ctx] the parse tree
  void exitCompositeLit(CompositeLitContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.literalType].
  /// [ctx] the parse tree
  void enterLiteralType(LiteralTypeContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.literalType].
  /// [ctx] the parse tree
  void exitLiteralType(LiteralTypeContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.literalValue].
  /// [ctx] the parse tree
  void enterLiteralValue(LiteralValueContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.literalValue].
  /// [ctx] the parse tree
  void exitLiteralValue(LiteralValueContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.elementList].
  /// [ctx] the parse tree
  void enterElementList(ElementListContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.elementList].
  /// [ctx] the parse tree
  void exitElementList(ElementListContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.keyedElement].
  /// [ctx] the parse tree
  void enterKeyedElement(KeyedElementContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.keyedElement].
  /// [ctx] the parse tree
  void exitKeyedElement(KeyedElementContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.key].
  /// [ctx] the parse tree
  void enterKey(KeyContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.key].
  /// [ctx] the parse tree
  void exitKey(KeyContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.fieldName].
  /// [ctx] the parse tree
  void enterFieldName(FieldNameContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.fieldName].
  /// [ctx] the parse tree
  void exitFieldName(FieldNameContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.element].
  /// [ctx] the parse tree
  void enterElement(ElementContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.element].
  /// [ctx] the parse tree
  void exitElement(ElementContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.functionLit].
  /// [ctx] the parse tree
  void enterFunctionLit(FunctionLitContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.functionLit].
  /// [ctx] the parse tree
  void exitFunctionLit(FunctionLitContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.primaryExpr].
  /// [ctx] the parse tree
  void enterPrimaryExpr(PrimaryExprContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.primaryExpr].
  /// [ctx] the parse tree
  void exitPrimaryExpr(PrimaryExprContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.selector].
  /// [ctx] the parse tree
  void enterSelector(SelectorContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.selector].
  /// [ctx] the parse tree
  void exitSelector(SelectorContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.index].
  /// [ctx] the parse tree
  void enterIndex(IndexContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.index].
  /// [ctx] the parse tree
  void exitIndex(IndexContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.slice].
  /// [ctx] the parse tree
  void enterSlice(SliceContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.slice].
  /// [ctx] the parse tree
  void exitSlice(SliceContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.typeAssertion].
  /// [ctx] the parse tree
  void enterTypeAssertion(TypeAssertionContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.typeAssertion].
  /// [ctx] the parse tree
  void exitTypeAssertion(TypeAssertionContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.arguments].
  /// [ctx] the parse tree
  void enterArguments(ArgumentsContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.arguments].
  /// [ctx] the parse tree
  void exitArguments(ArgumentsContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.methodExpr].
  /// [ctx] the parse tree
  void enterMethodExpr(MethodExprContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.methodExpr].
  /// [ctx] the parse tree
  void exitMethodExpr(MethodExprContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.receiverType].
  /// [ctx] the parse tree
  void enterReceiverType(ReceiverTypeContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.receiverType].
  /// [ctx] the parse tree
  void exitReceiverType(ReceiverTypeContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.expression].
  /// [ctx] the parse tree
  void enterExpression(ExpressionContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.expression].
  /// [ctx] the parse tree
  void exitExpression(ExpressionContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.unaryExpr].
  /// [ctx] the parse tree
  void enterUnaryExpr(UnaryExprContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.unaryExpr].
  /// [ctx] the parse tree
  void exitUnaryExpr(UnaryExprContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.unarypOp].
  /// [ctx] the parse tree
  void enterUnarypOp(UnarypOpContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.unarypOp].
  /// [ctx] the parse tree
  void exitUnarypOp(UnarypOpContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.multOp].
  /// [ctx] the parse tree
  void enterMultOp(MultOpContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.multOp].
  /// [ctx] the parse tree
  void exitMultOp(MultOpContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.addOp].
  /// [ctx] the parse tree
  void enterAddOp(AddOpContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.addOp].
  /// [ctx] the parse tree
  void exitAddOp(AddOpContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.relOp].
  /// [ctx] the parse tree
  void enterRelOp(RelOpContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.relOp].
  /// [ctx] the parse tree
  void exitRelOp(RelOpContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.conversion].
  /// [ctx] the parse tree
  void enterConversion(ConversionContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.conversion].
  /// [ctx] the parse tree
  void exitConversion(ConversionContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.statement].
  /// [ctx] the parse tree
  void enterStatement(StatementContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.statement].
  /// [ctx] the parse tree
  void exitStatement(StatementContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.simpleStmt].
  /// [ctx] the parse tree
  void enterSimpleStmt(SimpleStmtContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.simpleStmt].
  /// [ctx] the parse tree
  void exitSimpleStmt(SimpleStmtContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.emptyStmt].
  /// [ctx] the parse tree
  void enterEmptyStmt(EmptyStmtContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.emptyStmt].
  /// [ctx] the parse tree
  void exitEmptyStmt(EmptyStmtContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.labeledStmt].
  /// [ctx] the parse tree
  void enterLabeledStmt(LabeledStmtContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.labeledStmt].
  /// [ctx] the parse tree
  void exitLabeledStmt(LabeledStmtContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.label].
  /// [ctx] the parse tree
  void enterLabel(LabelContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.label].
  /// [ctx] the parse tree
  void exitLabel(LabelContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.expressionStmt].
  /// [ctx] the parse tree
  void enterExpressionStmt(ExpressionStmtContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.expressionStmt].
  /// [ctx] the parse tree
  void exitExpressionStmt(ExpressionStmtContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.incDecStmt].
  /// [ctx] the parse tree
  void enterIncDecStmt(IncDecStmtContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.incDecStmt].
  /// [ctx] the parse tree
  void exitIncDecStmt(IncDecStmtContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.assignment].
  /// [ctx] the parse tree
  void enterAssignment(AssignmentContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.assignment].
  /// [ctx] the parse tree
  void exitAssignment(AssignmentContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.assignOp].
  /// [ctx] the parse tree
  void enterAssignOp(AssignOpContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.assignOp].
  /// [ctx] the parse tree
  void exitAssignOp(AssignOpContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.ifStmt].
  /// [ctx] the parse tree
  void enterIfStmt(IfStmtContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.ifStmt].
  /// [ctx] the parse tree
  void exitIfStmt(IfStmtContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.switchStmt].
  /// [ctx] the parse tree
  void enterSwitchStmt(SwitchStmtContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.switchStmt].
  /// [ctx] the parse tree
  void exitSwitchStmt(SwitchStmtContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.exprSwitchStmt].
  /// [ctx] the parse tree
  void enterExprSwitchStmt(ExprSwitchStmtContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.exprSwitchStmt].
  /// [ctx] the parse tree
  void exitExprSwitchStmt(ExprSwitchStmtContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.exprCaseClause].
  /// [ctx] the parse tree
  void enterExprCaseClause(ExprCaseClauseContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.exprCaseClause].
  /// [ctx] the parse tree
  void exitExprCaseClause(ExprCaseClauseContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.exprSwitchCase].
  /// [ctx] the parse tree
  void enterExprSwitchCase(ExprSwitchCaseContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.exprSwitchCase].
  /// [ctx] the parse tree
  void exitExprSwitchCase(ExprSwitchCaseContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.typeSwitchStmt].
  /// [ctx] the parse tree
  void enterTypeSwitchStmt(TypeSwitchStmtContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.typeSwitchStmt].
  /// [ctx] the parse tree
  void exitTypeSwitchStmt(TypeSwitchStmtContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.typeSwitchGuard].
  /// [ctx] the parse tree
  void enterTypeSwitchGuard(TypeSwitchGuardContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.typeSwitchGuard].
  /// [ctx] the parse tree
  void exitTypeSwitchGuard(TypeSwitchGuardContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.typeCaseClause].
  /// [ctx] the parse tree
  void enterTypeCaseClause(TypeCaseClauseContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.typeCaseClause].
  /// [ctx] the parse tree
  void exitTypeCaseClause(TypeCaseClauseContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.typeSwitchCase].
  /// [ctx] the parse tree
  void enterTypeSwitchCase(TypeSwitchCaseContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.typeSwitchCase].
  /// [ctx] the parse tree
  void exitTypeSwitchCase(TypeSwitchCaseContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.typeList].
  /// [ctx] the parse tree
  void enterTypeList(TypeListContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.typeList].
  /// [ctx] the parse tree
  void exitTypeList(TypeListContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.forStmt].
  /// [ctx] the parse tree
  void enterForStmt(ForStmtContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.forStmt].
  /// [ctx] the parse tree
  void exitForStmt(ForStmtContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.condition].
  /// [ctx] the parse tree
  void enterCondition(ConditionContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.condition].
  /// [ctx] the parse tree
  void exitCondition(ConditionContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.forClause].
  /// [ctx] the parse tree
  void enterForClause(ForClauseContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.forClause].
  /// [ctx] the parse tree
  void exitForClause(ForClauseContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.initStmt].
  /// [ctx] the parse tree
  void enterInitStmt(InitStmtContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.initStmt].
  /// [ctx] the parse tree
  void exitInitStmt(InitStmtContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.postStmt].
  /// [ctx] the parse tree
  void enterPostStmt(PostStmtContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.postStmt].
  /// [ctx] the parse tree
  void exitPostStmt(PostStmtContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.rangeClause].
  /// [ctx] the parse tree
  void enterRangeClause(RangeClauseContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.rangeClause].
  /// [ctx] the parse tree
  void exitRangeClause(RangeClauseContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.returnStmt].
  /// [ctx] the parse tree
  void enterReturnStmt(ReturnStmtContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.returnStmt].
  /// [ctx] the parse tree
  void exitReturnStmt(ReturnStmtContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.breakStmt].
  /// [ctx] the parse tree
  void enterBreakStmt(BreakStmtContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.breakStmt].
  /// [ctx] the parse tree
  void exitBreakStmt(BreakStmtContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.continueStmt].
  /// [ctx] the parse tree
  void enterContinueStmt(ContinueStmtContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.continueStmt].
  /// [ctx] the parse tree
  void exitContinueStmt(ContinueStmtContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.gotoStmt].
  /// [ctx] the parse tree
  void enterGotoStmt(GotoStmtContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.gotoStmt].
  /// [ctx] the parse tree
  void exitGotoStmt(GotoStmtContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.fallthroughStmt].
  /// [ctx] the parse tree
  void enterFallthroughStmt(FallthroughStmtContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.fallthroughStmt].
  /// [ctx] the parse tree
  void exitFallthroughStmt(FallthroughStmtContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.eos].
  /// [ctx] the parse tree
  void enterEos(EosContext ctx);

  /// Exit a parse tree produced by [MicroGoParser.eos].
  /// [ctx] the parse tree
  void exitEos(EosContext ctx);
}
