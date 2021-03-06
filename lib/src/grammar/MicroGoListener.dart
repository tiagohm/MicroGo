// Generated from /home/tiagohm/Git/dart/microgo/grammar/MicroGo.g4 by ANTLR 4.8
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'MicroGoParser.dart';

import 'MicroGoBaseParser.dart';


/// This abstract class defines a complete listener for a parse tree produced by
/// [MicroGoParser].
abstract class MicroGoListener extends ParseTreeListener {
  /// Enter a parse tree produced by [MicroGoParser.sourceFile].
  /// [ctx] the parse tree
  void enterSourceFile(SourceFileContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.sourceFile].
  /// [ctx] the parse tree
  void exitSourceFile(SourceFileContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.importDeclList].
  /// [ctx] the parse tree
  void enterImportDeclList(ImportDeclListContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.importDeclList].
  /// [ctx] the parse tree
  void exitImportDeclList(ImportDeclListContext ctx);

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

  /// Enter a parse tree produced by [MicroGoParser.packageArgument].
  /// [ctx] the parse tree
  void enterPackageArgument(PackageArgumentContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.packageArgument].
  /// [ctx] the parse tree
  void exitPackageArgument(PackageArgumentContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.packageArgumentDeclList].
  /// [ctx] the parse tree
  void enterPackageArgumentDeclList(PackageArgumentDeclListContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.packageArgumentDeclList].
  /// [ctx] the parse tree
  void exitPackageArgumentDeclList(PackageArgumentDeclListContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.packageArgumentDecl].
  /// [ctx] the parse tree
  void enterPackageArgumentDecl(PackageArgumentDeclContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.packageArgumentDecl].
  /// [ctx] the parse tree
  void exitPackageArgumentDecl(PackageArgumentDeclContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.packageAlias].
  /// [ctx] the parse tree
  void enterPackageAlias(PackageAliasContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.packageAlias].
  /// [ctx] the parse tree
  void exitPackageAlias(PackageAliasContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.packageBody].
  /// [ctx] the parse tree
  void enterPackageBody(PackageBodyContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.packageBody].
  /// [ctx] the parse tree
  void exitPackageBody(PackageBodyContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.packageLevelDeclList].
  /// [ctx] the parse tree
  void enterPackageLevelDeclList(PackageLevelDeclListContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.packageLevelDeclList].
  /// [ctx] the parse tree
  void exitPackageLevelDeclList(PackageLevelDeclListContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.importDecl].
  /// [ctx] the parse tree
  void enterImportDecl(ImportDeclContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.importDecl].
  /// [ctx] the parse tree
  void exitImportDecl(ImportDeclContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.importSpecList].
  /// [ctx] the parse tree
  void enterImportSpecList(ImportSpecListContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.importSpecList].
  /// [ctx] the parse tree
  void exitImportSpecList(ImportSpecListContext ctx);

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

  /// Enter a parse tree produced by [MicroGoParser.packageLevelDecl].
  /// [ctx] the parse tree
  void enterPackageLevelDecl(PackageLevelDeclContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.packageLevelDecl].
  /// [ctx] the parse tree
  void exitPackageLevelDecl(PackageLevelDeclContext ctx);

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

  /// Enter a parse tree produced by [MicroGoParser.constSpecList].
  /// [ctx] the parse tree
  void enterConstSpecList(ConstSpecListContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.constSpecList].
  /// [ctx] the parse tree
  void exitConstSpecList(ConstSpecListContext ctx);

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

  /// Enter a parse tree produced by [MicroGoParser.identifier].
  /// [ctx] the parse tree
  void enterIdentifier(IdentifierContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.identifier].
  /// [ctx] the parse tree
  void exitIdentifier(IdentifierContext ctx);

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

  /// Enter a parse tree produced by [MicroGoParser.varDecl].
  /// [ctx] the parse tree
  void enterVarDecl(VarDeclContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.varDecl].
  /// [ctx] the parse tree
  void exitVarDecl(VarDeclContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.varSpecList].
  /// [ctx] the parse tree
  void enterVarSpecList(VarSpecListContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.varSpecList].
  /// [ctx] the parse tree
  void exitVarSpecList(VarSpecListContext ctx);

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

  /// Enter a parse tree produced by [MicroGoParser.structType].
  /// [ctx] the parse tree
  void enterStructType(StructTypeContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.structType].
  /// [ctx] the parse tree
  void exitStructType(StructTypeContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.fieldDeclList].
  /// [ctx] the parse tree
  void enterFieldDeclList(FieldDeclListContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.fieldDeclList].
  /// [ctx] the parse tree
  void exitFieldDeclList(FieldDeclListContext ctx);

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

  /// Enter a parse tree produced by [MicroGoParser.interfaceTypeSpecList].
  /// [ctx] the parse tree
  void enterInterfaceTypeSpecList(InterfaceTypeSpecListContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.interfaceTypeSpecList].
  /// [ctx] the parse tree
  void exitInterfaceTypeSpecList(InterfaceTypeSpecListContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.interfaceTypeSpec].
  /// [ctx] the parse tree
  void enterInterfaceTypeSpec(InterfaceTypeSpecContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.interfaceTypeSpec].
  /// [ctx] the parse tree
  void exitInterfaceTypeSpec(InterfaceTypeSpecContext ctx);

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

  /// Enter a parse tree produced by [MicroGoParser.booleanLit].
  /// [ctx] the parse tree
  void enterBooleanLit(BooleanLitContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.booleanLit].
  /// [ctx] the parse tree
  void exitBooleanLit(BooleanLitContext ctx);

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

  /// Enter a parse tree produced by [MicroGoParser.ellipsisArrayType].
  /// [ctx] the parse tree
  void enterEllipsisArrayType(EllipsisArrayTypeContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.ellipsisArrayType].
  /// [ctx] the parse tree
  void exitEllipsisArrayType(EllipsisArrayTypeContext ctx);

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

  /// Enter a parse tree produced by [MicroGoParser.fieldIndex].
  /// [ctx] the parse tree
  void enterFieldIndex(FieldIndexContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.fieldIndex].
  /// [ctx] the parse tree
  void exitFieldIndex(FieldIndexContext ctx);

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

  /// Enter a parse tree produced by the [ConversionExprAlt]
  /// labeled alternative in [file.parserName>.primaryExpr].
  /// [ctx] the parse tree
  void enterConversionExprAlt(ConversionExprAltContext ctx);
  /// Exit a parse tree produced by the [ConversionExprAlt]
  /// labeled alternative in [MicroGoParser.primaryExpr].
  /// [ctx] the parse tree
  void exitConversionExprAlt(ConversionExprAltContext ctx);

  /// Enter a parse tree produced by the [SliceExprAlt]
  /// labeled alternative in [file.parserName>.primaryExpr].
  /// [ctx] the parse tree
  void enterSliceExprAlt(SliceExprAltContext ctx);
  /// Exit a parse tree produced by the [SliceExprAlt]
  /// labeled alternative in [MicroGoParser.primaryExpr].
  /// [ctx] the parse tree
  void exitSliceExprAlt(SliceExprAltContext ctx);

  /// Enter a parse tree produced by the [MethodExprAlt]
  /// labeled alternative in [file.parserName>.primaryExpr].
  /// [ctx] the parse tree
  void enterMethodExprAlt(MethodExprAltContext ctx);
  /// Exit a parse tree produced by the [MethodExprAlt]
  /// labeled alternative in [MicroGoParser.primaryExpr].
  /// [ctx] the parse tree
  void exitMethodExprAlt(MethodExprAltContext ctx);

  /// Enter a parse tree produced by the [CallExprAlt]
  /// labeled alternative in [file.parserName>.primaryExpr].
  /// [ctx] the parse tree
  void enterCallExprAlt(CallExprAltContext ctx);
  /// Exit a parse tree produced by the [CallExprAlt]
  /// labeled alternative in [MicroGoParser.primaryExpr].
  /// [ctx] the parse tree
  void exitCallExprAlt(CallExprAltContext ctx);

  /// Enter a parse tree produced by the [SelectorExprAlt]
  /// labeled alternative in [file.parserName>.primaryExpr].
  /// [ctx] the parse tree
  void enterSelectorExprAlt(SelectorExprAltContext ctx);
  /// Exit a parse tree produced by the [SelectorExprAlt]
  /// labeled alternative in [MicroGoParser.primaryExpr].
  /// [ctx] the parse tree
  void exitSelectorExprAlt(SelectorExprAltContext ctx);

  /// Enter a parse tree produced by the [OperandExprAlt]
  /// labeled alternative in [file.parserName>.primaryExpr].
  /// [ctx] the parse tree
  void enterOperandExprAlt(OperandExprAltContext ctx);
  /// Exit a parse tree produced by the [OperandExprAlt]
  /// labeled alternative in [MicroGoParser.primaryExpr].
  /// [ctx] the parse tree
  void exitOperandExprAlt(OperandExprAltContext ctx);

  /// Enter a parse tree produced by the [IndexExprAlt]
  /// labeled alternative in [file.parserName>.primaryExpr].
  /// [ctx] the parse tree
  void enterIndexExprAlt(IndexExprAltContext ctx);
  /// Exit a parse tree produced by the [IndexExprAlt]
  /// labeled alternative in [MicroGoParser.primaryExpr].
  /// [ctx] the parse tree
  void exitIndexExprAlt(IndexExprAltContext ctx);

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

  /// Enter a parse tree produced by the [MultExprAlt]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterMultExprAlt(MultExprAltContext ctx);
  /// Exit a parse tree produced by the [MultExprAlt]
  /// labeled alternative in [MicroGoParser.expression].
  /// [ctx] the parse tree
  void exitMultExprAlt(MultExprAltContext ctx);

  /// Enter a parse tree produced by the [OrExprAlt]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterOrExprAlt(OrExprAltContext ctx);
  /// Exit a parse tree produced by the [OrExprAlt]
  /// labeled alternative in [MicroGoParser.expression].
  /// [ctx] the parse tree
  void exitOrExprAlt(OrExprAltContext ctx);

  /// Enter a parse tree produced by the [AndExprAlt]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterAndExprAlt(AndExprAltContext ctx);
  /// Exit a parse tree produced by the [AndExprAlt]
  /// labeled alternative in [MicroGoParser.expression].
  /// [ctx] the parse tree
  void exitAndExprAlt(AndExprAltContext ctx);

  /// Enter a parse tree produced by the [AddExprAlt]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterAddExprAlt(AddExprAltContext ctx);
  /// Exit a parse tree produced by the [AddExprAlt]
  /// labeled alternative in [MicroGoParser.expression].
  /// [ctx] the parse tree
  void exitAddExprAlt(AddExprAltContext ctx);

  /// Enter a parse tree produced by the [UnaryExprAlt]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterUnaryExprAlt(UnaryExprAltContext ctx);
  /// Exit a parse tree produced by the [UnaryExprAlt]
  /// labeled alternative in [MicroGoParser.expression].
  /// [ctx] the parse tree
  void exitUnaryExprAlt(UnaryExprAltContext ctx);

  /// Enter a parse tree produced by the [RelExprAlt]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterRelExprAlt(RelExprAltContext ctx);
  /// Exit a parse tree produced by the [RelExprAlt]
  /// labeled alternative in [MicroGoParser.expression].
  /// [ctx] the parse tree
  void exitRelExprAlt(RelExprAltContext ctx);

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

  /// Enter a parse tree produced by [MicroGoParser.multAssignOp].
  /// [ctx] the parse tree
  void enterMultAssignOp(MultAssignOpContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.multAssignOp].
  /// [ctx] the parse tree
  void exitMultAssignOp(MultAssignOpContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.addAssignOp].
  /// [ctx] the parse tree
  void enterAddAssignOp(AddAssignOpContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.addAssignOp].
  /// [ctx] the parse tree
  void exitAddAssignOp(AddAssignOpContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.equalAssignOp].
  /// [ctx] the parse tree
  void enterEqualAssignOp(EqualAssignOpContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.equalAssignOp].
  /// [ctx] the parse tree
  void exitEqualAssignOp(EqualAssignOpContext ctx);

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

  /// Enter a parse tree produced by [MicroGoParser.switchCaseClause].
  /// [ctx] the parse tree
  void enterSwitchCaseClause(SwitchCaseClauseContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.switchCaseClause].
  /// [ctx] the parse tree
  void exitSwitchCaseClause(SwitchCaseClauseContext ctx);

  /// Enter a parse tree produced by [MicroGoParser.switchCase].
  /// [ctx] the parse tree
  void enterSwitchCase(SwitchCaseContext ctx);
  /// Exit a parse tree produced by [MicroGoParser.switchCase].
  /// [ctx] the parse tree
  void exitSwitchCase(SwitchCaseContext ctx);

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