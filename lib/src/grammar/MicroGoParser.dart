// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';
import 'dart:io';

import 'MicroGoListener.dart';
import 'MicroGoBaseListener.dart';
import 'MicroGoVisitor.dart';
import 'MicroGoBaseVisitor.dart';

import 'MicroGoBaseParser.dart';

const int RULE_sourceFile = 0,
    RULE_importDeclList = 1,
    RULE_topLevelDeclList = 2,
    RULE_packageClause = 3,
    RULE_packageName = 4,
    RULE_importDecl = 5,
    RULE_importSpecList = 6,
    RULE_importSpec = 7,
    RULE_importPath = 8,
    RULE_topLevelDecl = 9,
    RULE_declaration = 10,
    RULE_constDecl = 11,
    RULE_constSpecList = 12,
    RULE_constSpec = 13,
    RULE_identifierList = 14,
    RULE_identifier = 15,
    RULE_expressionList = 16,
    RULE_typeDecl = 17,
    RULE_typeSpecList = 18,
    RULE_typeSpec = 19,
    RULE_aliasDecl = 20,
    RULE_typeDef = 21,
    RULE_varDecl = 22,
    RULE_varSpecList = 23,
    RULE_varSpec = 24,
    RULE_type = 25,
    RULE_typeName = 26,
    RULE_typeLit = 27,
    RULE_arrayType = 28,
    RULE_arrayLength = 29,
    RULE_elementType = 30,
    RULE_sliceType = 31,
    RULE_structType = 32,
    RULE_fieldDeclList = 33,
    RULE_fieldDecl = 34,
    RULE_embeddedField = 35,
    RULE_pointerType = 36,
    RULE_functionType = 37,
    RULE_signature = 38,
    RULE_result = 39,
    RULE_parameters = 40,
    RULE_parameterList = 41,
    RULE_parameterDecl = 42,
    RULE_interfaceType = 43,
    RULE_methodSpec = 44,
    RULE_methodName = 45,
    RULE_interfaceTypeName = 46,
    RULE_block = 47,
    RULE_statementList = 48,
    RULE_shortVarDecl = 49,
    RULE_functionDecl = 50,
    RULE_functionName = 51,
    RULE_functionBody = 52,
    RULE_methodDecl = 53,
    RULE_operand = 54,
    RULE_literal = 55,
    RULE_basicLit = 56,
    RULE_nilLit = 57,
    RULE_integerLit = 58,
    RULE_decimalLit = 59,
    RULE_binaryLit = 60,
    RULE_octalLit = 61,
    RULE_hexLit = 62,
    RULE_floatLit = 63,
    RULE_decimalFloatLit = 64,
    RULE_hexFloatLit = 65,
    RULE_runeLit = 66,
    RULE_stringLit = 67,
    RULE_rawStringLit = 68,
    RULE_interpretedStringLit = 69,
    RULE_operandName = 70,
    RULE_qualifiedIdent = 71,
    RULE_compositeLit = 72,
    RULE_literalType = 73,
    RULE_literalValue = 74,
    RULE_elementList = 75,
    RULE_keyedElement = 76,
    RULE_key = 77,
    RULE_fieldName = 78,
    RULE_element = 79,
    RULE_functionLit = 80,
    RULE_primaryExpr = 81,
    RULE_selector = 82,
    RULE_index = 83,
    RULE_slice = 84,
    RULE_arguments = 85,
    RULE_methodExpr = 86,
    RULE_expression = 87,
    RULE_unaryExpr = 88,
    RULE_unarypOp = 89,
    RULE_multOp = 90,
    RULE_addOp = 91,
    RULE_relOp = 92,
    RULE_conversion = 93,
    RULE_statement = 94,
    RULE_simpleStmt = 95,
    RULE_emptyStmt = 96,
    RULE_labeledStmt = 97,
    RULE_label = 98,
    RULE_expressionStmt = 99,
    RULE_incDecStmt = 100,
    RULE_assignment = 101,
    RULE_assignOp = 102,
    RULE_ifStmt = 103,
    RULE_switchStmt = 104,
    RULE_exprSwitchStmt = 105,
    RULE_exprCaseClause = 106,
    RULE_exprSwitchCase = 107,
    RULE_typeSwitchStmt = 108,
    RULE_typeSwitchGuard = 109,
    RULE_typeCaseClause = 110,
    RULE_typeSwitchCase = 111,
    RULE_typeList = 112,
    RULE_forStmt = 113,
    RULE_condition = 114,
    RULE_forClause = 115,
    RULE_rangeClause = 116,
    RULE_returnStmt = 117,
    RULE_breakStmt = 118,
    RULE_continueStmt = 119,
    RULE_gotoStmt = 120,
    RULE_fallthroughStmt = 121,
    RULE_eos = 122;

class MicroGoParser extends MicroGoBaseParser {
  static final checkVersion =
      () => RuntimeMetaData.checkVersion('4.8', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache =
      PredictionContextCache();
  static const int TOKEN_BREAK = 1,
      TOKEN_DEFAULT = 2,
      TOKEN_FUNC = 3,
      TOKEN_INTERFACE = 4,
      TOKEN_SELECT = 5,
      TOKEN_CASE = 6,
      TOKEN_GO = 7,
      TOKEN_STRUCT = 8,
      TOKEN_ELSE = 9,
      TOKEN_GOTO = 10,
      TOKEN_PACKAGE = 11,
      TOKEN_SWITCH = 12,
      TOKEN_CONST = 13,
      TOKEN_FALLTHROUGH = 14,
      TOKEN_IF = 15,
      TOKEN_RANGE = 16,
      TOKEN_TYPE = 17,
      TOKEN_CONTINUE = 18,
      TOKEN_FOR = 19,
      TOKEN_IMPORT = 20,
      TOKEN_RETURN = 21,
      TOKEN_VAR = 22,
      TOKEN_NIL = 23,
      TOKEN_IDENTIFIER = 24,
      TOKEN_LSHIFT_ASSIGN = 25,
      TOKEN_RSHIFT_ASSIGN = 26,
      TOKEN_BIT_CLEAR_ASSIGN = 27,
      TOKEN_ELLIPSIS = 28,
      TOKEN_LOGICAL_AND = 29,
      TOKEN_LOGICAL_OR = 30,
      TOKEN_PLUS_PLUS = 31,
      TOKEN_MINUS_MINUS = 32,
      TOKEN_EQUALS = 33,
      TOKEN_NOT_EQUALS = 34,
      TOKEN_LESS_OR_EQUALS = 35,
      TOKEN_GREATER_OR_EQUALS = 36,
      TOKEN_LSHIFT = 37,
      TOKEN_RSHIFT = 38,
      TOKEN_BIT_CLEAR = 39,
      TOKEN_PLUS_ASSGIN = 40,
      TOKEN_MINUS_ASSIGN = 41,
      TOKEN_STAR_ASSIGN = 42,
      TOKEN_DIV_ASSIGN = 43,
      TOKEN_MOD_ASSIGN = 44,
      TOKEN_AND_ASSIGN = 45,
      TOKEN_OR_ASSIGN = 46,
      TOKEN_XOR_ASSIGN = 47,
      TOKEN_SHORT_ASSIGN = 48,
      TOKEN_PLUS = 49,
      TOKEN_MINUS = 50,
      TOKEN_STAR = 51,
      TOKEN_DIV = 52,
      TOKEN_MOD = 53,
      TOKEN_AMPERSAND = 54,
      TOKEN_PIPE = 55,
      TOKEN_CARET = 56,
      TOKEN_L_PAREN = 57,
      TOKEN_R_PAREN = 58,
      TOKEN_L_CURLY = 59,
      TOKEN_R_CURLY = 60,
      TOKEN_L_BRACKET = 61,
      TOKEN_R_BRACKET = 62,
      TOKEN_COMMA = 63,
      TOKEN_SEMI = 64,
      TOKEN_COLON = 65,
      TOKEN_DOT = 66,
      TOKEN_EXCLAMATION = 67,
      TOKEN_LESS = 68,
      TOKEN_GREATER = 69,
      TOKEN_EQUAL = 70,
      TOKEN_UNDERLINE = 71,
      TOKEN_BACKSLASH = 72,
      TOKEN_SINGLE_QUOTE = 73,
      TOKEN_DOUBLE_QUOTE = 74,
      TOKEN_BACK_QUOTE = 75,
      TOKEN_DECIMAL_LIT = 76,
      TOKEN_BINARY_LIT = 77,
      TOKEN_OCTAL_LIT = 78,
      TOKEN_HEX_LIT = 79,
      TOKEN_DECIMAL_FLOAT_LIT = 80,
      TOKEN_HEX_FLOAT_LIT = 81,
      TOKEN_RUNE_LIT = 82,
      TOKEN_RAW_STRING_LIT = 83,
      TOKEN_INTERPRETED_STRING_LIT = 84,
      TOKEN_WS = 85,
      TOKEN_COMMENT = 86,
      TOKEN_TERMINATOR = 87,
      TOKEN_LINE_COMMENT = 88;

  @override
  final List<String> ruleNames = [
    'sourceFile',
    'importDeclList',
    'topLevelDeclList',
    'packageClause',
    'packageName',
    'importDecl',
    'importSpecList',
    'importSpec',
    'importPath',
    'topLevelDecl',
    'declaration',
    'constDecl',
    'constSpecList',
    'constSpec',
    'identifierList',
    'identifier',
    'expressionList',
    'typeDecl',
    'typeSpecList',
    'typeSpec',
    'aliasDecl',
    'typeDef',
    'varDecl',
    'varSpecList',
    'varSpec',
    'type',
    'typeName',
    'typeLit',
    'arrayType',
    'arrayLength',
    'elementType',
    'sliceType',
    'structType',
    'fieldDeclList',
    'fieldDecl',
    'embeddedField',
    'pointerType',
    'functionType',
    'signature',
    'result',
    'parameters',
    'parameterList',
    'parameterDecl',
    'interfaceType',
    'methodSpec',
    'methodName',
    'interfaceTypeName',
    'block',
    'statementList',
    'shortVarDecl',
    'functionDecl',
    'functionName',
    'functionBody',
    'methodDecl',
    'operand',
    'literal',
    'basicLit',
    'nilLit',
    'integerLit',
    'decimalLit',
    'binaryLit',
    'octalLit',
    'hexLit',
    'floatLit',
    'decimalFloatLit',
    'hexFloatLit',
    'runeLit',
    'stringLit',
    'rawStringLit',
    'interpretedStringLit',
    'operandName',
    'qualifiedIdent',
    'compositeLit',
    'literalType',
    'literalValue',
    'elementList',
    'keyedElement',
    'key',
    'fieldName',
    'element',
    'functionLit',
    'primaryExpr',
    'selector',
    'index',
    'slice',
    'arguments',
    'methodExpr',
    'expression',
    'unaryExpr',
    'unarypOp',
    'multOp',
    'addOp',
    'relOp',
    'conversion',
    'statement',
    'simpleStmt',
    'emptyStmt',
    'labeledStmt',
    'label',
    'expressionStmt',
    'incDecStmt',
    'assignment',
    'assignOp',
    'ifStmt',
    'switchStmt',
    'exprSwitchStmt',
    'exprCaseClause',
    'exprSwitchCase',
    'typeSwitchStmt',
    'typeSwitchGuard',
    'typeCaseClause',
    'typeSwitchCase',
    'typeList',
    'forStmt',
    'condition',
    'forClause',
    'rangeClause',
    'returnStmt',
    'breakStmt',
    'continueStmt',
    'gotoStmt',
    'fallthroughStmt',
    'eos'
  ];

  static final List<String> _LITERAL_NAMES = [
    null,
    "'break'",
    "'default'",
    "'func'",
    "'interface'",
    "'select'",
    "'case'",
    "'go'",
    "'struct'",
    "'else'",
    "'goto'",
    "'package'",
    "'switch'",
    "'const'",
    "'fallthrough'",
    "'if'",
    "'range'",
    "'type'",
    "'continue'",
    "'for'",
    "'import'",
    "'return'",
    "'var'",
    "'nil'",
    null,
    "'<<='",
    "'>>='",
    "'&^='",
    "'...'",
    "'&&'",
    "'||'",
    "'++'",
    "'--'",
    "'=='",
    "'!='",
    "'<='",
    "'>='",
    "'<<'",
    "'>>'",
    "'&^'",
    "'+='",
    "'-='",
    "'*='",
    "'/='",
    "'%='",
    "'&='",
    "'|='",
    "'^='",
    "':='",
    "'+'",
    "'-'",
    "'*'",
    "'/'",
    "'%'",
    "'&'",
    "'|'",
    "'^'",
    "'('",
    "')'",
    "'{'",
    "'}'",
    "'['",
    "']'",
    "','",
    "';'",
    "':'",
    "'.'",
    "'!'",
    "'<'",
    "'>'",
    "'='",
    "'_'",
    "'\\'",
    "'''",
    "'\"'",
    "'`'"
  ];
  static final List<String> _SYMBOLIC_NAMES = [
    null,
    "BREAK",
    "DEFAULT",
    "FUNC",
    "INTERFACE",
    "SELECT",
    "CASE",
    "GO",
    "STRUCT",
    "ELSE",
    "GOTO",
    "PACKAGE",
    "SWITCH",
    "CONST",
    "FALLTHROUGH",
    "IF",
    "RANGE",
    "TYPE",
    "CONTINUE",
    "FOR",
    "IMPORT",
    "RETURN",
    "VAR",
    "NIL",
    "IDENTIFIER",
    "LSHIFT_ASSIGN",
    "RSHIFT_ASSIGN",
    "BIT_CLEAR_ASSIGN",
    "ELLIPSIS",
    "LOGICAL_AND",
    "LOGICAL_OR",
    "PLUS_PLUS",
    "MINUS_MINUS",
    "EQUALS",
    "NOT_EQUALS",
    "LESS_OR_EQUALS",
    "GREATER_OR_EQUALS",
    "LSHIFT",
    "RSHIFT",
    "BIT_CLEAR",
    "PLUS_ASSGIN",
    "MINUS_ASSIGN",
    "STAR_ASSIGN",
    "DIV_ASSIGN",
    "MOD_ASSIGN",
    "AND_ASSIGN",
    "OR_ASSIGN",
    "XOR_ASSIGN",
    "SHORT_ASSIGN",
    "PLUS",
    "MINUS",
    "STAR",
    "DIV",
    "MOD",
    "AMPERSAND",
    "PIPE",
    "CARET",
    "L_PAREN",
    "R_PAREN",
    "L_CURLY",
    "R_CURLY",
    "L_BRACKET",
    "R_BRACKET",
    "COMMA",
    "SEMI",
    "COLON",
    "DOT",
    "EXCLAMATION",
    "LESS",
    "GREATER",
    "EQUAL",
    "UNDERLINE",
    "BACKSLASH",
    "SINGLE_QUOTE",
    "DOUBLE_QUOTE",
    "BACK_QUOTE",
    "DECIMAL_LIT",
    "BINARY_LIT",
    "OCTAL_LIT",
    "HEX_LIT",
    "DECIMAL_FLOAT_LIT",
    "HEX_FLOAT_LIT",
    "RUNE_LIT",
    "RAW_STRING_LIT",
    "INTERPRETED_STRING_LIT",
    "WS",
    "COMMENT",
    "TERMINATOR",
    "LINE_COMMENT"
  ];
  static final Vocabulary VOCABULARY =
      VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'MicroGo.g4';

  @override
  String get serializedATN => _serializedATN;

  @override
  ATN getATN() {
    return _ATN;
  }

  MicroGoParser(TokenStream input) : super(input) {
    interpreter =
        ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  SourceFileContext sourceFile() {
    dynamic _localctx = SourceFileContext(context, state);
    enterRule(_localctx, 0, RULE_sourceFile);
    try {
      enterOuterAlt(_localctx, 1);
      state = 246;
      packageClause();
      state = 247;
      eos();
      state = 248;
      importDeclList();
      state = 249;
      topLevelDeclList();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ImportDeclListContext importDeclList() {
    dynamic _localctx = ImportDeclListContext(context, state);
    enterRule(_localctx, 2, RULE_importDeclList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 256;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_IMPORT) {
        state = 251;
        importDecl();
        state = 252;
        eos();
        state = 258;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TopLevelDeclListContext topLevelDeclList() {
    dynamic _localctx = TopLevelDeclListContext(context, state);
    enterRule(_localctx, 4, RULE_topLevelDeclList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 264;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 &&
          ((BigInt.one << _la) &
                  ((BigInt.one << TOKEN_FUNC) |
                      (BigInt.one << TOKEN_CONST) |
                      (BigInt.one << TOKEN_TYPE) |
                      (BigInt.one << TOKEN_VAR))) !=
              BigInt.zero)) {
        state = 259;
        topLevelDecl();
        state = 260;
        eos();
        state = 266;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PackageClauseContext packageClause() {
    dynamic _localctx = PackageClauseContext(context, state);
    enterRule(_localctx, 6, RULE_packageClause);
    try {
      enterOuterAlt(_localctx, 1);
      state = 267;
      match(TOKEN_PACKAGE);
      state = 268;
      packageName();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PackageNameContext packageName() {
    dynamic _localctx = PackageNameContext(context, state);
    enterRule(_localctx, 8, RULE_packageName);
    try {
      enterOuterAlt(_localctx, 1);
      state = 270;
      match(TOKEN_IDENTIFIER);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ImportDeclContext importDecl() {
    dynamic _localctx = ImportDeclContext(context, state);
    enterRule(_localctx, 10, RULE_importDecl);
    try {
      state = 279;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 2, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 272;
          match(TOKEN_IMPORT);
          state = 273;
          importSpec();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 274;
          match(TOKEN_IMPORT);
          state = 275;
          match(TOKEN_L_PAREN);
          state = 276;
          importSpecList();
          state = 277;
          match(TOKEN_R_PAREN);
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ImportSpecListContext importSpecList() {
    dynamic _localctx = ImportSpecListContext(context, state);
    enterRule(_localctx, 12, RULE_importSpecList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 286;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (((((_la - 24)) & ~0x3f) == 0 &&
          ((BigInt.one << (_la - 24)) &
                  ((BigInt.one << (TOKEN_IDENTIFIER - 24)) |
                      (BigInt.one << (TOKEN_RAW_STRING_LIT - 24)) |
                      (BigInt.one << (TOKEN_INTERPRETED_STRING_LIT - 24)))) !=
              BigInt.zero)) {
        state = 281;
        importSpec();
        state = 282;
        eos();
        state = 288;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ImportSpecContext importSpec() {
    dynamic _localctx = ImportSpecContext(context, state);
    enterRule(_localctx, 14, RULE_importSpec);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 290;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_IDENTIFIER) {
        state = 289;
        packageName();
      }

      state = 292;
      importPath();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ImportPathContext importPath() {
    dynamic _localctx = ImportPathContext(context, state);
    enterRule(_localctx, 16, RULE_importPath);
    try {
      enterOuterAlt(_localctx, 1);
      state = 294;
      stringLit();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TopLevelDeclContext topLevelDecl() {
    dynamic _localctx = TopLevelDeclContext(context, state);
    enterRule(_localctx, 18, RULE_topLevelDecl);
    try {
      state = 299;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 5, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 296;
          declaration();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 297;
          functionDecl();
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 298;
          methodDecl();
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DeclarationContext declaration() {
    dynamic _localctx = DeclarationContext(context, state);
    enterRule(_localctx, 20, RULE_declaration);
    try {
      state = 304;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_CONST:
          enterOuterAlt(_localctx, 1);
          state = 301;
          constDecl();
          break;
        case TOKEN_TYPE:
          enterOuterAlt(_localctx, 2);
          state = 302;
          typeDecl();
          break;
        case TOKEN_VAR:
          enterOuterAlt(_localctx, 3);
          state = 303;
          varDecl();
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ConstDeclContext constDecl() {
    dynamic _localctx = ConstDeclContext(context, state);
    enterRule(_localctx, 22, RULE_constDecl);
    try {
      enterOuterAlt(_localctx, 1);
      state = 306;
      match(TOKEN_CONST);
      state = 312;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_IDENTIFIER:
          state = 307;
          constSpec();
          break;
        case TOKEN_L_PAREN:
          state = 308;
          match(TOKEN_L_PAREN);
          state = 309;
          constSpecList();
          state = 310;
          match(TOKEN_R_PAREN);
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ConstSpecListContext constSpecList() {
    dynamic _localctx = ConstSpecListContext(context, state);
    enterRule(_localctx, 24, RULE_constSpecList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 319;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_IDENTIFIER) {
        state = 314;
        constSpec();
        state = 315;
        eos();
        state = 321;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ConstSpecContext constSpec() {
    dynamic _localctx = ConstSpecContext(context, state);
    enterRule(_localctx, 26, RULE_constSpec);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 322;
      identifierList();
      state = 328;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 10, context)) {
        case 1:
          state = 324;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_FUNC) |
                          (BigInt.one << TOKEN_INTERFACE) |
                          (BigInt.one << TOKEN_STRUCT) |
                          (BigInt.one << TOKEN_IDENTIFIER) |
                          (BigInt.one << TOKEN_STAR) |
                          (BigInt.one << TOKEN_L_PAREN) |
                          (BigInt.one << TOKEN_L_BRACKET))) !=
                  BigInt.zero)) {
            state = 323;
            type();
          }

          state = 326;
          match(TOKEN_EQUAL);
          state = 327;
          expressionList();
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  IdentifierListContext identifierList() {
    dynamic _localctx = IdentifierListContext(context, state);
    enterRule(_localctx, 28, RULE_identifierList);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 330;
      identifier();
      state = 335;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 11, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 331;
          match(TOKEN_COMMA);
          state = 332;
          identifier();
        }
        state = 337;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 11, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  IdentifierContext identifier() {
    dynamic _localctx = IdentifierContext(context, state);
    enterRule(_localctx, 30, RULE_identifier);
    try {
      enterOuterAlt(_localctx, 1);
      state = 338;
      match(TOKEN_IDENTIFIER);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExpressionListContext expressionList() {
    dynamic _localctx = ExpressionListContext(context, state);
    enterRule(_localctx, 32, RULE_expressionList);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 340;
      expression(0);
      state = 345;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 12, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 341;
          match(TOKEN_COMMA);
          state = 342;
          expression(0);
        }
        state = 347;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 12, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeDeclContext typeDecl() {
    dynamic _localctx = TypeDeclContext(context, state);
    enterRule(_localctx, 34, RULE_typeDecl);
    try {
      enterOuterAlt(_localctx, 1);
      state = 348;
      match(TOKEN_TYPE);
      state = 354;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_IDENTIFIER:
          state = 349;
          typeSpec();
          break;
        case TOKEN_L_PAREN:
          state = 350;
          match(TOKEN_L_PAREN);
          state = 351;
          typeSpecList();
          state = 352;
          match(TOKEN_R_PAREN);
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeSpecListContext typeSpecList() {
    dynamic _localctx = TypeSpecListContext(context, state);
    enterRule(_localctx, 36, RULE_typeSpecList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 361;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_IDENTIFIER) {
        state = 356;
        typeSpec();
        state = 357;
        eos();
        state = 363;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeSpecContext typeSpec() {
    dynamic _localctx = TypeSpecContext(context, state);
    enterRule(_localctx, 38, RULE_typeSpec);
    try {
      state = 366;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 15, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 364;
          aliasDecl();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 365;
          typeDef();
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AliasDeclContext aliasDecl() {
    dynamic _localctx = AliasDeclContext(context, state);
    enterRule(_localctx, 40, RULE_aliasDecl);
    try {
      enterOuterAlt(_localctx, 1);
      state = 368;
      match(TOKEN_IDENTIFIER);
      state = 369;
      match(TOKEN_EQUAL);
      state = 370;
      type();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeDefContext typeDef() {
    dynamic _localctx = TypeDefContext(context, state);
    enterRule(_localctx, 42, RULE_typeDef);
    try {
      enterOuterAlt(_localctx, 1);
      state = 372;
      match(TOKEN_IDENTIFIER);
      state = 373;
      type();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  VarDeclContext varDecl() {
    dynamic _localctx = VarDeclContext(context, state);
    enterRule(_localctx, 44, RULE_varDecl);
    try {
      enterOuterAlt(_localctx, 1);
      state = 375;
      match(TOKEN_VAR);
      state = 381;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_IDENTIFIER:
          state = 376;
          varSpec();
          break;
        case TOKEN_L_PAREN:
          state = 377;
          match(TOKEN_L_PAREN);
          state = 378;
          varSpecList();
          state = 379;
          match(TOKEN_R_PAREN);
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  VarSpecListContext varSpecList() {
    dynamic _localctx = VarSpecListContext(context, state);
    enterRule(_localctx, 46, RULE_varSpecList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 388;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_IDENTIFIER) {
        state = 383;
        varSpec();
        state = 384;
        eos();
        state = 390;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  VarSpecContext varSpec() {
    dynamic _localctx = VarSpecContext(context, state);
    enterRule(_localctx, 48, RULE_varSpec);
    try {
      enterOuterAlt(_localctx, 1);
      state = 391;
      identifierList();
      state = 399;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_FUNC:
        case TOKEN_INTERFACE:
        case TOKEN_STRUCT:
        case TOKEN_IDENTIFIER:
        case TOKEN_STAR:
        case TOKEN_L_PAREN:
        case TOKEN_L_BRACKET:
          state = 392;
          type();
          state = 395;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 18, context)) {
            case 1:
              state = 393;
              match(TOKEN_EQUAL);
              state = 394;
              expressionList();
              break;
          }
          break;
        case TOKEN_EQUAL:
          state = 397;
          match(TOKEN_EQUAL);
          state = 398;
          expressionList();
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeContext type() {
    dynamic _localctx = TypeContext(context, state);
    enterRule(_localctx, 50, RULE_type);
    try {
      state = 407;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_IDENTIFIER:
          enterOuterAlt(_localctx, 1);
          state = 401;
          typeName();
          break;
        case TOKEN_FUNC:
        case TOKEN_INTERFACE:
        case TOKEN_STRUCT:
        case TOKEN_STAR:
        case TOKEN_L_BRACKET:
          enterOuterAlt(_localctx, 2);
          state = 402;
          typeLit();
          break;
        case TOKEN_L_PAREN:
          enterOuterAlt(_localctx, 3);
          state = 403;
          match(TOKEN_L_PAREN);
          state = 404;
          type();
          state = 405;
          match(TOKEN_R_PAREN);
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeNameContext typeName() {
    dynamic _localctx = TypeNameContext(context, state);
    enterRule(_localctx, 52, RULE_typeName);
    try {
      state = 411;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 21, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 409;
          identifier();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 410;
          qualifiedIdent();
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeLitContext typeLit() {
    dynamic _localctx = TypeLitContext(context, state);
    enterRule(_localctx, 54, RULE_typeLit);
    try {
      state = 419;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 22, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 413;
          arrayType();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 414;
          structType();
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 415;
          pointerType();
          break;
        case 4:
          enterOuterAlt(_localctx, 4);
          state = 416;
          functionType();
          break;
        case 5:
          enterOuterAlt(_localctx, 5);
          state = 417;
          interfaceType();
          break;
        case 6:
          enterOuterAlt(_localctx, 6);
          state = 418;
          sliceType();
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ArrayTypeContext arrayType() {
    dynamic _localctx = ArrayTypeContext(context, state);
    enterRule(_localctx, 56, RULE_arrayType);
    try {
      enterOuterAlt(_localctx, 1);
      state = 421;
      match(TOKEN_L_BRACKET);
      state = 422;
      arrayLength();
      state = 423;
      match(TOKEN_R_BRACKET);
      state = 424;
      elementType();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ArrayLengthContext arrayLength() {
    dynamic _localctx = ArrayLengthContext(context, state);
    enterRule(_localctx, 58, RULE_arrayLength);
    try {
      enterOuterAlt(_localctx, 1);
      state = 426;
      expression(0);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ElementTypeContext elementType() {
    dynamic _localctx = ElementTypeContext(context, state);
    enterRule(_localctx, 60, RULE_elementType);
    try {
      enterOuterAlt(_localctx, 1);
      state = 428;
      type();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SliceTypeContext sliceType() {
    dynamic _localctx = SliceTypeContext(context, state);
    enterRule(_localctx, 62, RULE_sliceType);
    try {
      enterOuterAlt(_localctx, 1);
      state = 430;
      match(TOKEN_L_BRACKET);
      state = 431;
      match(TOKEN_R_BRACKET);
      state = 432;
      elementType();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  StructTypeContext structType() {
    dynamic _localctx = StructTypeContext(context, state);
    enterRule(_localctx, 64, RULE_structType);
    try {
      enterOuterAlt(_localctx, 1);
      state = 434;
      match(TOKEN_STRUCT);
      state = 435;
      match(TOKEN_L_CURLY);
      state = 436;
      fieldDeclList();
      state = 437;
      match(TOKEN_R_CURLY);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FieldDeclListContext fieldDeclList() {
    dynamic _localctx = FieldDeclListContext(context, state);
    enterRule(_localctx, 66, RULE_fieldDeclList);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 444;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 23, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 439;
          fieldDecl();
          state = 440;
          eos();
        }
        state = 446;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 23, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FieldDeclContext fieldDecl() {
    dynamic _localctx = FieldDeclContext(context, state);
    enterRule(_localctx, 68, RULE_fieldDecl);
    try {
      state = 452;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 24, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 447;
          if (!(noTerminatorBetween(2))) {
            throw FailedPredicateException(this, "noTerminatorBetween(2)");
          }
          state = 448;
          identifierList();
          state = 449;
          type();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 451;
          embeddedField();
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  EmbeddedFieldContext embeddedField() {
    dynamic _localctx = EmbeddedFieldContext(context, state);
    enterRule(_localctx, 70, RULE_embeddedField);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 455;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_STAR) {
        state = 454;
        match(TOKEN_STAR);
      }

      state = 457;
      typeName();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PointerTypeContext pointerType() {
    dynamic _localctx = PointerTypeContext(context, state);
    enterRule(_localctx, 72, RULE_pointerType);
    try {
      enterOuterAlt(_localctx, 1);
      state = 459;
      match(TOKEN_STAR);
      state = 460;
      type();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FunctionTypeContext functionType() {
    dynamic _localctx = FunctionTypeContext(context, state);
    enterRule(_localctx, 74, RULE_functionType);
    try {
      enterOuterAlt(_localctx, 1);
      state = 462;
      match(TOKEN_FUNC);
      state = 463;
      signature();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SignatureContext signature() {
    dynamic _localctx = SignatureContext(context, state);
    enterRule(_localctx, 76, RULE_signature);
    try {
      enterOuterAlt(_localctx, 1);
      state = 465;
      if (!(noTerminatorAfterParams(1))) {
        throw FailedPredicateException(this, "noTerminatorAfterParams(1)");
      }
      state = 466;
      parameters();
      state = 468;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 26, context)) {
        case 1:
          state = 467;
          result();
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ResultContext result() {
    dynamic _localctx = ResultContext(context, state);
    enterRule(_localctx, 78, RULE_result);
    try {
      state = 472;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 27, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 470;
          parameters();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 471;
          type();
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ParametersContext parameters() {
    dynamic _localctx = ParametersContext(context, state);
    enterRule(_localctx, 80, RULE_parameters);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 474;
      match(TOKEN_L_PAREN);
      state = 479;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 &&
          ((BigInt.one << _la) &
                  ((BigInt.one << TOKEN_FUNC) |
                      (BigInt.one << TOKEN_INTERFACE) |
                      (BigInt.one << TOKEN_STRUCT) |
                      (BigInt.one << TOKEN_IDENTIFIER) |
                      (BigInt.one << TOKEN_ELLIPSIS) |
                      (BigInt.one << TOKEN_STAR) |
                      (BigInt.one << TOKEN_L_PAREN) |
                      (BigInt.one << TOKEN_L_BRACKET))) !=
              BigInt.zero)) {
        state = 475;
        parameterList();
        state = 477;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_COMMA) {
          state = 476;
          match(TOKEN_COMMA);
        }
      }

      state = 481;
      match(TOKEN_R_PAREN);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ParameterListContext parameterList() {
    dynamic _localctx = ParameterListContext(context, state);
    enterRule(_localctx, 82, RULE_parameterList);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 483;
      parameterDecl();
      state = 488;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 30, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 484;
          match(TOKEN_COMMA);
          state = 485;
          parameterDecl();
        }
        state = 490;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 30, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ParameterDeclContext parameterDecl() {
    dynamic _localctx = ParameterDeclContext(context, state);
    enterRule(_localctx, 84, RULE_parameterDecl);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 492;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 31, context)) {
        case 1:
          state = 491;
          identifierList();
          break;
      }
      state = 495;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_ELLIPSIS) {
        state = 494;
        match(TOKEN_ELLIPSIS);
      }

      state = 497;
      type();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  InterfaceTypeContext interfaceType() {
    dynamic _localctx = InterfaceTypeContext(context, state);
    enterRule(_localctx, 86, RULE_interfaceType);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 499;
      match(TOKEN_INTERFACE);
      state = 500;
      match(TOKEN_L_CURLY);
      state = 509;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 34, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 503;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 33, context)) {
            case 1:
              state = 501;
              methodSpec();
              break;
            case 2:
              state = 502;
              interfaceTypeName();
              break;
          }
          state = 505;
          eos();
        }
        state = 511;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 34, context);
      }
      state = 512;
      match(TOKEN_R_CURLY);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  MethodSpecContext methodSpec() {
    dynamic _localctx = MethodSpecContext(context, state);
    enterRule(_localctx, 88, RULE_methodSpec);
    try {
      enterOuterAlt(_localctx, 1);
      state = 514;
      if (!(noTerminatorAfterParams(2))) {
        throw FailedPredicateException(this, "noTerminatorAfterParams(2)");
      }
      state = 515;
      methodName();
      state = 516;
      signature();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  MethodNameContext methodName() {
    dynamic _localctx = MethodNameContext(context, state);
    enterRule(_localctx, 90, RULE_methodName);
    try {
      enterOuterAlt(_localctx, 1);
      state = 518;
      match(TOKEN_IDENTIFIER);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  InterfaceTypeNameContext interfaceTypeName() {
    dynamic _localctx = InterfaceTypeNameContext(context, state);
    enterRule(_localctx, 92, RULE_interfaceTypeName);
    try {
      enterOuterAlt(_localctx, 1);
      state = 520;
      typeName();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BlockContext block() {
    dynamic _localctx = BlockContext(context, state);
    enterRule(_localctx, 94, RULE_block);
    try {
      enterOuterAlt(_localctx, 1);
      state = 522;
      match(TOKEN_L_CURLY);
      state = 523;
      statementList();
      state = 524;
      match(TOKEN_R_CURLY);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  StatementListContext statementList() {
    dynamic _localctx = StatementListContext(context, state);
    enterRule(_localctx, 96, RULE_statementList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 531;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_BREAK) |
                          (BigInt.one << TOKEN_FUNC) |
                          (BigInt.one << TOKEN_INTERFACE) |
                          (BigInt.one << TOKEN_STRUCT) |
                          (BigInt.one << TOKEN_GOTO) |
                          (BigInt.one << TOKEN_SWITCH) |
                          (BigInt.one << TOKEN_CONST) |
                          (BigInt.one << TOKEN_FALLTHROUGH) |
                          (BigInt.one << TOKEN_IF) |
                          (BigInt.one << TOKEN_TYPE) |
                          (BigInt.one << TOKEN_CONTINUE) |
                          (BigInt.one << TOKEN_FOR) |
                          (BigInt.one << TOKEN_RETURN) |
                          (BigInt.one << TOKEN_VAR) |
                          (BigInt.one << TOKEN_NIL) |
                          (BigInt.one << TOKEN_IDENTIFIER) |
                          (BigInt.one << TOKEN_PLUS) |
                          (BigInt.one << TOKEN_MINUS) |
                          (BigInt.one << TOKEN_STAR) |
                          (BigInt.one << TOKEN_AMPERSAND) |
                          (BigInt.one << TOKEN_CARET) |
                          (BigInt.one << TOKEN_L_PAREN) |
                          (BigInt.one << TOKEN_L_CURLY) |
                          (BigInt.one << TOKEN_L_BRACKET))) !=
                  BigInt.zero) ||
          ((((_la - 64)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 64)) &
                      ((BigInt.one << (TOKEN_SEMI - 64)) |
                          (BigInt.one << (TOKEN_EXCLAMATION - 64)) |
                          (BigInt.one << (TOKEN_DECIMAL_LIT - 64)) |
                          (BigInt.one << (TOKEN_BINARY_LIT - 64)) |
                          (BigInt.one << (TOKEN_OCTAL_LIT - 64)) |
                          (BigInt.one << (TOKEN_HEX_LIT - 64)) |
                          (BigInt.one << (TOKEN_DECIMAL_FLOAT_LIT - 64)) |
                          (BigInt.one << (TOKEN_HEX_FLOAT_LIT - 64)) |
                          (BigInt.one << (TOKEN_RUNE_LIT - 64)) |
                          (BigInt.one << (TOKEN_RAW_STRING_LIT - 64)) |
                          (BigInt.one <<
                              (TOKEN_INTERPRETED_STRING_LIT - 64)))) !=
                  BigInt.zero)) {
        state = 526;
        statement();
        state = 527;
        eos();
        state = 533;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ShortVarDeclContext shortVarDecl() {
    dynamic _localctx = ShortVarDeclContext(context, state);
    enterRule(_localctx, 98, RULE_shortVarDecl);
    try {
      enterOuterAlt(_localctx, 1);
      state = 534;
      identifierList();
      state = 535;
      match(TOKEN_SHORT_ASSIGN);
      state = 536;
      expressionList();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FunctionDeclContext functionDecl() {
    dynamic _localctx = FunctionDeclContext(context, state);
    enterRule(_localctx, 100, RULE_functionDecl);
    try {
      enterOuterAlt(_localctx, 1);
      state = 538;
      match(TOKEN_FUNC);
      state = 539;
      functionName();
      state = 540;
      signature();
      state = 542;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 36, context)) {
        case 1:
          state = 541;
          functionBody();
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FunctionNameContext functionName() {
    dynamic _localctx = FunctionNameContext(context, state);
    enterRule(_localctx, 102, RULE_functionName);
    try {
      enterOuterAlt(_localctx, 1);
      state = 544;
      match(TOKEN_IDENTIFIER);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FunctionBodyContext functionBody() {
    dynamic _localctx = FunctionBodyContext(context, state);
    enterRule(_localctx, 104, RULE_functionBody);
    try {
      enterOuterAlt(_localctx, 1);
      state = 546;
      block();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  MethodDeclContext methodDecl() {
    dynamic _localctx = MethodDeclContext(context, state);
    enterRule(_localctx, 106, RULE_methodDecl);
    try {
      enterOuterAlt(_localctx, 1);
      state = 548;
      match(TOKEN_FUNC);
      state = 549;
      parameters();
      state = 550;
      methodName();
      state = 551;
      signature();
      state = 553;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 37, context)) {
        case 1:
          state = 552;
          functionBody();
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  OperandContext operand() {
    dynamic _localctx = OperandContext(context, state);
    enterRule(_localctx, 108, RULE_operand);
    try {
      state = 561;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 38, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 555;
          literal();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 556;
          operandName();
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 557;
          match(TOKEN_L_PAREN);
          state = 558;
          expression(0);
          state = 559;
          match(TOKEN_R_PAREN);
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  LiteralContext literal() {
    dynamic _localctx = LiteralContext(context, state);
    enterRule(_localctx, 110, RULE_literal);
    try {
      state = 566;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_NIL:
        case TOKEN_DECIMAL_LIT:
        case TOKEN_BINARY_LIT:
        case TOKEN_OCTAL_LIT:
        case TOKEN_HEX_LIT:
        case TOKEN_DECIMAL_FLOAT_LIT:
        case TOKEN_HEX_FLOAT_LIT:
        case TOKEN_RUNE_LIT:
        case TOKEN_RAW_STRING_LIT:
        case TOKEN_INTERPRETED_STRING_LIT:
          enterOuterAlt(_localctx, 1);
          state = 563;
          basicLit();
          break;
        case TOKEN_STRUCT:
        case TOKEN_IDENTIFIER:
        case TOKEN_L_BRACKET:
          enterOuterAlt(_localctx, 2);
          state = 564;
          compositeLit();
          break;
        case TOKEN_FUNC:
          enterOuterAlt(_localctx, 3);
          state = 565;
          functionLit();
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BasicLitContext basicLit() {
    dynamic _localctx = BasicLitContext(context, state);
    enterRule(_localctx, 112, RULE_basicLit);
    try {
      state = 573;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_NIL:
          enterOuterAlt(_localctx, 1);
          state = 568;
          nilLit();
          break;
        case TOKEN_DECIMAL_LIT:
        case TOKEN_BINARY_LIT:
        case TOKEN_OCTAL_LIT:
        case TOKEN_HEX_LIT:
          enterOuterAlt(_localctx, 2);
          state = 569;
          integerLit();
          break;
        case TOKEN_DECIMAL_FLOAT_LIT:
        case TOKEN_HEX_FLOAT_LIT:
          enterOuterAlt(_localctx, 3);
          state = 570;
          floatLit();
          break;
        case TOKEN_RUNE_LIT:
          enterOuterAlt(_localctx, 4);
          state = 571;
          runeLit();
          break;
        case TOKEN_RAW_STRING_LIT:
        case TOKEN_INTERPRETED_STRING_LIT:
          enterOuterAlt(_localctx, 5);
          state = 572;
          stringLit();
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  NilLitContext nilLit() {
    dynamic _localctx = NilLitContext(context, state);
    enterRule(_localctx, 114, RULE_nilLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 575;
      match(TOKEN_NIL);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  IntegerLitContext integerLit() {
    dynamic _localctx = IntegerLitContext(context, state);
    enterRule(_localctx, 116, RULE_integerLit);
    try {
      state = 581;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_DECIMAL_LIT:
          enterOuterAlt(_localctx, 1);
          state = 577;
          decimalLit();
          break;
        case TOKEN_BINARY_LIT:
          enterOuterAlt(_localctx, 2);
          state = 578;
          binaryLit();
          break;
        case TOKEN_OCTAL_LIT:
          enterOuterAlt(_localctx, 3);
          state = 579;
          octalLit();
          break;
        case TOKEN_HEX_LIT:
          enterOuterAlt(_localctx, 4);
          state = 580;
          hexLit();
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DecimalLitContext decimalLit() {
    dynamic _localctx = DecimalLitContext(context, state);
    enterRule(_localctx, 118, RULE_decimalLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 583;
      match(TOKEN_DECIMAL_LIT);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BinaryLitContext binaryLit() {
    dynamic _localctx = BinaryLitContext(context, state);
    enterRule(_localctx, 120, RULE_binaryLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 585;
      match(TOKEN_BINARY_LIT);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  OctalLitContext octalLit() {
    dynamic _localctx = OctalLitContext(context, state);
    enterRule(_localctx, 122, RULE_octalLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 587;
      match(TOKEN_OCTAL_LIT);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  HexLitContext hexLit() {
    dynamic _localctx = HexLitContext(context, state);
    enterRule(_localctx, 124, RULE_hexLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 589;
      match(TOKEN_HEX_LIT);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FloatLitContext floatLit() {
    dynamic _localctx = FloatLitContext(context, state);
    enterRule(_localctx, 126, RULE_floatLit);
    try {
      state = 593;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_DECIMAL_FLOAT_LIT:
          enterOuterAlt(_localctx, 1);
          state = 591;
          decimalFloatLit();
          break;
        case TOKEN_HEX_FLOAT_LIT:
          enterOuterAlt(_localctx, 2);
          state = 592;
          hexFloatLit();
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DecimalFloatLitContext decimalFloatLit() {
    dynamic _localctx = DecimalFloatLitContext(context, state);
    enterRule(_localctx, 128, RULE_decimalFloatLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 595;
      match(TOKEN_DECIMAL_FLOAT_LIT);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  HexFloatLitContext hexFloatLit() {
    dynamic _localctx = HexFloatLitContext(context, state);
    enterRule(_localctx, 130, RULE_hexFloatLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 597;
      match(TOKEN_HEX_FLOAT_LIT);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  RuneLitContext runeLit() {
    dynamic _localctx = RuneLitContext(context, state);
    enterRule(_localctx, 132, RULE_runeLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 599;
      match(TOKEN_RUNE_LIT);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  StringLitContext stringLit() {
    dynamic _localctx = StringLitContext(context, state);
    enterRule(_localctx, 134, RULE_stringLit);
    try {
      state = 603;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_RAW_STRING_LIT:
          enterOuterAlt(_localctx, 1);
          state = 601;
          rawStringLit();
          break;
        case TOKEN_INTERPRETED_STRING_LIT:
          enterOuterAlt(_localctx, 2);
          state = 602;
          interpretedStringLit();
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  RawStringLitContext rawStringLit() {
    dynamic _localctx = RawStringLitContext(context, state);
    enterRule(_localctx, 136, RULE_rawStringLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 605;
      match(TOKEN_RAW_STRING_LIT);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  InterpretedStringLitContext interpretedStringLit() {
    dynamic _localctx = InterpretedStringLitContext(context, state);
    enterRule(_localctx, 138, RULE_interpretedStringLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 607;
      match(TOKEN_INTERPRETED_STRING_LIT);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  OperandNameContext operandName() {
    dynamic _localctx = OperandNameContext(context, state);
    enterRule(_localctx, 140, RULE_operandName);
    try {
      state = 611;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 44, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 609;
          identifier();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 610;
          qualifiedIdent();
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  QualifiedIdentContext qualifiedIdent() {
    dynamic _localctx = QualifiedIdentContext(context, state);
    enterRule(_localctx, 142, RULE_qualifiedIdent);
    try {
      enterOuterAlt(_localctx, 1);
      state = 613;
      packageName();
      state = 614;
      match(TOKEN_DOT);
      state = 615;
      match(TOKEN_IDENTIFIER);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CompositeLitContext compositeLit() {
    dynamic _localctx = CompositeLitContext(context, state);
    enterRule(_localctx, 144, RULE_compositeLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 617;
      literalType();
      state = 618;
      literalValue();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  LiteralTypeContext literalType() {
    dynamic _localctx = LiteralTypeContext(context, state);
    enterRule(_localctx, 146, RULE_literalType);
    try {
      state = 628;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 45, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 620;
          structType();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 621;
          arrayType();
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 622;
          match(TOKEN_L_BRACKET);
          state = 623;
          match(TOKEN_ELLIPSIS);
          state = 624;
          match(TOKEN_R_BRACKET);
          state = 625;
          elementType();
          break;
        case 4:
          enterOuterAlt(_localctx, 4);
          state = 626;
          sliceType();
          break;
        case 5:
          enterOuterAlt(_localctx, 5);
          state = 627;
          typeName();
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  LiteralValueContext literalValue() {
    dynamic _localctx = LiteralValueContext(context, state);
    enterRule(_localctx, 148, RULE_literalValue);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 630;
      match(TOKEN_L_CURLY);
      state = 635;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_FUNC) |
                          (BigInt.one << TOKEN_INTERFACE) |
                          (BigInt.one << TOKEN_STRUCT) |
                          (BigInt.one << TOKEN_NIL) |
                          (BigInt.one << TOKEN_IDENTIFIER) |
                          (BigInt.one << TOKEN_PLUS) |
                          (BigInt.one << TOKEN_MINUS) |
                          (BigInt.one << TOKEN_STAR) |
                          (BigInt.one << TOKEN_AMPERSAND) |
                          (BigInt.one << TOKEN_CARET) |
                          (BigInt.one << TOKEN_L_PAREN) |
                          (BigInt.one << TOKEN_L_CURLY) |
                          (BigInt.one << TOKEN_L_BRACKET))) !=
                  BigInt.zero) ||
          ((((_la - 67)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 67)) &
                      ((BigInt.one << (TOKEN_EXCLAMATION - 67)) |
                          (BigInt.one << (TOKEN_DECIMAL_LIT - 67)) |
                          (BigInt.one << (TOKEN_BINARY_LIT - 67)) |
                          (BigInt.one << (TOKEN_OCTAL_LIT - 67)) |
                          (BigInt.one << (TOKEN_HEX_LIT - 67)) |
                          (BigInt.one << (TOKEN_DECIMAL_FLOAT_LIT - 67)) |
                          (BigInt.one << (TOKEN_HEX_FLOAT_LIT - 67)) |
                          (BigInt.one << (TOKEN_RUNE_LIT - 67)) |
                          (BigInt.one << (TOKEN_RAW_STRING_LIT - 67)) |
                          (BigInt.one <<
                              (TOKEN_INTERPRETED_STRING_LIT - 67)))) !=
                  BigInt.zero)) {
        state = 631;
        elementList();
        state = 633;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_COMMA) {
          state = 632;
          match(TOKEN_COMMA);
        }
      }

      state = 637;
      match(TOKEN_R_CURLY);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ElementListContext elementList() {
    dynamic _localctx = ElementListContext(context, state);
    enterRule(_localctx, 150, RULE_elementList);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 639;
      keyedElement();
      state = 644;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 48, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 640;
          match(TOKEN_COMMA);
          state = 641;
          keyedElement();
        }
        state = 646;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 48, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  KeyedElementContext keyedElement() {
    dynamic _localctx = KeyedElementContext(context, state);
    enterRule(_localctx, 152, RULE_keyedElement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 650;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 49, context)) {
        case 1:
          state = 647;
          key();
          state = 648;
          match(TOKEN_COLON);
          break;
      }
      state = 652;
      element();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  KeyContext key() {
    dynamic _localctx = KeyContext(context, state);
    enterRule(_localctx, 154, RULE_key);
    try {
      state = 657;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 50, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 654;
          fieldName();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 655;
          expression(0);
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 656;
          literalValue();
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FieldNameContext fieldName() {
    dynamic _localctx = FieldNameContext(context, state);
    enterRule(_localctx, 156, RULE_fieldName);
    try {
      enterOuterAlt(_localctx, 1);
      state = 659;
      match(TOKEN_IDENTIFIER);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ElementContext element() {
    dynamic _localctx = ElementContext(context, state);
    enterRule(_localctx, 158, RULE_element);
    try {
      state = 663;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_FUNC:
        case TOKEN_INTERFACE:
        case TOKEN_STRUCT:
        case TOKEN_NIL:
        case TOKEN_IDENTIFIER:
        case TOKEN_PLUS:
        case TOKEN_MINUS:
        case TOKEN_STAR:
        case TOKEN_AMPERSAND:
        case TOKEN_CARET:
        case TOKEN_L_PAREN:
        case TOKEN_L_BRACKET:
        case TOKEN_EXCLAMATION:
        case TOKEN_DECIMAL_LIT:
        case TOKEN_BINARY_LIT:
        case TOKEN_OCTAL_LIT:
        case TOKEN_HEX_LIT:
        case TOKEN_DECIMAL_FLOAT_LIT:
        case TOKEN_HEX_FLOAT_LIT:
        case TOKEN_RUNE_LIT:
        case TOKEN_RAW_STRING_LIT:
        case TOKEN_INTERPRETED_STRING_LIT:
          enterOuterAlt(_localctx, 1);
          state = 661;
          expression(0);
          break;
        case TOKEN_L_CURLY:
          enterOuterAlt(_localctx, 2);
          state = 662;
          literalValue();
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FunctionLitContext functionLit() {
    dynamic _localctx = FunctionLitContext(context, state);
    enterRule(_localctx, 160, RULE_functionLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 665;
      match(TOKEN_FUNC);
      state = 666;
      signature();
      state = 667;
      functionBody();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PrimaryExprContext primaryExpr([int _p = 0]) {
    final _parentctx = context;
    final _parentState = state;
    dynamic _localctx = PrimaryExprContext(context, _parentState);
    var _prevctx = _localctx;
    var _startState = 162;
    enterRecursionRule(_localctx, 162, RULE_primaryExpr, _p);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 673;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 52, context)) {
        case 1:
          _localctx = OperandExprAltContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;

          state = 670;
          operand();
          break;
        case 2:
          _localctx = ConversionExprAltContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 671;
          conversion();
          break;
        case 3:
          _localctx = MethodExprAltContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 672;
          methodExpr();
          break;
      }
      context.stop = tokenStream.LT(-1);
      state = 685;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 54, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 683;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 53, context)) {
            case 1:
              _localctx = SelectorExprAltContext(
                  new PrimaryExprContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_primaryExpr);
              state = 675;
              if (!(precpred(context, 4))) {
                throw FailedPredicateException(this, "precpred(context, 4)");
              }
              state = 676;
              selector();
              break;
            case 2:
              _localctx = IndexExprAltContext(
                  new PrimaryExprContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_primaryExpr);
              state = 677;
              if (!(precpred(context, 3))) {
                throw FailedPredicateException(this, "precpred(context, 3)");
              }
              state = 678;
              index();
              break;
            case 3:
              _localctx = SliceExprAltContext(
                  new PrimaryExprContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_primaryExpr);
              state = 679;
              if (!(precpred(context, 2))) {
                throw FailedPredicateException(this, "precpred(context, 2)");
              }
              state = 680;
              slice();
              break;
            case 4:
              _localctx = ArgumentsExprAltContext(
                  new PrimaryExprContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_primaryExpr);
              state = 681;
              if (!(precpred(context, 1))) {
                throw FailedPredicateException(this, "precpred(context, 1)");
              }
              state = 682;
              arguments();
              break;
          }
        }
        state = 687;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 54, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      unrollRecursionContexts(_parentctx);
    }
    return _localctx;
  }

  SelectorContext selector() {
    dynamic _localctx = SelectorContext(context, state);
    enterRule(_localctx, 164, RULE_selector);
    try {
      enterOuterAlt(_localctx, 1);
      state = 688;
      match(TOKEN_DOT);
      state = 689;
      match(TOKEN_IDENTIFIER);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  IndexContext index() {
    dynamic _localctx = IndexContext(context, state);
    enterRule(_localctx, 166, RULE_index);
    try {
      enterOuterAlt(_localctx, 1);
      state = 691;
      match(TOKEN_L_BRACKET);
      state = 692;
      expression(0);
      state = 693;
      match(TOKEN_R_BRACKET);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SliceContext slice() {
    dynamic _localctx = SliceContext(context, state);
    enterRule(_localctx, 168, RULE_slice);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 695;
      match(TOKEN_L_BRACKET);
      state = 697;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_FUNC) |
                          (BigInt.one << TOKEN_INTERFACE) |
                          (BigInt.one << TOKEN_STRUCT) |
                          (BigInt.one << TOKEN_NIL) |
                          (BigInt.one << TOKEN_IDENTIFIER) |
                          (BigInt.one << TOKEN_PLUS) |
                          (BigInt.one << TOKEN_MINUS) |
                          (BigInt.one << TOKEN_STAR) |
                          (BigInt.one << TOKEN_AMPERSAND) |
                          (BigInt.one << TOKEN_CARET) |
                          (BigInt.one << TOKEN_L_PAREN) |
                          (BigInt.one << TOKEN_L_BRACKET))) !=
                  BigInt.zero) ||
          ((((_la - 67)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 67)) &
                      ((BigInt.one << (TOKEN_EXCLAMATION - 67)) |
                          (BigInt.one << (TOKEN_DECIMAL_LIT - 67)) |
                          (BigInt.one << (TOKEN_BINARY_LIT - 67)) |
                          (BigInt.one << (TOKEN_OCTAL_LIT - 67)) |
                          (BigInt.one << (TOKEN_HEX_LIT - 67)) |
                          (BigInt.one << (TOKEN_DECIMAL_FLOAT_LIT - 67)) |
                          (BigInt.one << (TOKEN_HEX_FLOAT_LIT - 67)) |
                          (BigInt.one << (TOKEN_RUNE_LIT - 67)) |
                          (BigInt.one << (TOKEN_RAW_STRING_LIT - 67)) |
                          (BigInt.one <<
                              (TOKEN_INTERPRETED_STRING_LIT - 67)))) !=
                  BigInt.zero)) {
        state = 696;
        expression(0);
      }

      state = 699;
      match(TOKEN_COLON);
      state = 701;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_FUNC) |
                          (BigInt.one << TOKEN_INTERFACE) |
                          (BigInt.one << TOKEN_STRUCT) |
                          (BigInt.one << TOKEN_NIL) |
                          (BigInt.one << TOKEN_IDENTIFIER) |
                          (BigInt.one << TOKEN_PLUS) |
                          (BigInt.one << TOKEN_MINUS) |
                          (BigInt.one << TOKEN_STAR) |
                          (BigInt.one << TOKEN_AMPERSAND) |
                          (BigInt.one << TOKEN_CARET) |
                          (BigInt.one << TOKEN_L_PAREN) |
                          (BigInt.one << TOKEN_L_BRACKET))) !=
                  BigInt.zero) ||
          ((((_la - 67)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 67)) &
                      ((BigInt.one << (TOKEN_EXCLAMATION - 67)) |
                          (BigInt.one << (TOKEN_DECIMAL_LIT - 67)) |
                          (BigInt.one << (TOKEN_BINARY_LIT - 67)) |
                          (BigInt.one << (TOKEN_OCTAL_LIT - 67)) |
                          (BigInt.one << (TOKEN_HEX_LIT - 67)) |
                          (BigInt.one << (TOKEN_DECIMAL_FLOAT_LIT - 67)) |
                          (BigInt.one << (TOKEN_HEX_FLOAT_LIT - 67)) |
                          (BigInt.one << (TOKEN_RUNE_LIT - 67)) |
                          (BigInt.one << (TOKEN_RAW_STRING_LIT - 67)) |
                          (BigInt.one <<
                              (TOKEN_INTERPRETED_STRING_LIT - 67)))) !=
                  BigInt.zero)) {
        state = 700;
        expression(0);
      }

      state = 703;
      match(TOKEN_R_BRACKET);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ArgumentsContext arguments() {
    dynamic _localctx = ArgumentsContext(context, state);
    enterRule(_localctx, 170, RULE_arguments);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 705;
      match(TOKEN_L_PAREN);
      state = 720;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_FUNC) |
                          (BigInt.one << TOKEN_INTERFACE) |
                          (BigInt.one << TOKEN_STRUCT) |
                          (BigInt.one << TOKEN_NIL) |
                          (BigInt.one << TOKEN_IDENTIFIER) |
                          (BigInt.one << TOKEN_PLUS) |
                          (BigInt.one << TOKEN_MINUS) |
                          (BigInt.one << TOKEN_STAR) |
                          (BigInt.one << TOKEN_AMPERSAND) |
                          (BigInt.one << TOKEN_CARET) |
                          (BigInt.one << TOKEN_L_PAREN) |
                          (BigInt.one << TOKEN_L_BRACKET))) !=
                  BigInt.zero) ||
          ((((_la - 67)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 67)) &
                      ((BigInt.one << (TOKEN_EXCLAMATION - 67)) |
                          (BigInt.one << (TOKEN_DECIMAL_LIT - 67)) |
                          (BigInt.one << (TOKEN_BINARY_LIT - 67)) |
                          (BigInt.one << (TOKEN_OCTAL_LIT - 67)) |
                          (BigInt.one << (TOKEN_HEX_LIT - 67)) |
                          (BigInt.one << (TOKEN_DECIMAL_FLOAT_LIT - 67)) |
                          (BigInt.one << (TOKEN_HEX_FLOAT_LIT - 67)) |
                          (BigInt.one << (TOKEN_RUNE_LIT - 67)) |
                          (BigInt.one << (TOKEN_RAW_STRING_LIT - 67)) |
                          (BigInt.one <<
                              (TOKEN_INTERPRETED_STRING_LIT - 67)))) !=
                  BigInt.zero)) {
        state = 712;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 58, context)) {
          case 1:
            state = 706;
            expressionList();
            break;
          case 2:
            state = 707;
            type();
            state = 710;
            errorHandler.sync(this);
            switch (interpreter.adaptivePredict(tokenStream, 57, context)) {
              case 1:
                state = 708;
                match(TOKEN_COMMA);
                state = 709;
                expressionList();
                break;
            }
            break;
        }
        state = 715;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_ELLIPSIS) {
          state = 714;
          match(TOKEN_ELLIPSIS);
        }

        state = 718;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_COMMA) {
          state = 717;
          match(TOKEN_COMMA);
        }
      }

      state = 722;
      match(TOKEN_R_PAREN);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  MethodExprContext methodExpr() {
    dynamic _localctx = MethodExprContext(context, state);
    enterRule(_localctx, 172, RULE_methodExpr);
    try {
      enterOuterAlt(_localctx, 1);
      state = 724;
      type();
      state = 725;
      match(TOKEN_DOT);
      state = 726;
      methodName();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExpressionContext expression([int _p = 0]) {
    final _parentctx = context;
    final _parentState = state;
    dynamic _localctx = ExpressionContext(context, _parentState);
    var _prevctx = _localctx;
    var _startState = 174;
    enterRecursionRule(_localctx, 174, RULE_expression, _p);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      _localctx = UnaryExprAltContext(_localctx);
      context = _localctx;
      _prevctx = _localctx;

      state = 729;
      unaryExpr();
      context.stop = tokenStream.LT(-1);
      state = 751;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 63, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 749;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 62, context)) {
            case 1:
              _localctx = MultExprAltContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 731;
              if (!(precpred(context, 5))) {
                throw FailedPredicateException(this, "precpred(context, 5)");
              }
              state = 732;
              multOp();
              state = 733;
              expression(6);
              break;
            case 2:
              _localctx = AddExprAltContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 735;
              if (!(precpred(context, 4))) {
                throw FailedPredicateException(this, "precpred(context, 4)");
              }
              state = 736;
              addOp();
              state = 737;
              expression(5);
              break;
            case 3:
              _localctx = RelExprAltContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 739;
              if (!(precpred(context, 3))) {
                throw FailedPredicateException(this, "precpred(context, 3)");
              }
              state = 740;
              relOp();
              state = 741;
              expression(4);
              break;
            case 4:
              _localctx = AndExprAltContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 743;
              if (!(precpred(context, 2))) {
                throw FailedPredicateException(this, "precpred(context, 2)");
              }
              state = 744;
              match(TOKEN_LOGICAL_AND);
              state = 745;
              expression(3);
              break;
            case 5:
              _localctx = OrExprAltContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 746;
              if (!(precpred(context, 1))) {
                throw FailedPredicateException(this, "precpred(context, 1)");
              }
              state = 747;
              match(TOKEN_LOGICAL_OR);
              state = 748;
              expression(2);
              break;
          }
        }
        state = 753;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 63, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      unrollRecursionContexts(_parentctx);
    }
    return _localctx;
  }

  UnaryExprContext unaryExpr() {
    dynamic _localctx = UnaryExprContext(context, state);
    enterRule(_localctx, 176, RULE_unaryExpr);
    try {
      state = 758;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 64, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 754;
          primaryExpr(0);
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 755;
          unarypOp();
          state = 756;
          unaryExpr();
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  UnarypOpContext unarypOp() {
    dynamic _localctx = UnarypOpContext(context, state);
    enterRule(_localctx, 178, RULE_unarypOp);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 760;
      _la = tokenStream.LA(1);
      if (!(((((_la - 49)) & ~0x3f) == 0 &&
          ((BigInt.one << (_la - 49)) &
                  ((BigInt.one << (TOKEN_PLUS - 49)) |
                      (BigInt.one << (TOKEN_MINUS - 49)) |
                      (BigInt.one << (TOKEN_STAR - 49)) |
                      (BigInt.one << (TOKEN_AMPERSAND - 49)) |
                      (BigInt.one << (TOKEN_CARET - 49)) |
                      (BigInt.one << (TOKEN_EXCLAMATION - 49)))) !=
              BigInt.zero))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  MultOpContext multOp() {
    dynamic _localctx = MultOpContext(context, state);
    enterRule(_localctx, 180, RULE_multOp);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 762;
      _la = tokenStream.LA(1);
      if (!((((_la) & ~0x3f) == 0 &&
          ((BigInt.one << _la) &
                  ((BigInt.one << TOKEN_LSHIFT) |
                      (BigInt.one << TOKEN_RSHIFT) |
                      (BigInt.one << TOKEN_BIT_CLEAR) |
                      (BigInt.one << TOKEN_STAR) |
                      (BigInt.one << TOKEN_DIV) |
                      (BigInt.one << TOKEN_MOD) |
                      (BigInt.one << TOKEN_AMPERSAND))) !=
              BigInt.zero))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AddOpContext addOp() {
    dynamic _localctx = AddOpContext(context, state);
    enterRule(_localctx, 182, RULE_addOp);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 764;
      _la = tokenStream.LA(1);
      if (!((((_la) & ~0x3f) == 0 &&
          ((BigInt.one << _la) &
                  ((BigInt.one << TOKEN_PLUS) |
                      (BigInt.one << TOKEN_MINUS) |
                      (BigInt.one << TOKEN_PIPE) |
                      (BigInt.one << TOKEN_CARET))) !=
              BigInt.zero))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  RelOpContext relOp() {
    dynamic _localctx = RelOpContext(context, state);
    enterRule(_localctx, 184, RULE_relOp);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 766;
      _la = tokenStream.LA(1);
      if (!(((((_la - 33)) & ~0x3f) == 0 &&
          ((BigInt.one << (_la - 33)) &
                  ((BigInt.one << (TOKEN_EQUALS - 33)) |
                      (BigInt.one << (TOKEN_NOT_EQUALS - 33)) |
                      (BigInt.one << (TOKEN_LESS_OR_EQUALS - 33)) |
                      (BigInt.one << (TOKEN_GREATER_OR_EQUALS - 33)) |
                      (BigInt.one << (TOKEN_LESS - 33)) |
                      (BigInt.one << (TOKEN_GREATER - 33)))) !=
              BigInt.zero))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ConversionContext conversion() {
    dynamic _localctx = ConversionContext(context, state);
    enterRule(_localctx, 186, RULE_conversion);
    try {
      enterOuterAlt(_localctx, 1);
      state = 768;
      type();
      state = 769;
      match(TOKEN_L_PAREN);
      state = 770;
      expression(0);
      state = 771;
      match(TOKEN_R_PAREN);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  StatementContext statement() {
    dynamic _localctx = StatementContext(context, state);
    enterRule(_localctx, 188, RULE_statement);
    try {
      state = 785;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 65, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 773;
          declaration();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 774;
          labeledStmt();
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 775;
          simpleStmt();
          break;
        case 4:
          enterOuterAlt(_localctx, 4);
          state = 776;
          returnStmt();
          break;
        case 5:
          enterOuterAlt(_localctx, 5);
          state = 777;
          breakStmt();
          break;
        case 6:
          enterOuterAlt(_localctx, 6);
          state = 778;
          continueStmt();
          break;
        case 7:
          enterOuterAlt(_localctx, 7);
          state = 779;
          gotoStmt();
          break;
        case 8:
          enterOuterAlt(_localctx, 8);
          state = 780;
          fallthroughStmt();
          break;
        case 9:
          enterOuterAlt(_localctx, 9);
          state = 781;
          block();
          break;
        case 10:
          enterOuterAlt(_localctx, 10);
          state = 782;
          ifStmt();
          break;
        case 11:
          enterOuterAlt(_localctx, 11);
          state = 783;
          switchStmt();
          break;
        case 12:
          enterOuterAlt(_localctx, 12);
          state = 784;
          forStmt();
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SimpleStmtContext simpleStmt() {
    dynamic _localctx = SimpleStmtContext(context, state);
    enterRule(_localctx, 190, RULE_simpleStmt);
    try {
      state = 792;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 66, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 787;
          emptyStmt();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 788;
          expressionStmt();
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 789;
          incDecStmt();
          break;
        case 4:
          enterOuterAlt(_localctx, 4);
          state = 790;
          assignment();
          break;
        case 5:
          enterOuterAlt(_localctx, 5);
          state = 791;
          shortVarDecl();
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  EmptyStmtContext emptyStmt() {
    dynamic _localctx = EmptyStmtContext(context, state);
    enterRule(_localctx, 192, RULE_emptyStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 794;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  LabeledStmtContext labeledStmt() {
    dynamic _localctx = LabeledStmtContext(context, state);
    enterRule(_localctx, 194, RULE_labeledStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 796;
      label();
      state = 797;
      match(TOKEN_COLON);
      state = 798;
      statement();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  LabelContext label() {
    dynamic _localctx = LabelContext(context, state);
    enterRule(_localctx, 196, RULE_label);
    try {
      enterOuterAlt(_localctx, 1);
      state = 800;
      match(TOKEN_IDENTIFIER);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExpressionStmtContext expressionStmt() {
    dynamic _localctx = ExpressionStmtContext(context, state);
    enterRule(_localctx, 198, RULE_expressionStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 802;
      expression(0);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  IncDecStmtContext incDecStmt() {
    dynamic _localctx = IncDecStmtContext(context, state);
    enterRule(_localctx, 200, RULE_incDecStmt);
    try {
      state = 810;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 67, context)) {
        case 1:
          _localctx = IncStmtAltContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 804;
          expression(0);
          state = 805;
          match(TOKEN_PLUS_PLUS);
          break;
        case 2:
          _localctx = DecStmtAltContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 807;
          expression(0);
          state = 808;
          match(TOKEN_MINUS_MINUS);
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AssignmentContext assignment() {
    dynamic _localctx = AssignmentContext(context, state);
    enterRule(_localctx, 202, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 812;
      expressionList();
      state = 813;
      assignOp();
      state = 814;
      expressionList();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AssignOpContext assignOp() {
    dynamic _localctx = AssignOpContext(context, state);
    enterRule(_localctx, 204, RULE_assignOp);
    try {
      enterOuterAlt(_localctx, 1);
      state = 818;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_LSHIFT:
        case TOKEN_RSHIFT:
        case TOKEN_BIT_CLEAR:
        case TOKEN_STAR:
        case TOKEN_DIV:
        case TOKEN_MOD:
        case TOKEN_AMPERSAND:
          state = 816;
          multOp();
          break;
        case TOKEN_PLUS:
        case TOKEN_MINUS:
        case TOKEN_PIPE:
        case TOKEN_CARET:
          state = 817;
          addOp();
          break;
        case TOKEN_EQUAL:
          break;
        default:
          break;
      }
      state = 820;
      match(TOKEN_EQUAL);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  IfStmtContext ifStmt() {
    dynamic _localctx = IfStmtContext(context, state);
    enterRule(_localctx, 206, RULE_ifStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 822;
      match(TOKEN_IF);
      state = 826;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 69, context)) {
        case 1:
          state = 823;
          simpleStmt();
          state = 824;
          match(TOKEN_SEMI);
          break;
      }
      state = 828;
      expression(0);
      state = 829;
      block();
      state = 835;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 71, context)) {
        case 1:
          state = 830;
          match(TOKEN_ELSE);
          state = 833;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)) {
            case TOKEN_IF:
              state = 831;
              ifStmt();
              break;
            case TOKEN_L_CURLY:
              state = 832;
              block();
              break;
            default:
              throw NoViableAltException(this);
          }
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SwitchStmtContext switchStmt() {
    dynamic _localctx = SwitchStmtContext(context, state);
    enterRule(_localctx, 208, RULE_switchStmt);
    try {
      state = 839;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 72, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 837;
          exprSwitchStmt();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 838;
          typeSwitchStmt();
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExprSwitchStmtContext exprSwitchStmt() {
    dynamic _localctx = ExprSwitchStmtContext(context, state);
    enterRule(_localctx, 210, RULE_exprSwitchStmt);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 841;
      match(TOKEN_SWITCH);
      state = 845;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 73, context)) {
        case 1:
          state = 842;
          simpleStmt();
          state = 843;
          match(TOKEN_SEMI);
          break;
      }
      state = 848;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_FUNC) |
                          (BigInt.one << TOKEN_INTERFACE) |
                          (BigInt.one << TOKEN_STRUCT) |
                          (BigInt.one << TOKEN_NIL) |
                          (BigInt.one << TOKEN_IDENTIFIER) |
                          (BigInt.one << TOKEN_PLUS) |
                          (BigInt.one << TOKEN_MINUS) |
                          (BigInt.one << TOKEN_STAR) |
                          (BigInt.one << TOKEN_AMPERSAND) |
                          (BigInt.one << TOKEN_CARET) |
                          (BigInt.one << TOKEN_L_PAREN) |
                          (BigInt.one << TOKEN_L_BRACKET))) !=
                  BigInt.zero) ||
          ((((_la - 67)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 67)) &
                      ((BigInt.one << (TOKEN_EXCLAMATION - 67)) |
                          (BigInt.one << (TOKEN_DECIMAL_LIT - 67)) |
                          (BigInt.one << (TOKEN_BINARY_LIT - 67)) |
                          (BigInt.one << (TOKEN_OCTAL_LIT - 67)) |
                          (BigInt.one << (TOKEN_HEX_LIT - 67)) |
                          (BigInt.one << (TOKEN_DECIMAL_FLOAT_LIT - 67)) |
                          (BigInt.one << (TOKEN_HEX_FLOAT_LIT - 67)) |
                          (BigInt.one << (TOKEN_RUNE_LIT - 67)) |
                          (BigInt.one << (TOKEN_RAW_STRING_LIT - 67)) |
                          (BigInt.one <<
                              (TOKEN_INTERPRETED_STRING_LIT - 67)))) !=
                  BigInt.zero)) {
        state = 847;
        expression(0);
      }

      state = 850;
      match(TOKEN_L_CURLY);
      state = 851;
      exprCaseClause();
      state = 852;
      match(TOKEN_R_CURLY);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExprCaseClauseContext exprCaseClause() {
    dynamic _localctx = ExprCaseClauseContext(context, state);
    enterRule(_localctx, 212, RULE_exprCaseClause);
    try {
      enterOuterAlt(_localctx, 1);
      state = 854;
      exprSwitchCase();
      state = 855;
      match(TOKEN_COLON);
      state = 856;
      statementList();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExprSwitchCaseContext exprSwitchCase() {
    dynamic _localctx = ExprSwitchCaseContext(context, state);
    enterRule(_localctx, 214, RULE_exprSwitchCase);
    try {
      state = 861;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_CASE:
          enterOuterAlt(_localctx, 1);
          state = 858;
          match(TOKEN_CASE);
          state = 859;
          expressionList();
          break;
        case TOKEN_DEFAULT:
          enterOuterAlt(_localctx, 2);
          state = 860;
          match(TOKEN_DEFAULT);
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeSwitchStmtContext typeSwitchStmt() {
    dynamic _localctx = TypeSwitchStmtContext(context, state);
    enterRule(_localctx, 216, RULE_typeSwitchStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 863;
      match(TOKEN_SWITCH);
      state = 867;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 76, context)) {
        case 1:
          state = 864;
          simpleStmt();
          state = 865;
          match(TOKEN_SEMI);
          break;
      }
      state = 869;
      typeSwitchGuard();
      state = 870;
      match(TOKEN_L_CURLY);
      state = 871;
      typeCaseClause();
      state = 872;
      match(TOKEN_R_CURLY);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeSwitchGuardContext typeSwitchGuard() {
    dynamic _localctx = TypeSwitchGuardContext(context, state);
    enterRule(_localctx, 218, RULE_typeSwitchGuard);
    try {
      enterOuterAlt(_localctx, 1);
      state = 876;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 77, context)) {
        case 1:
          state = 874;
          match(TOKEN_IDENTIFIER);
          state = 875;
          match(TOKEN_SHORT_ASSIGN);
          break;
      }
      state = 878;
      primaryExpr(0);
      state = 879;
      match(TOKEN_DOT);
      state = 880;
      match(TOKEN_L_PAREN);
      state = 881;
      match(TOKEN_TYPE);
      state = 882;
      match(TOKEN_R_PAREN);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeCaseClauseContext typeCaseClause() {
    dynamic _localctx = TypeCaseClauseContext(context, state);
    enterRule(_localctx, 220, RULE_typeCaseClause);
    try {
      enterOuterAlt(_localctx, 1);
      state = 884;
      typeSwitchCase();
      state = 885;
      match(TOKEN_COLON);
      state = 886;
      statementList();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeSwitchCaseContext typeSwitchCase() {
    dynamic _localctx = TypeSwitchCaseContext(context, state);
    enterRule(_localctx, 222, RULE_typeSwitchCase);
    try {
      state = 891;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_CASE:
          enterOuterAlt(_localctx, 1);
          state = 888;
          match(TOKEN_CASE);
          state = 889;
          typeList();
          break;
        case TOKEN_DEFAULT:
          enterOuterAlt(_localctx, 2);
          state = 890;
          match(TOKEN_DEFAULT);
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeListContext typeList() {
    dynamic _localctx = TypeListContext(context, state);
    enterRule(_localctx, 224, RULE_typeList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 893;
      type();
      state = 898;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_COMMA) {
        state = 894;
        match(TOKEN_COMMA);
        state = 895;
        type();
        state = 900;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ForStmtContext forStmt() {
    dynamic _localctx = ForStmtContext(context, state);
    enterRule(_localctx, 226, RULE_forStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 901;
      match(TOKEN_FOR);
      state = 905;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 80, context)) {
        case 1:
          state = 902;
          condition();
          break;
        case 2:
          state = 903;
          forClause();
          break;
        case 3:
          state = 904;
          rangeClause();
          break;
      }
      state = 907;
      block();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ConditionContext condition() {
    dynamic _localctx = ConditionContext(context, state);
    enterRule(_localctx, 228, RULE_condition);
    try {
      enterOuterAlt(_localctx, 1);
      state = 909;
      expression(0);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ForClauseContext forClause() {
    dynamic _localctx = ForClauseContext(context, state);
    enterRule(_localctx, 230, RULE_forClause);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 912;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 81, context)) {
        case 1:
          state = 911;
          simpleStmt();
          break;
      }
      state = 914;
      match(TOKEN_SEMI);
      state = 916;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_FUNC) |
                          (BigInt.one << TOKEN_INTERFACE) |
                          (BigInt.one << TOKEN_STRUCT) |
                          (BigInt.one << TOKEN_NIL) |
                          (BigInt.one << TOKEN_IDENTIFIER) |
                          (BigInt.one << TOKEN_PLUS) |
                          (BigInt.one << TOKEN_MINUS) |
                          (BigInt.one << TOKEN_STAR) |
                          (BigInt.one << TOKEN_AMPERSAND) |
                          (BigInt.one << TOKEN_CARET) |
                          (BigInt.one << TOKEN_L_PAREN) |
                          (BigInt.one << TOKEN_L_BRACKET))) !=
                  BigInt.zero) ||
          ((((_la - 67)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 67)) &
                      ((BigInt.one << (TOKEN_EXCLAMATION - 67)) |
                          (BigInt.one << (TOKEN_DECIMAL_LIT - 67)) |
                          (BigInt.one << (TOKEN_BINARY_LIT - 67)) |
                          (BigInt.one << (TOKEN_OCTAL_LIT - 67)) |
                          (BigInt.one << (TOKEN_HEX_LIT - 67)) |
                          (BigInt.one << (TOKEN_DECIMAL_FLOAT_LIT - 67)) |
                          (BigInt.one << (TOKEN_HEX_FLOAT_LIT - 67)) |
                          (BigInt.one << (TOKEN_RUNE_LIT - 67)) |
                          (BigInt.one << (TOKEN_RAW_STRING_LIT - 67)) |
                          (BigInt.one <<
                              (TOKEN_INTERPRETED_STRING_LIT - 67)))) !=
                  BigInt.zero)) {
        state = 915;
        condition();
      }

      state = 918;
      match(TOKEN_SEMI);
      state = 920;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_FUNC) |
                          (BigInt.one << TOKEN_INTERFACE) |
                          (BigInt.one << TOKEN_STRUCT) |
                          (BigInt.one << TOKEN_NIL) |
                          (BigInt.one << TOKEN_IDENTIFIER) |
                          (BigInt.one << TOKEN_PLUS) |
                          (BigInt.one << TOKEN_MINUS) |
                          (BigInt.one << TOKEN_STAR) |
                          (BigInt.one << TOKEN_AMPERSAND) |
                          (BigInt.one << TOKEN_CARET) |
                          (BigInt.one << TOKEN_L_PAREN) |
                          (BigInt.one << TOKEN_L_BRACKET))) !=
                  BigInt.zero) ||
          ((((_la - 64)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 64)) &
                      ((BigInt.one << (TOKEN_SEMI - 64)) |
                          (BigInt.one << (TOKEN_EXCLAMATION - 64)) |
                          (BigInt.one << (TOKEN_DECIMAL_LIT - 64)) |
                          (BigInt.one << (TOKEN_BINARY_LIT - 64)) |
                          (BigInt.one << (TOKEN_OCTAL_LIT - 64)) |
                          (BigInt.one << (TOKEN_HEX_LIT - 64)) |
                          (BigInt.one << (TOKEN_DECIMAL_FLOAT_LIT - 64)) |
                          (BigInt.one << (TOKEN_HEX_FLOAT_LIT - 64)) |
                          (BigInt.one << (TOKEN_RUNE_LIT - 64)) |
                          (BigInt.one << (TOKEN_RAW_STRING_LIT - 64)) |
                          (BigInt.one <<
                              (TOKEN_INTERPRETED_STRING_LIT - 64)))) !=
                  BigInt.zero)) {
        state = 919;
        simpleStmt();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  RangeClauseContext rangeClause() {
    dynamic _localctx = RangeClauseContext(context, state);
    enterRule(_localctx, 232, RULE_rangeClause);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 925;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_IDENTIFIER) {
        state = 922;
        identifierList();
        state = 923;
        match(TOKEN_SHORT_ASSIGN);
      }

      state = 927;
      match(TOKEN_RANGE);
      state = 928;
      expression(0);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ReturnStmtContext returnStmt() {
    dynamic _localctx = ReturnStmtContext(context, state);
    enterRule(_localctx, 234, RULE_returnStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 930;
      match(TOKEN_RETURN);
      state = 932;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 85, context)) {
        case 1:
          state = 931;
          expressionList();
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BreakStmtContext breakStmt() {
    dynamic _localctx = BreakStmtContext(context, state);
    enterRule(_localctx, 236, RULE_breakStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 934;
      match(TOKEN_BREAK);
      state = 936;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 86, context)) {
        case 1:
          state = 935;
          label();
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ContinueStmtContext continueStmt() {
    dynamic _localctx = ContinueStmtContext(context, state);
    enterRule(_localctx, 238, RULE_continueStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 938;
      match(TOKEN_CONTINUE);
      state = 940;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 87, context)) {
        case 1:
          state = 939;
          label();
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  GotoStmtContext gotoStmt() {
    dynamic _localctx = GotoStmtContext(context, state);
    enterRule(_localctx, 240, RULE_gotoStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 942;
      match(TOKEN_GOTO);
      state = 943;
      label();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FallthroughStmtContext fallthroughStmt() {
    dynamic _localctx = FallthroughStmtContext(context, state);
    enterRule(_localctx, 242, RULE_fallthroughStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 945;
      match(TOKEN_FALLTHROUGH);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  EosContext eos() {
    dynamic _localctx = EosContext(context, state);
    enterRule(_localctx, 244, RULE_eos);
    try {
      state = 951;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 88, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 947;
          match(TOKEN_SEMI);
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 948;
          match(TOKEN_EOF);
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 949;
          if (!(lineTerminatorAhead())) {
            throw FailedPredicateException(this, "lineTerminatorAhead()");
          }
          break;
        case 4:
          enterOuterAlt(_localctx, 4);
          state = 950;
          if (!(checkPreviousTokenText("}"))) {
            throw FailedPredicateException(
                this, "checkPreviousTokenText(\"}\")");
          }
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  @override
  bool sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
      case 34:
        return _fieldDecl_sempred(_localctx, predIndex);
      case 38:
        return _signature_sempred(_localctx, predIndex);
      case 44:
        return _methodSpec_sempred(_localctx, predIndex);
      case 81:
        return _primaryExpr_sempred(_localctx, predIndex);
      case 87:
        return _expression_sempred(_localctx, predIndex);
      case 122:
        return _eos_sempred(_localctx, predIndex);
    }
    return true;
  }

  bool _fieldDecl_sempred(FieldDeclContext _localctx, int predIndex) {
    switch (predIndex) {
      case 0:
        return noTerminatorBetween(2);
    }
    return true;
  }

  bool _signature_sempred(SignatureContext _localctx, int predIndex) {
    switch (predIndex) {
      case 1:
        return noTerminatorAfterParams(1);
    }
    return true;
  }

  bool _methodSpec_sempred(MethodSpecContext _localctx, int predIndex) {
    switch (predIndex) {
      case 2:
        return noTerminatorAfterParams(2);
    }
    return true;
  }

  bool _primaryExpr_sempred(PrimaryExprContext _localctx, int predIndex) {
    switch (predIndex) {
      case 3:
        return precpred(context, 4);
      case 4:
        return precpred(context, 3);
      case 5:
        return precpred(context, 2);
      case 6:
        return precpred(context, 1);
    }
    return true;
  }

  bool _expression_sempred(ExpressionContext _localctx, int predIndex) {
    switch (predIndex) {
      case 7:
        return precpred(context, 5);
      case 8:
        return precpred(context, 4);
      case 9:
        return precpred(context, 3);
      case 10:
        return precpred(context, 2);
      case 11:
        return precpred(context, 1);
    }
    return true;
  }

  bool _eos_sempred(EosContext _localctx, int predIndex) {
    switch (predIndex) {
      case 12:
        return lineTerminatorAhead();
      case 13:
        return checkPreviousTokenText("}");
    }
    return true;
  }

  static const String _serializedATN = '\u{3}\u{608B}\u{A72A}\u{8133}\u{B9ED}'
      '\u{417C}\u{3BE7}\u{7786}\u{5964}\u{3}\u{5A}\u{3BC}\u{4}\u{2}\u{9}\u{2}'
      '\u{4}\u{3}\u{9}\u{3}\u{4}\u{4}\u{9}\u{4}\u{4}\u{5}\u{9}\u{5}\u{4}\u{6}'
      '\u{9}\u{6}\u{4}\u{7}\u{9}\u{7}\u{4}\u{8}\u{9}\u{8}\u{4}\u{9}\u{9}\u{9}'
      '\u{4}\u{A}\u{9}\u{A}\u{4}\u{B}\u{9}\u{B}\u{4}\u{C}\u{9}\u{C}\u{4}\u{D}'
      '\u{9}\u{D}\u{4}\u{E}\u{9}\u{E}\u{4}\u{F}\u{9}\u{F}\u{4}\u{10}\u{9}\u{10}'
      '\u{4}\u{11}\u{9}\u{11}\u{4}\u{12}\u{9}\u{12}\u{4}\u{13}\u{9}\u{13}\u{4}'
      '\u{14}\u{9}\u{14}\u{4}\u{15}\u{9}\u{15}\u{4}\u{16}\u{9}\u{16}\u{4}\u{17}'
      '\u{9}\u{17}\u{4}\u{18}\u{9}\u{18}\u{4}\u{19}\u{9}\u{19}\u{4}\u{1A}\u{9}'
      '\u{1A}\u{4}\u{1B}\u{9}\u{1B}\u{4}\u{1C}\u{9}\u{1C}\u{4}\u{1D}\u{9}\u{1D}'
      '\u{4}\u{1E}\u{9}\u{1E}\u{4}\u{1F}\u{9}\u{1F}\u{4}\u{20}\u{9}\u{20}\u{4}'
      '\u{21}\u{9}\u{21}\u{4}\u{22}\u{9}\u{22}\u{4}\u{23}\u{9}\u{23}\u{4}\u{24}'
      '\u{9}\u{24}\u{4}\u{25}\u{9}\u{25}\u{4}\u{26}\u{9}\u{26}\u{4}\u{27}\u{9}'
      '\u{27}\u{4}\u{28}\u{9}\u{28}\u{4}\u{29}\u{9}\u{29}\u{4}\u{2A}\u{9}\u{2A}'
      '\u{4}\u{2B}\u{9}\u{2B}\u{4}\u{2C}\u{9}\u{2C}\u{4}\u{2D}\u{9}\u{2D}\u{4}'
      '\u{2E}\u{9}\u{2E}\u{4}\u{2F}\u{9}\u{2F}\u{4}\u{30}\u{9}\u{30}\u{4}\u{31}'
      '\u{9}\u{31}\u{4}\u{32}\u{9}\u{32}\u{4}\u{33}\u{9}\u{33}\u{4}\u{34}\u{9}'
      '\u{34}\u{4}\u{35}\u{9}\u{35}\u{4}\u{36}\u{9}\u{36}\u{4}\u{37}\u{9}\u{37}'
      '\u{4}\u{38}\u{9}\u{38}\u{4}\u{39}\u{9}\u{39}\u{4}\u{3A}\u{9}\u{3A}\u{4}'
      '\u{3B}\u{9}\u{3B}\u{4}\u{3C}\u{9}\u{3C}\u{4}\u{3D}\u{9}\u{3D}\u{4}\u{3E}'
      '\u{9}\u{3E}\u{4}\u{3F}\u{9}\u{3F}\u{4}\u{40}\u{9}\u{40}\u{4}\u{41}\u{9}'
      '\u{41}\u{4}\u{42}\u{9}\u{42}\u{4}\u{43}\u{9}\u{43}\u{4}\u{44}\u{9}\u{44}'
      '\u{4}\u{45}\u{9}\u{45}\u{4}\u{46}\u{9}\u{46}\u{4}\u{47}\u{9}\u{47}\u{4}'
      '\u{48}\u{9}\u{48}\u{4}\u{49}\u{9}\u{49}\u{4}\u{4A}\u{9}\u{4A}\u{4}\u{4B}'
      '\u{9}\u{4B}\u{4}\u{4C}\u{9}\u{4C}\u{4}\u{4D}\u{9}\u{4D}\u{4}\u{4E}\u{9}'
      '\u{4E}\u{4}\u{4F}\u{9}\u{4F}\u{4}\u{50}\u{9}\u{50}\u{4}\u{51}\u{9}\u{51}'
      '\u{4}\u{52}\u{9}\u{52}\u{4}\u{53}\u{9}\u{53}\u{4}\u{54}\u{9}\u{54}\u{4}'
      '\u{55}\u{9}\u{55}\u{4}\u{56}\u{9}\u{56}\u{4}\u{57}\u{9}\u{57}\u{4}\u{58}'
      '\u{9}\u{58}\u{4}\u{59}\u{9}\u{59}\u{4}\u{5A}\u{9}\u{5A}\u{4}\u{5B}\u{9}'
      '\u{5B}\u{4}\u{5C}\u{9}\u{5C}\u{4}\u{5D}\u{9}\u{5D}\u{4}\u{5E}\u{9}\u{5E}'
      '\u{4}\u{5F}\u{9}\u{5F}\u{4}\u{60}\u{9}\u{60}\u{4}\u{61}\u{9}\u{61}\u{4}'
      '\u{62}\u{9}\u{62}\u{4}\u{63}\u{9}\u{63}\u{4}\u{64}\u{9}\u{64}\u{4}\u{65}'
      '\u{9}\u{65}\u{4}\u{66}\u{9}\u{66}\u{4}\u{67}\u{9}\u{67}\u{4}\u{68}\u{9}'
      '\u{68}\u{4}\u{69}\u{9}\u{69}\u{4}\u{6A}\u{9}\u{6A}\u{4}\u{6B}\u{9}\u{6B}'
      '\u{4}\u{6C}\u{9}\u{6C}\u{4}\u{6D}\u{9}\u{6D}\u{4}\u{6E}\u{9}\u{6E}\u{4}'
      '\u{6F}\u{9}\u{6F}\u{4}\u{70}\u{9}\u{70}\u{4}\u{71}\u{9}\u{71}\u{4}\u{72}'
      '\u{9}\u{72}\u{4}\u{73}\u{9}\u{73}\u{4}\u{74}\u{9}\u{74}\u{4}\u{75}\u{9}'
      '\u{75}\u{4}\u{76}\u{9}\u{76}\u{4}\u{77}\u{9}\u{77}\u{4}\u{78}\u{9}\u{78}'
      '\u{4}\u{79}\u{9}\u{79}\u{4}\u{7A}\u{9}\u{7A}\u{4}\u{7B}\u{9}\u{7B}\u{4}'
      '\u{7C}\u{9}\u{7C}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}'
      '\u{3}\u{3}\u{3}\u{3}\u{3}\u{7}\u{3}\u{101}\u{A}\u{3}\u{C}\u{3}\u{E}\u{3}'
      '\u{104}\u{B}\u{3}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{7}\u{4}\u{109}\u{A}'
      '\u{4}\u{C}\u{4}\u{E}\u{4}\u{10C}\u{B}\u{4}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}'
      '\u{3}\u{6}\u{3}\u{6}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}'
      '\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}\u{11A}\u{A}\u{7}\u{3}\u{8}\u{3}\u{8}\u{3}'
      '\u{8}\u{7}\u{8}\u{11F}\u{A}\u{8}\u{C}\u{8}\u{E}\u{8}\u{122}\u{B}\u{8}'
      '\u{3}\u{9}\u{5}\u{9}\u{125}\u{A}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{A}\u{3}'
      '\u{A}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{5}\u{B}\u{12E}\u{A}\u{B}\u{3}\u{C}'
      '\u{3}\u{C}\u{3}\u{C}\u{5}\u{C}\u{133}\u{A}\u{C}\u{3}\u{D}\u{3}\u{D}\u{3}'
      '\u{D}\u{3}\u{D}\u{3}\u{D}\u{3}\u{D}\u{5}\u{D}\u{13B}\u{A}\u{D}\u{3}\u{E}'
      '\u{3}\u{E}\u{3}\u{E}\u{7}\u{E}\u{140}\u{A}\u{E}\u{C}\u{E}\u{E}\u{E}\u{143}'
      '\u{B}\u{E}\u{3}\u{F}\u{3}\u{F}\u{5}\u{F}\u{147}\u{A}\u{F}\u{3}\u{F}\u{3}'
      '\u{F}\u{5}\u{F}\u{14B}\u{A}\u{F}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{7}'
      '\u{10}\u{150}\u{A}\u{10}\u{C}\u{10}\u{E}\u{10}\u{153}\u{B}\u{10}\u{3}'
      '\u{11}\u{3}\u{11}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{7}\u{12}\u{15A}'
      '\u{A}\u{12}\u{C}\u{12}\u{E}\u{12}\u{15D}\u{B}\u{12}\u{3}\u{13}\u{3}\u{13}'
      '\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{5}\u{13}\u{165}\u{A}\u{13}'
      '\u{3}\u{14}\u{3}\u{14}\u{3}\u{14}\u{7}\u{14}\u{16A}\u{A}\u{14}\u{C}\u{14}'
      '\u{E}\u{14}\u{16D}\u{B}\u{14}\u{3}\u{15}\u{3}\u{15}\u{5}\u{15}\u{171}'
      '\u{A}\u{15}\u{3}\u{16}\u{3}\u{16}\u{3}\u{16}\u{3}\u{16}\u{3}\u{17}\u{3}'
      '\u{17}\u{3}\u{17}\u{3}\u{18}\u{3}\u{18}\u{3}\u{18}\u{3}\u{18}\u{3}\u{18}'
      '\u{3}\u{18}\u{5}\u{18}\u{180}\u{A}\u{18}\u{3}\u{19}\u{3}\u{19}\u{3}\u{19}'
      '\u{7}\u{19}\u{185}\u{A}\u{19}\u{C}\u{19}\u{E}\u{19}\u{188}\u{B}\u{19}'
      '\u{3}\u{1A}\u{3}\u{1A}\u{3}\u{1A}\u{3}\u{1A}\u{5}\u{1A}\u{18E}\u{A}\u{1A}'
      '\u{3}\u{1A}\u{3}\u{1A}\u{5}\u{1A}\u{192}\u{A}\u{1A}\u{3}\u{1B}\u{3}\u{1B}'
      '\u{3}\u{1B}\u{3}\u{1B}\u{3}\u{1B}\u{3}\u{1B}\u{5}\u{1B}\u{19A}\u{A}\u{1B}'
      '\u{3}\u{1C}\u{3}\u{1C}\u{5}\u{1C}\u{19E}\u{A}\u{1C}\u{3}\u{1D}\u{3}\u{1D}'
      '\u{3}\u{1D}\u{3}\u{1D}\u{3}\u{1D}\u{3}\u{1D}\u{5}\u{1D}\u{1A6}\u{A}\u{1D}'
      '\u{3}\u{1E}\u{3}\u{1E}\u{3}\u{1E}\u{3}\u{1E}\u{3}\u{1E}\u{3}\u{1F}\u{3}'
      '\u{1F}\u{3}\u{20}\u{3}\u{20}\u{3}\u{21}\u{3}\u{21}\u{3}\u{21}\u{3}\u{21}'
      '\u{3}\u{22}\u{3}\u{22}\u{3}\u{22}\u{3}\u{22}\u{3}\u{22}\u{3}\u{23}\u{3}'
      '\u{23}\u{3}\u{23}\u{7}\u{23}\u{1BD}\u{A}\u{23}\u{C}\u{23}\u{E}\u{23}'
      '\u{1C0}\u{B}\u{23}\u{3}\u{24}\u{3}\u{24}\u{3}\u{24}\u{3}\u{24}\u{3}\u{24}'
      '\u{5}\u{24}\u{1C7}\u{A}\u{24}\u{3}\u{25}\u{5}\u{25}\u{1CA}\u{A}\u{25}'
      '\u{3}\u{25}\u{3}\u{25}\u{3}\u{26}\u{3}\u{26}\u{3}\u{26}\u{3}\u{27}\u{3}'
      '\u{27}\u{3}\u{27}\u{3}\u{28}\u{3}\u{28}\u{3}\u{28}\u{5}\u{28}\u{1D7}'
      '\u{A}\u{28}\u{3}\u{29}\u{3}\u{29}\u{5}\u{29}\u{1DB}\u{A}\u{29}\u{3}\u{2A}'
      '\u{3}\u{2A}\u{3}\u{2A}\u{5}\u{2A}\u{1E0}\u{A}\u{2A}\u{5}\u{2A}\u{1E2}'
      '\u{A}\u{2A}\u{3}\u{2A}\u{3}\u{2A}\u{3}\u{2B}\u{3}\u{2B}\u{3}\u{2B}\u{7}'
      '\u{2B}\u{1E9}\u{A}\u{2B}\u{C}\u{2B}\u{E}\u{2B}\u{1EC}\u{B}\u{2B}\u{3}'
      '\u{2C}\u{5}\u{2C}\u{1EF}\u{A}\u{2C}\u{3}\u{2C}\u{5}\u{2C}\u{1F2}\u{A}'
      '\u{2C}\u{3}\u{2C}\u{3}\u{2C}\u{3}\u{2D}\u{3}\u{2D}\u{3}\u{2D}\u{3}\u{2D}'
      '\u{5}\u{2D}\u{1FA}\u{A}\u{2D}\u{3}\u{2D}\u{3}\u{2D}\u{7}\u{2D}\u{1FE}'
      '\u{A}\u{2D}\u{C}\u{2D}\u{E}\u{2D}\u{201}\u{B}\u{2D}\u{3}\u{2D}\u{3}\u{2D}'
      '\u{3}\u{2E}\u{3}\u{2E}\u{3}\u{2E}\u{3}\u{2E}\u{3}\u{2F}\u{3}\u{2F}\u{3}'
      '\u{30}\u{3}\u{30}\u{3}\u{31}\u{3}\u{31}\u{3}\u{31}\u{3}\u{31}\u{3}\u{32}'
      '\u{3}\u{32}\u{3}\u{32}\u{7}\u{32}\u{214}\u{A}\u{32}\u{C}\u{32}\u{E}\u{32}'
      '\u{217}\u{B}\u{32}\u{3}\u{33}\u{3}\u{33}\u{3}\u{33}\u{3}\u{33}\u{3}\u{34}'
      '\u{3}\u{34}\u{3}\u{34}\u{3}\u{34}\u{5}\u{34}\u{221}\u{A}\u{34}\u{3}\u{35}'
      '\u{3}\u{35}\u{3}\u{36}\u{3}\u{36}\u{3}\u{37}\u{3}\u{37}\u{3}\u{37}\u{3}'
      '\u{37}\u{3}\u{37}\u{5}\u{37}\u{22C}\u{A}\u{37}\u{3}\u{38}\u{3}\u{38}'
      '\u{3}\u{38}\u{3}\u{38}\u{3}\u{38}\u{3}\u{38}\u{5}\u{38}\u{234}\u{A}\u{38}'
      '\u{3}\u{39}\u{3}\u{39}\u{3}\u{39}\u{5}\u{39}\u{239}\u{A}\u{39}\u{3}\u{3A}'
      '\u{3}\u{3A}\u{3}\u{3A}\u{3}\u{3A}\u{3}\u{3A}\u{5}\u{3A}\u{240}\u{A}\u{3A}'
      '\u{3}\u{3B}\u{3}\u{3B}\u{3}\u{3C}\u{3}\u{3C}\u{3}\u{3C}\u{3}\u{3C}\u{5}'
      '\u{3C}\u{248}\u{A}\u{3C}\u{3}\u{3D}\u{3}\u{3D}\u{3}\u{3E}\u{3}\u{3E}'
      '\u{3}\u{3F}\u{3}\u{3F}\u{3}\u{40}\u{3}\u{40}\u{3}\u{41}\u{3}\u{41}\u{5}'
      '\u{41}\u{254}\u{A}\u{41}\u{3}\u{42}\u{3}\u{42}\u{3}\u{43}\u{3}\u{43}'
      '\u{3}\u{44}\u{3}\u{44}\u{3}\u{45}\u{3}\u{45}\u{5}\u{45}\u{25E}\u{A}\u{45}'
      '\u{3}\u{46}\u{3}\u{46}\u{3}\u{47}\u{3}\u{47}\u{3}\u{48}\u{3}\u{48}\u{5}'
      '\u{48}\u{266}\u{A}\u{48}\u{3}\u{49}\u{3}\u{49}\u{3}\u{49}\u{3}\u{49}'
      '\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}'
      '\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{5}\u{4B}\u{277}'
      '\u{A}\u{4B}\u{3}\u{4C}\u{3}\u{4C}\u{3}\u{4C}\u{5}\u{4C}\u{27C}\u{A}\u{4C}'
      '\u{5}\u{4C}\u{27E}\u{A}\u{4C}\u{3}\u{4C}\u{3}\u{4C}\u{3}\u{4D}\u{3}\u{4D}'
      '\u{3}\u{4D}\u{7}\u{4D}\u{285}\u{A}\u{4D}\u{C}\u{4D}\u{E}\u{4D}\u{288}'
      '\u{B}\u{4D}\u{3}\u{4E}\u{3}\u{4E}\u{3}\u{4E}\u{5}\u{4E}\u{28D}\u{A}\u{4E}'
      '\u{3}\u{4E}\u{3}\u{4E}\u{3}\u{4F}\u{3}\u{4F}\u{3}\u{4F}\u{5}\u{4F}\u{294}'
      '\u{A}\u{4F}\u{3}\u{50}\u{3}\u{50}\u{3}\u{51}\u{3}\u{51}\u{5}\u{51}\u{29A}'
      '\u{A}\u{51}\u{3}\u{52}\u{3}\u{52}\u{3}\u{52}\u{3}\u{52}\u{3}\u{53}\u{3}'
      '\u{53}\u{3}\u{53}\u{3}\u{53}\u{5}\u{53}\u{2A4}\u{A}\u{53}\u{3}\u{53}'
      '\u{3}\u{53}\u{3}\u{53}\u{3}\u{53}\u{3}\u{53}\u{3}\u{53}\u{3}\u{53}\u{3}'
      '\u{53}\u{7}\u{53}\u{2AE}\u{A}\u{53}\u{C}\u{53}\u{E}\u{53}\u{2B1}\u{B}'
      '\u{53}\u{3}\u{54}\u{3}\u{54}\u{3}\u{54}\u{3}\u{55}\u{3}\u{55}\u{3}\u{55}'
      '\u{3}\u{55}\u{3}\u{56}\u{3}\u{56}\u{5}\u{56}\u{2BC}\u{A}\u{56}\u{3}\u{56}'
      '\u{3}\u{56}\u{5}\u{56}\u{2C0}\u{A}\u{56}\u{3}\u{56}\u{3}\u{56}\u{3}\u{57}'
      '\u{3}\u{57}\u{3}\u{57}\u{3}\u{57}\u{3}\u{57}\u{5}\u{57}\u{2C9}\u{A}\u{57}'
      '\u{5}\u{57}\u{2CB}\u{A}\u{57}\u{3}\u{57}\u{5}\u{57}\u{2CE}\u{A}\u{57}'
      '\u{3}\u{57}\u{5}\u{57}\u{2D1}\u{A}\u{57}\u{5}\u{57}\u{2D3}\u{A}\u{57}'
      '\u{3}\u{57}\u{3}\u{57}\u{3}\u{58}\u{3}\u{58}\u{3}\u{58}\u{3}\u{58}\u{3}'
      '\u{59}\u{3}\u{59}\u{3}\u{59}\u{3}\u{59}\u{3}\u{59}\u{3}\u{59}\u{3}\u{59}'
      '\u{3}\u{59}\u{3}\u{59}\u{3}\u{59}\u{3}\u{59}\u{3}\u{59}\u{3}\u{59}\u{3}'
      '\u{59}\u{3}\u{59}\u{3}\u{59}\u{3}\u{59}\u{3}\u{59}\u{3}\u{59}\u{3}\u{59}'
      '\u{3}\u{59}\u{7}\u{59}\u{2F0}\u{A}\u{59}\u{C}\u{59}\u{E}\u{59}\u{2F3}'
      '\u{B}\u{59}\u{3}\u{5A}\u{3}\u{5A}\u{3}\u{5A}\u{3}\u{5A}\u{5}\u{5A}\u{2F9}'
      '\u{A}\u{5A}\u{3}\u{5B}\u{3}\u{5B}\u{3}\u{5C}\u{3}\u{5C}\u{3}\u{5D}\u{3}'
      '\u{5D}\u{3}\u{5E}\u{3}\u{5E}\u{3}\u{5F}\u{3}\u{5F}\u{3}\u{5F}\u{3}\u{5F}'
      '\u{3}\u{5F}\u{3}\u{60}\u{3}\u{60}\u{3}\u{60}\u{3}\u{60}\u{3}\u{60}\u{3}'
      '\u{60}\u{3}\u{60}\u{3}\u{60}\u{3}\u{60}\u{3}\u{60}\u{3}\u{60}\u{3}\u{60}'
      '\u{5}\u{60}\u{314}\u{A}\u{60}\u{3}\u{61}\u{3}\u{61}\u{3}\u{61}\u{3}\u{61}'
      '\u{3}\u{61}\u{5}\u{61}\u{31B}\u{A}\u{61}\u{3}\u{62}\u{3}\u{62}\u{3}\u{63}'
      '\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{64}\u{3}\u{64}\u{3}\u{65}\u{3}'
      '\u{65}\u{3}\u{66}\u{3}\u{66}\u{3}\u{66}\u{3}\u{66}\u{3}\u{66}\u{3}\u{66}'
      '\u{5}\u{66}\u{32D}\u{A}\u{66}\u{3}\u{67}\u{3}\u{67}\u{3}\u{67}\u{3}\u{67}'
      '\u{3}\u{68}\u{3}\u{68}\u{5}\u{68}\u{335}\u{A}\u{68}\u{3}\u{68}\u{3}\u{68}'
      '\u{3}\u{69}\u{3}\u{69}\u{3}\u{69}\u{3}\u{69}\u{5}\u{69}\u{33D}\u{A}\u{69}'
      '\u{3}\u{69}\u{3}\u{69}\u{3}\u{69}\u{3}\u{69}\u{3}\u{69}\u{5}\u{69}\u{344}'
      '\u{A}\u{69}\u{5}\u{69}\u{346}\u{A}\u{69}\u{3}\u{6A}\u{3}\u{6A}\u{5}\u{6A}'
      '\u{34A}\u{A}\u{6A}\u{3}\u{6B}\u{3}\u{6B}\u{3}\u{6B}\u{3}\u{6B}\u{5}\u{6B}'
      '\u{350}\u{A}\u{6B}\u{3}\u{6B}\u{5}\u{6B}\u{353}\u{A}\u{6B}\u{3}\u{6B}'
      '\u{3}\u{6B}\u{3}\u{6B}\u{3}\u{6B}\u{3}\u{6C}\u{3}\u{6C}\u{3}\u{6C}\u{3}'
      '\u{6C}\u{3}\u{6D}\u{3}\u{6D}\u{3}\u{6D}\u{5}\u{6D}\u{360}\u{A}\u{6D}'
      '\u{3}\u{6E}\u{3}\u{6E}\u{3}\u{6E}\u{3}\u{6E}\u{5}\u{6E}\u{366}\u{A}\u{6E}'
      '\u{3}\u{6E}\u{3}\u{6E}\u{3}\u{6E}\u{3}\u{6E}\u{3}\u{6E}\u{3}\u{6F}\u{3}'
      '\u{6F}\u{5}\u{6F}\u{36F}\u{A}\u{6F}\u{3}\u{6F}\u{3}\u{6F}\u{3}\u{6F}'
      '\u{3}\u{6F}\u{3}\u{6F}\u{3}\u{6F}\u{3}\u{70}\u{3}\u{70}\u{3}\u{70}\u{3}'
      '\u{70}\u{3}\u{71}\u{3}\u{71}\u{3}\u{71}\u{5}\u{71}\u{37E}\u{A}\u{71}'
      '\u{3}\u{72}\u{3}\u{72}\u{3}\u{72}\u{7}\u{72}\u{383}\u{A}\u{72}\u{C}\u{72}'
      '\u{E}\u{72}\u{386}\u{B}\u{72}\u{3}\u{73}\u{3}\u{73}\u{3}\u{73}\u{3}\u{73}'
      '\u{5}\u{73}\u{38C}\u{A}\u{73}\u{3}\u{73}\u{3}\u{73}\u{3}\u{74}\u{3}\u{74}'
      '\u{3}\u{75}\u{5}\u{75}\u{393}\u{A}\u{75}\u{3}\u{75}\u{3}\u{75}\u{5}\u{75}'
      '\u{397}\u{A}\u{75}\u{3}\u{75}\u{3}\u{75}\u{5}\u{75}\u{39B}\u{A}\u{75}'
      '\u{3}\u{76}\u{3}\u{76}\u{3}\u{76}\u{5}\u{76}\u{3A0}\u{A}\u{76}\u{3}\u{76}'
      '\u{3}\u{76}\u{3}\u{76}\u{3}\u{77}\u{3}\u{77}\u{5}\u{77}\u{3A7}\u{A}\u{77}'
      '\u{3}\u{78}\u{3}\u{78}\u{5}\u{78}\u{3AB}\u{A}\u{78}\u{3}\u{79}\u{3}\u{79}'
      '\u{5}\u{79}\u{3AF}\u{A}\u{79}\u{3}\u{7A}\u{3}\u{7A}\u{3}\u{7A}\u{3}\u{7B}'
      '\u{3}\u{7B}\u{3}\u{7C}\u{3}\u{7C}\u{3}\u{7C}\u{3}\u{7C}\u{5}\u{7C}\u{3BA}'
      '\u{A}\u{7C}\u{3}\u{7C}\u{2}\u{4}\u{A4}\u{B0}\u{7D}\u{2}\u{4}\u{6}\u{8}'
      '\u{A}\u{C}\u{E}\u{10}\u{12}\u{14}\u{16}\u{18}\u{1A}\u{1C}\u{1E}\u{20}'
      '\u{22}\u{24}\u{26}\u{28}\u{2A}\u{2C}\u{2E}\u{30}\u{32}\u{34}\u{36}\u{38}'
      '\u{3A}\u{3C}\u{3E}\u{40}\u{42}\u{44}\u{46}\u{48}\u{4A}\u{4C}\u{4E}\u{50}'
      '\u{52}\u{54}\u{56}\u{58}\u{5A}\u{5C}\u{5E}\u{60}\u{62}\u{64}\u{66}\u{68}'
      '\u{6A}\u{6C}\u{6E}\u{70}\u{72}\u{74}\u{76}\u{78}\u{7A}\u{7C}\u{7E}\u{80}'
      '\u{82}\u{84}\u{86}\u{88}\u{8A}\u{8C}\u{8E}\u{90}\u{92}\u{94}\u{96}\u{98}'
      '\u{9A}\u{9C}\u{9E}\u{A0}\u{A2}\u{A4}\u{A6}\u{A8}\u{AA}\u{AC}\u{AE}\u{B0}'
      '\u{B2}\u{B4}\u{B6}\u{B8}\u{BA}\u{BC}\u{BE}\u{C0}\u{C2}\u{C4}\u{C6}\u{C8}'
      '\u{CA}\u{CC}\u{CE}\u{D0}\u{D2}\u{D4}\u{D6}\u{D8}\u{DA}\u{DC}\u{DE}\u{E0}'
      '\u{E2}\u{E4}\u{E6}\u{E8}\u{EA}\u{EC}\u{EE}\u{F0}\u{F2}\u{F4}\u{F6}\u{2}'
      '\u{6}\u{6}\u{2}\u{33}\u{35}\u{38}\u{38}\u{3A}\u{3A}\u{45}\u{45}\u{4}'
      '\u{2}\u{27}\u{29}\u{35}\u{38}\u{4}\u{2}\u{33}\u{34}\u{39}\u{3A}\u{4}'
      '\u{2}\u{23}\u{26}\u{46}\u{47}\u{2}\u{3C3}\u{2}\u{F8}\u{3}\u{2}\u{2}\u{2}'
      '\u{4}\u{102}\u{3}\u{2}\u{2}\u{2}\u{6}\u{10A}\u{3}\u{2}\u{2}\u{2}\u{8}'
      '\u{10D}\u{3}\u{2}\u{2}\u{2}\u{A}\u{110}\u{3}\u{2}\u{2}\u{2}\u{C}\u{119}'
      '\u{3}\u{2}\u{2}\u{2}\u{E}\u{120}\u{3}\u{2}\u{2}\u{2}\u{10}\u{124}\u{3}'
      '\u{2}\u{2}\u{2}\u{12}\u{128}\u{3}\u{2}\u{2}\u{2}\u{14}\u{12D}\u{3}\u{2}'
      '\u{2}\u{2}\u{16}\u{132}\u{3}\u{2}\u{2}\u{2}\u{18}\u{134}\u{3}\u{2}\u{2}'
      '\u{2}\u{1A}\u{141}\u{3}\u{2}\u{2}\u{2}\u{1C}\u{144}\u{3}\u{2}\u{2}\u{2}'
      '\u{1E}\u{14C}\u{3}\u{2}\u{2}\u{2}\u{20}\u{154}\u{3}\u{2}\u{2}\u{2}\u{22}'
      '\u{156}\u{3}\u{2}\u{2}\u{2}\u{24}\u{15E}\u{3}\u{2}\u{2}\u{2}\u{26}\u{16B}'
      '\u{3}\u{2}\u{2}\u{2}\u{28}\u{170}\u{3}\u{2}\u{2}\u{2}\u{2A}\u{172}\u{3}'
      '\u{2}\u{2}\u{2}\u{2C}\u{176}\u{3}\u{2}\u{2}\u{2}\u{2E}\u{179}\u{3}\u{2}'
      '\u{2}\u{2}\u{30}\u{186}\u{3}\u{2}\u{2}\u{2}\u{32}\u{189}\u{3}\u{2}\u{2}'
      '\u{2}\u{34}\u{199}\u{3}\u{2}\u{2}\u{2}\u{36}\u{19D}\u{3}\u{2}\u{2}\u{2}'
      '\u{38}\u{1A5}\u{3}\u{2}\u{2}\u{2}\u{3A}\u{1A7}\u{3}\u{2}\u{2}\u{2}\u{3C}'
      '\u{1AC}\u{3}\u{2}\u{2}\u{2}\u{3E}\u{1AE}\u{3}\u{2}\u{2}\u{2}\u{40}\u{1B0}'
      '\u{3}\u{2}\u{2}\u{2}\u{42}\u{1B4}\u{3}\u{2}\u{2}\u{2}\u{44}\u{1BE}\u{3}'
      '\u{2}\u{2}\u{2}\u{46}\u{1C6}\u{3}\u{2}\u{2}\u{2}\u{48}\u{1C9}\u{3}\u{2}'
      '\u{2}\u{2}\u{4A}\u{1CD}\u{3}\u{2}\u{2}\u{2}\u{4C}\u{1D0}\u{3}\u{2}\u{2}'
      '\u{2}\u{4E}\u{1D3}\u{3}\u{2}\u{2}\u{2}\u{50}\u{1DA}\u{3}\u{2}\u{2}\u{2}'
      '\u{52}\u{1DC}\u{3}\u{2}\u{2}\u{2}\u{54}\u{1E5}\u{3}\u{2}\u{2}\u{2}\u{56}'
      '\u{1EE}\u{3}\u{2}\u{2}\u{2}\u{58}\u{1F5}\u{3}\u{2}\u{2}\u{2}\u{5A}\u{204}'
      '\u{3}\u{2}\u{2}\u{2}\u{5C}\u{208}\u{3}\u{2}\u{2}\u{2}\u{5E}\u{20A}\u{3}'
      '\u{2}\u{2}\u{2}\u{60}\u{20C}\u{3}\u{2}\u{2}\u{2}\u{62}\u{215}\u{3}\u{2}'
      '\u{2}\u{2}\u{64}\u{218}\u{3}\u{2}\u{2}\u{2}\u{66}\u{21C}\u{3}\u{2}\u{2}'
      '\u{2}\u{68}\u{222}\u{3}\u{2}\u{2}\u{2}\u{6A}\u{224}\u{3}\u{2}\u{2}\u{2}'
      '\u{6C}\u{226}\u{3}\u{2}\u{2}\u{2}\u{6E}\u{233}\u{3}\u{2}\u{2}\u{2}\u{70}'
      '\u{238}\u{3}\u{2}\u{2}\u{2}\u{72}\u{23F}\u{3}\u{2}\u{2}\u{2}\u{74}\u{241}'
      '\u{3}\u{2}\u{2}\u{2}\u{76}\u{247}\u{3}\u{2}\u{2}\u{2}\u{78}\u{249}\u{3}'
      '\u{2}\u{2}\u{2}\u{7A}\u{24B}\u{3}\u{2}\u{2}\u{2}\u{7C}\u{24D}\u{3}\u{2}'
      '\u{2}\u{2}\u{7E}\u{24F}\u{3}\u{2}\u{2}\u{2}\u{80}\u{253}\u{3}\u{2}\u{2}'
      '\u{2}\u{82}\u{255}\u{3}\u{2}\u{2}\u{2}\u{84}\u{257}\u{3}\u{2}\u{2}\u{2}'
      '\u{86}\u{259}\u{3}\u{2}\u{2}\u{2}\u{88}\u{25D}\u{3}\u{2}\u{2}\u{2}\u{8A}'
      '\u{25F}\u{3}\u{2}\u{2}\u{2}\u{8C}\u{261}\u{3}\u{2}\u{2}\u{2}\u{8E}\u{265}'
      '\u{3}\u{2}\u{2}\u{2}\u{90}\u{267}\u{3}\u{2}\u{2}\u{2}\u{92}\u{26B}\u{3}'
      '\u{2}\u{2}\u{2}\u{94}\u{276}\u{3}\u{2}\u{2}\u{2}\u{96}\u{278}\u{3}\u{2}'
      '\u{2}\u{2}\u{98}\u{281}\u{3}\u{2}\u{2}\u{2}\u{9A}\u{28C}\u{3}\u{2}\u{2}'
      '\u{2}\u{9C}\u{293}\u{3}\u{2}\u{2}\u{2}\u{9E}\u{295}\u{3}\u{2}\u{2}\u{2}'
      '\u{A0}\u{299}\u{3}\u{2}\u{2}\u{2}\u{A2}\u{29B}\u{3}\u{2}\u{2}\u{2}\u{A4}'
      '\u{2A3}\u{3}\u{2}\u{2}\u{2}\u{A6}\u{2B2}\u{3}\u{2}\u{2}\u{2}\u{A8}\u{2B5}'
      '\u{3}\u{2}\u{2}\u{2}\u{AA}\u{2B9}\u{3}\u{2}\u{2}\u{2}\u{AC}\u{2C3}\u{3}'
      '\u{2}\u{2}\u{2}\u{AE}\u{2D6}\u{3}\u{2}\u{2}\u{2}\u{B0}\u{2DA}\u{3}\u{2}'
      '\u{2}\u{2}\u{B2}\u{2F8}\u{3}\u{2}\u{2}\u{2}\u{B4}\u{2FA}\u{3}\u{2}\u{2}'
      '\u{2}\u{B6}\u{2FC}\u{3}\u{2}\u{2}\u{2}\u{B8}\u{2FE}\u{3}\u{2}\u{2}\u{2}'
      '\u{BA}\u{300}\u{3}\u{2}\u{2}\u{2}\u{BC}\u{302}\u{3}\u{2}\u{2}\u{2}\u{BE}'
      '\u{313}\u{3}\u{2}\u{2}\u{2}\u{C0}\u{31A}\u{3}\u{2}\u{2}\u{2}\u{C2}\u{31C}'
      '\u{3}\u{2}\u{2}\u{2}\u{C4}\u{31E}\u{3}\u{2}\u{2}\u{2}\u{C6}\u{322}\u{3}'
      '\u{2}\u{2}\u{2}\u{C8}\u{324}\u{3}\u{2}\u{2}\u{2}\u{CA}\u{32C}\u{3}\u{2}'
      '\u{2}\u{2}\u{CC}\u{32E}\u{3}\u{2}\u{2}\u{2}\u{CE}\u{334}\u{3}\u{2}\u{2}'
      '\u{2}\u{D0}\u{338}\u{3}\u{2}\u{2}\u{2}\u{D2}\u{349}\u{3}\u{2}\u{2}\u{2}'
      '\u{D4}\u{34B}\u{3}\u{2}\u{2}\u{2}\u{D6}\u{358}\u{3}\u{2}\u{2}\u{2}\u{D8}'
      '\u{35F}\u{3}\u{2}\u{2}\u{2}\u{DA}\u{361}\u{3}\u{2}\u{2}\u{2}\u{DC}\u{36E}'
      '\u{3}\u{2}\u{2}\u{2}\u{DE}\u{376}\u{3}\u{2}\u{2}\u{2}\u{E0}\u{37D}\u{3}'
      '\u{2}\u{2}\u{2}\u{E2}\u{37F}\u{3}\u{2}\u{2}\u{2}\u{E4}\u{387}\u{3}\u{2}'
      '\u{2}\u{2}\u{E6}\u{38F}\u{3}\u{2}\u{2}\u{2}\u{E8}\u{392}\u{3}\u{2}\u{2}'
      '\u{2}\u{EA}\u{39F}\u{3}\u{2}\u{2}\u{2}\u{EC}\u{3A4}\u{3}\u{2}\u{2}\u{2}'
      '\u{EE}\u{3A8}\u{3}\u{2}\u{2}\u{2}\u{F0}\u{3AC}\u{3}\u{2}\u{2}\u{2}\u{F2}'
      '\u{3B0}\u{3}\u{2}\u{2}\u{2}\u{F4}\u{3B3}\u{3}\u{2}\u{2}\u{2}\u{F6}\u{3B9}'
      '\u{3}\u{2}\u{2}\u{2}\u{F8}\u{F9}\u{5}\u{8}\u{5}\u{2}\u{F9}\u{FA}\u{5}'
      '\u{F6}\u{7C}\u{2}\u{FA}\u{FB}\u{5}\u{4}\u{3}\u{2}\u{FB}\u{FC}\u{5}\u{6}'
      '\u{4}\u{2}\u{FC}\u{3}\u{3}\u{2}\u{2}\u{2}\u{FD}\u{FE}\u{5}\u{C}\u{7}'
      '\u{2}\u{FE}\u{FF}\u{5}\u{F6}\u{7C}\u{2}\u{FF}\u{101}\u{3}\u{2}\u{2}\u{2}'
      '\u{100}\u{FD}\u{3}\u{2}\u{2}\u{2}\u{101}\u{104}\u{3}\u{2}\u{2}\u{2}\u{102}'
      '\u{100}\u{3}\u{2}\u{2}\u{2}\u{102}\u{103}\u{3}\u{2}\u{2}\u{2}\u{103}'
      '\u{5}\u{3}\u{2}\u{2}\u{2}\u{104}\u{102}\u{3}\u{2}\u{2}\u{2}\u{105}\u{106}'
      '\u{5}\u{14}\u{B}\u{2}\u{106}\u{107}\u{5}\u{F6}\u{7C}\u{2}\u{107}\u{109}'
      '\u{3}\u{2}\u{2}\u{2}\u{108}\u{105}\u{3}\u{2}\u{2}\u{2}\u{109}\u{10C}'
      '\u{3}\u{2}\u{2}\u{2}\u{10A}\u{108}\u{3}\u{2}\u{2}\u{2}\u{10A}\u{10B}'
      '\u{3}\u{2}\u{2}\u{2}\u{10B}\u{7}\u{3}\u{2}\u{2}\u{2}\u{10C}\u{10A}\u{3}'
      '\u{2}\u{2}\u{2}\u{10D}\u{10E}\u{7}\u{D}\u{2}\u{2}\u{10E}\u{10F}\u{5}'
      '\u{A}\u{6}\u{2}\u{10F}\u{9}\u{3}\u{2}\u{2}\u{2}\u{110}\u{111}\u{7}\u{1A}'
      '\u{2}\u{2}\u{111}\u{B}\u{3}\u{2}\u{2}\u{2}\u{112}\u{113}\u{7}\u{16}\u{2}'
      '\u{2}\u{113}\u{11A}\u{5}\u{10}\u{9}\u{2}\u{114}\u{115}\u{7}\u{16}\u{2}'
      '\u{2}\u{115}\u{116}\u{7}\u{3B}\u{2}\u{2}\u{116}\u{117}\u{5}\u{E}\u{8}'
      '\u{2}\u{117}\u{118}\u{7}\u{3C}\u{2}\u{2}\u{118}\u{11A}\u{3}\u{2}\u{2}'
      '\u{2}\u{119}\u{112}\u{3}\u{2}\u{2}\u{2}\u{119}\u{114}\u{3}\u{2}\u{2}'
      '\u{2}\u{11A}\u{D}\u{3}\u{2}\u{2}\u{2}\u{11B}\u{11C}\u{5}\u{10}\u{9}\u{2}'
      '\u{11C}\u{11D}\u{5}\u{F6}\u{7C}\u{2}\u{11D}\u{11F}\u{3}\u{2}\u{2}\u{2}'
      '\u{11E}\u{11B}\u{3}\u{2}\u{2}\u{2}\u{11F}\u{122}\u{3}\u{2}\u{2}\u{2}'
      '\u{120}\u{11E}\u{3}\u{2}\u{2}\u{2}\u{120}\u{121}\u{3}\u{2}\u{2}\u{2}'
      '\u{121}\u{F}\u{3}\u{2}\u{2}\u{2}\u{122}\u{120}\u{3}\u{2}\u{2}\u{2}\u{123}'
      '\u{125}\u{5}\u{A}\u{6}\u{2}\u{124}\u{123}\u{3}\u{2}\u{2}\u{2}\u{124}'
      '\u{125}\u{3}\u{2}\u{2}\u{2}\u{125}\u{126}\u{3}\u{2}\u{2}\u{2}\u{126}'
      '\u{127}\u{5}\u{12}\u{A}\u{2}\u{127}\u{11}\u{3}\u{2}\u{2}\u{2}\u{128}'
      '\u{129}\u{5}\u{88}\u{45}\u{2}\u{129}\u{13}\u{3}\u{2}\u{2}\u{2}\u{12A}'
      '\u{12E}\u{5}\u{16}\u{C}\u{2}\u{12B}\u{12E}\u{5}\u{66}\u{34}\u{2}\u{12C}'
      '\u{12E}\u{5}\u{6C}\u{37}\u{2}\u{12D}\u{12A}\u{3}\u{2}\u{2}\u{2}\u{12D}'
      '\u{12B}\u{3}\u{2}\u{2}\u{2}\u{12D}\u{12C}\u{3}\u{2}\u{2}\u{2}\u{12E}'
      '\u{15}\u{3}\u{2}\u{2}\u{2}\u{12F}\u{133}\u{5}\u{18}\u{D}\u{2}\u{130}'
      '\u{133}\u{5}\u{24}\u{13}\u{2}\u{131}\u{133}\u{5}\u{2E}\u{18}\u{2}\u{132}'
      '\u{12F}\u{3}\u{2}\u{2}\u{2}\u{132}\u{130}\u{3}\u{2}\u{2}\u{2}\u{132}'
      '\u{131}\u{3}\u{2}\u{2}\u{2}\u{133}\u{17}\u{3}\u{2}\u{2}\u{2}\u{134}\u{13A}'
      '\u{7}\u{F}\u{2}\u{2}\u{135}\u{13B}\u{5}\u{1C}\u{F}\u{2}\u{136}\u{137}'
      '\u{7}\u{3B}\u{2}\u{2}\u{137}\u{138}\u{5}\u{1A}\u{E}\u{2}\u{138}\u{139}'
      '\u{7}\u{3C}\u{2}\u{2}\u{139}\u{13B}\u{3}\u{2}\u{2}\u{2}\u{13A}\u{135}'
      '\u{3}\u{2}\u{2}\u{2}\u{13A}\u{136}\u{3}\u{2}\u{2}\u{2}\u{13B}\u{19}\u{3}'
      '\u{2}\u{2}\u{2}\u{13C}\u{13D}\u{5}\u{1C}\u{F}\u{2}\u{13D}\u{13E}\u{5}'
      '\u{F6}\u{7C}\u{2}\u{13E}\u{140}\u{3}\u{2}\u{2}\u{2}\u{13F}\u{13C}\u{3}'
      '\u{2}\u{2}\u{2}\u{140}\u{143}\u{3}\u{2}\u{2}\u{2}\u{141}\u{13F}\u{3}'
      '\u{2}\u{2}\u{2}\u{141}\u{142}\u{3}\u{2}\u{2}\u{2}\u{142}\u{1B}\u{3}\u{2}'
      '\u{2}\u{2}\u{143}\u{141}\u{3}\u{2}\u{2}\u{2}\u{144}\u{14A}\u{5}\u{1E}'
      '\u{10}\u{2}\u{145}\u{147}\u{5}\u{34}\u{1B}\u{2}\u{146}\u{145}\u{3}\u{2}'
      '\u{2}\u{2}\u{146}\u{147}\u{3}\u{2}\u{2}\u{2}\u{147}\u{148}\u{3}\u{2}'
      '\u{2}\u{2}\u{148}\u{149}\u{7}\u{48}\u{2}\u{2}\u{149}\u{14B}\u{5}\u{22}'
      '\u{12}\u{2}\u{14A}\u{146}\u{3}\u{2}\u{2}\u{2}\u{14A}\u{14B}\u{3}\u{2}'
      '\u{2}\u{2}\u{14B}\u{1D}\u{3}\u{2}\u{2}\u{2}\u{14C}\u{151}\u{5}\u{20}'
      '\u{11}\u{2}\u{14D}\u{14E}\u{7}\u{41}\u{2}\u{2}\u{14E}\u{150}\u{5}\u{20}'
      '\u{11}\u{2}\u{14F}\u{14D}\u{3}\u{2}\u{2}\u{2}\u{150}\u{153}\u{3}\u{2}'
      '\u{2}\u{2}\u{151}\u{14F}\u{3}\u{2}\u{2}\u{2}\u{151}\u{152}\u{3}\u{2}'
      '\u{2}\u{2}\u{152}\u{1F}\u{3}\u{2}\u{2}\u{2}\u{153}\u{151}\u{3}\u{2}\u{2}'
      '\u{2}\u{154}\u{155}\u{7}\u{1A}\u{2}\u{2}\u{155}\u{21}\u{3}\u{2}\u{2}'
      '\u{2}\u{156}\u{15B}\u{5}\u{B0}\u{59}\u{2}\u{157}\u{158}\u{7}\u{41}\u{2}'
      '\u{2}\u{158}\u{15A}\u{5}\u{B0}\u{59}\u{2}\u{159}\u{157}\u{3}\u{2}\u{2}'
      '\u{2}\u{15A}\u{15D}\u{3}\u{2}\u{2}\u{2}\u{15B}\u{159}\u{3}\u{2}\u{2}'
      '\u{2}\u{15B}\u{15C}\u{3}\u{2}\u{2}\u{2}\u{15C}\u{23}\u{3}\u{2}\u{2}\u{2}'
      '\u{15D}\u{15B}\u{3}\u{2}\u{2}\u{2}\u{15E}\u{164}\u{7}\u{13}\u{2}\u{2}'
      '\u{15F}\u{165}\u{5}\u{28}\u{15}\u{2}\u{160}\u{161}\u{7}\u{3B}\u{2}\u{2}'
      '\u{161}\u{162}\u{5}\u{26}\u{14}\u{2}\u{162}\u{163}\u{7}\u{3C}\u{2}\u{2}'
      '\u{163}\u{165}\u{3}\u{2}\u{2}\u{2}\u{164}\u{15F}\u{3}\u{2}\u{2}\u{2}'
      '\u{164}\u{160}\u{3}\u{2}\u{2}\u{2}\u{165}\u{25}\u{3}\u{2}\u{2}\u{2}\u{166}'
      '\u{167}\u{5}\u{28}\u{15}\u{2}\u{167}\u{168}\u{5}\u{F6}\u{7C}\u{2}\u{168}'
      '\u{16A}\u{3}\u{2}\u{2}\u{2}\u{169}\u{166}\u{3}\u{2}\u{2}\u{2}\u{16A}'
      '\u{16D}\u{3}\u{2}\u{2}\u{2}\u{16B}\u{169}\u{3}\u{2}\u{2}\u{2}\u{16B}'
      '\u{16C}\u{3}\u{2}\u{2}\u{2}\u{16C}\u{27}\u{3}\u{2}\u{2}\u{2}\u{16D}\u{16B}'
      '\u{3}\u{2}\u{2}\u{2}\u{16E}\u{171}\u{5}\u{2A}\u{16}\u{2}\u{16F}\u{171}'
      '\u{5}\u{2C}\u{17}\u{2}\u{170}\u{16E}\u{3}\u{2}\u{2}\u{2}\u{170}\u{16F}'
      '\u{3}\u{2}\u{2}\u{2}\u{171}\u{29}\u{3}\u{2}\u{2}\u{2}\u{172}\u{173}\u{7}'
      '\u{1A}\u{2}\u{2}\u{173}\u{174}\u{7}\u{48}\u{2}\u{2}\u{174}\u{175}\u{5}'
      '\u{34}\u{1B}\u{2}\u{175}\u{2B}\u{3}\u{2}\u{2}\u{2}\u{176}\u{177}\u{7}'
      '\u{1A}\u{2}\u{2}\u{177}\u{178}\u{5}\u{34}\u{1B}\u{2}\u{178}\u{2D}\u{3}'
      '\u{2}\u{2}\u{2}\u{179}\u{17F}\u{7}\u{18}\u{2}\u{2}\u{17A}\u{180}\u{5}'
      '\u{32}\u{1A}\u{2}\u{17B}\u{17C}\u{7}\u{3B}\u{2}\u{2}\u{17C}\u{17D}\u{5}'
      '\u{30}\u{19}\u{2}\u{17D}\u{17E}\u{7}\u{3C}\u{2}\u{2}\u{17E}\u{180}\u{3}'
      '\u{2}\u{2}\u{2}\u{17F}\u{17A}\u{3}\u{2}\u{2}\u{2}\u{17F}\u{17B}\u{3}'
      '\u{2}\u{2}\u{2}\u{180}\u{2F}\u{3}\u{2}\u{2}\u{2}\u{181}\u{182}\u{5}\u{32}'
      '\u{1A}\u{2}\u{182}\u{183}\u{5}\u{F6}\u{7C}\u{2}\u{183}\u{185}\u{3}\u{2}'
      '\u{2}\u{2}\u{184}\u{181}\u{3}\u{2}\u{2}\u{2}\u{185}\u{188}\u{3}\u{2}'
      '\u{2}\u{2}\u{186}\u{184}\u{3}\u{2}\u{2}\u{2}\u{186}\u{187}\u{3}\u{2}'
      '\u{2}\u{2}\u{187}\u{31}\u{3}\u{2}\u{2}\u{2}\u{188}\u{186}\u{3}\u{2}\u{2}'
      '\u{2}\u{189}\u{191}\u{5}\u{1E}\u{10}\u{2}\u{18A}\u{18D}\u{5}\u{34}\u{1B}'
      '\u{2}\u{18B}\u{18C}\u{7}\u{48}\u{2}\u{2}\u{18C}\u{18E}\u{5}\u{22}\u{12}'
      '\u{2}\u{18D}\u{18B}\u{3}\u{2}\u{2}\u{2}\u{18D}\u{18E}\u{3}\u{2}\u{2}'
      '\u{2}\u{18E}\u{192}\u{3}\u{2}\u{2}\u{2}\u{18F}\u{190}\u{7}\u{48}\u{2}'
      '\u{2}\u{190}\u{192}\u{5}\u{22}\u{12}\u{2}\u{191}\u{18A}\u{3}\u{2}\u{2}'
      '\u{2}\u{191}\u{18F}\u{3}\u{2}\u{2}\u{2}\u{192}\u{33}\u{3}\u{2}\u{2}\u{2}'
      '\u{193}\u{19A}\u{5}\u{36}\u{1C}\u{2}\u{194}\u{19A}\u{5}\u{38}\u{1D}\u{2}'
      '\u{195}\u{196}\u{7}\u{3B}\u{2}\u{2}\u{196}\u{197}\u{5}\u{34}\u{1B}\u{2}'
      '\u{197}\u{198}\u{7}\u{3C}\u{2}\u{2}\u{198}\u{19A}\u{3}\u{2}\u{2}\u{2}'
      '\u{199}\u{193}\u{3}\u{2}\u{2}\u{2}\u{199}\u{194}\u{3}\u{2}\u{2}\u{2}'
      '\u{199}\u{195}\u{3}\u{2}\u{2}\u{2}\u{19A}\u{35}\u{3}\u{2}\u{2}\u{2}\u{19B}'
      '\u{19E}\u{5}\u{20}\u{11}\u{2}\u{19C}\u{19E}\u{5}\u{90}\u{49}\u{2}\u{19D}'
      '\u{19B}\u{3}\u{2}\u{2}\u{2}\u{19D}\u{19C}\u{3}\u{2}\u{2}\u{2}\u{19E}'
      '\u{37}\u{3}\u{2}\u{2}\u{2}\u{19F}\u{1A6}\u{5}\u{3A}\u{1E}\u{2}\u{1A0}'
      '\u{1A6}\u{5}\u{42}\u{22}\u{2}\u{1A1}\u{1A6}\u{5}\u{4A}\u{26}\u{2}\u{1A2}'
      '\u{1A6}\u{5}\u{4C}\u{27}\u{2}\u{1A3}\u{1A6}\u{5}\u{58}\u{2D}\u{2}\u{1A4}'
      '\u{1A6}\u{5}\u{40}\u{21}\u{2}\u{1A5}\u{19F}\u{3}\u{2}\u{2}\u{2}\u{1A5}'
      '\u{1A0}\u{3}\u{2}\u{2}\u{2}\u{1A5}\u{1A1}\u{3}\u{2}\u{2}\u{2}\u{1A5}'
      '\u{1A2}\u{3}\u{2}\u{2}\u{2}\u{1A5}\u{1A3}\u{3}\u{2}\u{2}\u{2}\u{1A5}'
      '\u{1A4}\u{3}\u{2}\u{2}\u{2}\u{1A6}\u{39}\u{3}\u{2}\u{2}\u{2}\u{1A7}\u{1A8}'
      '\u{7}\u{3F}\u{2}\u{2}\u{1A8}\u{1A9}\u{5}\u{3C}\u{1F}\u{2}\u{1A9}\u{1AA}'
      '\u{7}\u{40}\u{2}\u{2}\u{1AA}\u{1AB}\u{5}\u{3E}\u{20}\u{2}\u{1AB}\u{3B}'
      '\u{3}\u{2}\u{2}\u{2}\u{1AC}\u{1AD}\u{5}\u{B0}\u{59}\u{2}\u{1AD}\u{3D}'
      '\u{3}\u{2}\u{2}\u{2}\u{1AE}\u{1AF}\u{5}\u{34}\u{1B}\u{2}\u{1AF}\u{3F}'
      '\u{3}\u{2}\u{2}\u{2}\u{1B0}\u{1B1}\u{7}\u{3F}\u{2}\u{2}\u{1B1}\u{1B2}'
      '\u{7}\u{40}\u{2}\u{2}\u{1B2}\u{1B3}\u{5}\u{3E}\u{20}\u{2}\u{1B3}\u{41}'
      '\u{3}\u{2}\u{2}\u{2}\u{1B4}\u{1B5}\u{7}\u{A}\u{2}\u{2}\u{1B5}\u{1B6}'
      '\u{7}\u{3D}\u{2}\u{2}\u{1B6}\u{1B7}\u{5}\u{44}\u{23}\u{2}\u{1B7}\u{1B8}'
      '\u{7}\u{3E}\u{2}\u{2}\u{1B8}\u{43}\u{3}\u{2}\u{2}\u{2}\u{1B9}\u{1BA}'
      '\u{5}\u{46}\u{24}\u{2}\u{1BA}\u{1BB}\u{5}\u{F6}\u{7C}\u{2}\u{1BB}\u{1BD}'
      '\u{3}\u{2}\u{2}\u{2}\u{1BC}\u{1B9}\u{3}\u{2}\u{2}\u{2}\u{1BD}\u{1C0}'
      '\u{3}\u{2}\u{2}\u{2}\u{1BE}\u{1BC}\u{3}\u{2}\u{2}\u{2}\u{1BE}\u{1BF}'
      '\u{3}\u{2}\u{2}\u{2}\u{1BF}\u{45}\u{3}\u{2}\u{2}\u{2}\u{1C0}\u{1BE}\u{3}'
      '\u{2}\u{2}\u{2}\u{1C1}\u{1C2}\u{6}\u{24}\u{2}\u{2}\u{1C2}\u{1C3}\u{5}'
      '\u{1E}\u{10}\u{2}\u{1C3}\u{1C4}\u{5}\u{34}\u{1B}\u{2}\u{1C4}\u{1C7}\u{3}'
      '\u{2}\u{2}\u{2}\u{1C5}\u{1C7}\u{5}\u{48}\u{25}\u{2}\u{1C6}\u{1C1}\u{3}'
      '\u{2}\u{2}\u{2}\u{1C6}\u{1C5}\u{3}\u{2}\u{2}\u{2}\u{1C7}\u{47}\u{3}\u{2}'
      '\u{2}\u{2}\u{1C8}\u{1CA}\u{7}\u{35}\u{2}\u{2}\u{1C9}\u{1C8}\u{3}\u{2}'
      '\u{2}\u{2}\u{1C9}\u{1CA}\u{3}\u{2}\u{2}\u{2}\u{1CA}\u{1CB}\u{3}\u{2}'
      '\u{2}\u{2}\u{1CB}\u{1CC}\u{5}\u{36}\u{1C}\u{2}\u{1CC}\u{49}\u{3}\u{2}'
      '\u{2}\u{2}\u{1CD}\u{1CE}\u{7}\u{35}\u{2}\u{2}\u{1CE}\u{1CF}\u{5}\u{34}'
      '\u{1B}\u{2}\u{1CF}\u{4B}\u{3}\u{2}\u{2}\u{2}\u{1D0}\u{1D1}\u{7}\u{5}'
      '\u{2}\u{2}\u{1D1}\u{1D2}\u{5}\u{4E}\u{28}\u{2}\u{1D2}\u{4D}\u{3}\u{2}'
      '\u{2}\u{2}\u{1D3}\u{1D4}\u{6}\u{28}\u{3}\u{2}\u{1D4}\u{1D6}\u{5}\u{52}'
      '\u{2A}\u{2}\u{1D5}\u{1D7}\u{5}\u{50}\u{29}\u{2}\u{1D6}\u{1D5}\u{3}\u{2}'
      '\u{2}\u{2}\u{1D6}\u{1D7}\u{3}\u{2}\u{2}\u{2}\u{1D7}\u{4F}\u{3}\u{2}\u{2}'
      '\u{2}\u{1D8}\u{1DB}\u{5}\u{52}\u{2A}\u{2}\u{1D9}\u{1DB}\u{5}\u{34}\u{1B}'
      '\u{2}\u{1DA}\u{1D8}\u{3}\u{2}\u{2}\u{2}\u{1DA}\u{1D9}\u{3}\u{2}\u{2}'
      '\u{2}\u{1DB}\u{51}\u{3}\u{2}\u{2}\u{2}\u{1DC}\u{1E1}\u{7}\u{3B}\u{2}'
      '\u{2}\u{1DD}\u{1DF}\u{5}\u{54}\u{2B}\u{2}\u{1DE}\u{1E0}\u{7}\u{41}\u{2}'
      '\u{2}\u{1DF}\u{1DE}\u{3}\u{2}\u{2}\u{2}\u{1DF}\u{1E0}\u{3}\u{2}\u{2}'
      '\u{2}\u{1E0}\u{1E2}\u{3}\u{2}\u{2}\u{2}\u{1E1}\u{1DD}\u{3}\u{2}\u{2}'
      '\u{2}\u{1E1}\u{1E2}\u{3}\u{2}\u{2}\u{2}\u{1E2}\u{1E3}\u{3}\u{2}\u{2}'
      '\u{2}\u{1E3}\u{1E4}\u{7}\u{3C}\u{2}\u{2}\u{1E4}\u{53}\u{3}\u{2}\u{2}'
      '\u{2}\u{1E5}\u{1EA}\u{5}\u{56}\u{2C}\u{2}\u{1E6}\u{1E7}\u{7}\u{41}\u{2}'
      '\u{2}\u{1E7}\u{1E9}\u{5}\u{56}\u{2C}\u{2}\u{1E8}\u{1E6}\u{3}\u{2}\u{2}'
      '\u{2}\u{1E9}\u{1EC}\u{3}\u{2}\u{2}\u{2}\u{1EA}\u{1E8}\u{3}\u{2}\u{2}'
      '\u{2}\u{1EA}\u{1EB}\u{3}\u{2}\u{2}\u{2}\u{1EB}\u{55}\u{3}\u{2}\u{2}\u{2}'
      '\u{1EC}\u{1EA}\u{3}\u{2}\u{2}\u{2}\u{1ED}\u{1EF}\u{5}\u{1E}\u{10}\u{2}'
      '\u{1EE}\u{1ED}\u{3}\u{2}\u{2}\u{2}\u{1EE}\u{1EF}\u{3}\u{2}\u{2}\u{2}'
      '\u{1EF}\u{1F1}\u{3}\u{2}\u{2}\u{2}\u{1F0}\u{1F2}\u{7}\u{1E}\u{2}\u{2}'
      '\u{1F1}\u{1F0}\u{3}\u{2}\u{2}\u{2}\u{1F1}\u{1F2}\u{3}\u{2}\u{2}\u{2}'
      '\u{1F2}\u{1F3}\u{3}\u{2}\u{2}\u{2}\u{1F3}\u{1F4}\u{5}\u{34}\u{1B}\u{2}'
      '\u{1F4}\u{57}\u{3}\u{2}\u{2}\u{2}\u{1F5}\u{1F6}\u{7}\u{6}\u{2}\u{2}\u{1F6}'
      '\u{1FF}\u{7}\u{3D}\u{2}\u{2}\u{1F7}\u{1FA}\u{5}\u{5A}\u{2E}\u{2}\u{1F8}'
      '\u{1FA}\u{5}\u{5E}\u{30}\u{2}\u{1F9}\u{1F7}\u{3}\u{2}\u{2}\u{2}\u{1F9}'
      '\u{1F8}\u{3}\u{2}\u{2}\u{2}\u{1FA}\u{1FB}\u{3}\u{2}\u{2}\u{2}\u{1FB}'
      '\u{1FC}\u{5}\u{F6}\u{7C}\u{2}\u{1FC}\u{1FE}\u{3}\u{2}\u{2}\u{2}\u{1FD}'
      '\u{1F9}\u{3}\u{2}\u{2}\u{2}\u{1FE}\u{201}\u{3}\u{2}\u{2}\u{2}\u{1FF}'
      '\u{1FD}\u{3}\u{2}\u{2}\u{2}\u{1FF}\u{200}\u{3}\u{2}\u{2}\u{2}\u{200}'
      '\u{202}\u{3}\u{2}\u{2}\u{2}\u{201}\u{1FF}\u{3}\u{2}\u{2}\u{2}\u{202}'
      '\u{203}\u{7}\u{3E}\u{2}\u{2}\u{203}\u{59}\u{3}\u{2}\u{2}\u{2}\u{204}'
      '\u{205}\u{6}\u{2E}\u{4}\u{2}\u{205}\u{206}\u{5}\u{5C}\u{2F}\u{2}\u{206}'
      '\u{207}\u{5}\u{4E}\u{28}\u{2}\u{207}\u{5B}\u{3}\u{2}\u{2}\u{2}\u{208}'
      '\u{209}\u{7}\u{1A}\u{2}\u{2}\u{209}\u{5D}\u{3}\u{2}\u{2}\u{2}\u{20A}'
      '\u{20B}\u{5}\u{36}\u{1C}\u{2}\u{20B}\u{5F}\u{3}\u{2}\u{2}\u{2}\u{20C}'
      '\u{20D}\u{7}\u{3D}\u{2}\u{2}\u{20D}\u{20E}\u{5}\u{62}\u{32}\u{2}\u{20E}'
      '\u{20F}\u{7}\u{3E}\u{2}\u{2}\u{20F}\u{61}\u{3}\u{2}\u{2}\u{2}\u{210}'
      '\u{211}\u{5}\u{BE}\u{60}\u{2}\u{211}\u{212}\u{5}\u{F6}\u{7C}\u{2}\u{212}'
      '\u{214}\u{3}\u{2}\u{2}\u{2}\u{213}\u{210}\u{3}\u{2}\u{2}\u{2}\u{214}'
      '\u{217}\u{3}\u{2}\u{2}\u{2}\u{215}\u{213}\u{3}\u{2}\u{2}\u{2}\u{215}'
      '\u{216}\u{3}\u{2}\u{2}\u{2}\u{216}\u{63}\u{3}\u{2}\u{2}\u{2}\u{217}\u{215}'
      '\u{3}\u{2}\u{2}\u{2}\u{218}\u{219}\u{5}\u{1E}\u{10}\u{2}\u{219}\u{21A}'
      '\u{7}\u{32}\u{2}\u{2}\u{21A}\u{21B}\u{5}\u{22}\u{12}\u{2}\u{21B}\u{65}'
      '\u{3}\u{2}\u{2}\u{2}\u{21C}\u{21D}\u{7}\u{5}\u{2}\u{2}\u{21D}\u{21E}'
      '\u{5}\u{68}\u{35}\u{2}\u{21E}\u{220}\u{5}\u{4E}\u{28}\u{2}\u{21F}\u{221}'
      '\u{5}\u{6A}\u{36}\u{2}\u{220}\u{21F}\u{3}\u{2}\u{2}\u{2}\u{220}\u{221}'
      '\u{3}\u{2}\u{2}\u{2}\u{221}\u{67}\u{3}\u{2}\u{2}\u{2}\u{222}\u{223}\u{7}'
      '\u{1A}\u{2}\u{2}\u{223}\u{69}\u{3}\u{2}\u{2}\u{2}\u{224}\u{225}\u{5}'
      '\u{60}\u{31}\u{2}\u{225}\u{6B}\u{3}\u{2}\u{2}\u{2}\u{226}\u{227}\u{7}'
      '\u{5}\u{2}\u{2}\u{227}\u{228}\u{5}\u{52}\u{2A}\u{2}\u{228}\u{229}\u{5}'
      '\u{5C}\u{2F}\u{2}\u{229}\u{22B}\u{5}\u{4E}\u{28}\u{2}\u{22A}\u{22C}\u{5}'
      '\u{6A}\u{36}\u{2}\u{22B}\u{22A}\u{3}\u{2}\u{2}\u{2}\u{22B}\u{22C}\u{3}'
      '\u{2}\u{2}\u{2}\u{22C}\u{6D}\u{3}\u{2}\u{2}\u{2}\u{22D}\u{234}\u{5}\u{70}'
      '\u{39}\u{2}\u{22E}\u{234}\u{5}\u{8E}\u{48}\u{2}\u{22F}\u{230}\u{7}\u{3B}'
      '\u{2}\u{2}\u{230}\u{231}\u{5}\u{B0}\u{59}\u{2}\u{231}\u{232}\u{7}\u{3C}'
      '\u{2}\u{2}\u{232}\u{234}\u{3}\u{2}\u{2}\u{2}\u{233}\u{22D}\u{3}\u{2}'
      '\u{2}\u{2}\u{233}\u{22E}\u{3}\u{2}\u{2}\u{2}\u{233}\u{22F}\u{3}\u{2}'
      '\u{2}\u{2}\u{234}\u{6F}\u{3}\u{2}\u{2}\u{2}\u{235}\u{239}\u{5}\u{72}'
      '\u{3A}\u{2}\u{236}\u{239}\u{5}\u{92}\u{4A}\u{2}\u{237}\u{239}\u{5}\u{A2}'
      '\u{52}\u{2}\u{238}\u{235}\u{3}\u{2}\u{2}\u{2}\u{238}\u{236}\u{3}\u{2}'
      '\u{2}\u{2}\u{238}\u{237}\u{3}\u{2}\u{2}\u{2}\u{239}\u{71}\u{3}\u{2}\u{2}'
      '\u{2}\u{23A}\u{240}\u{5}\u{74}\u{3B}\u{2}\u{23B}\u{240}\u{5}\u{76}\u{3C}'
      '\u{2}\u{23C}\u{240}\u{5}\u{80}\u{41}\u{2}\u{23D}\u{240}\u{5}\u{86}\u{44}'
      '\u{2}\u{23E}\u{240}\u{5}\u{88}\u{45}\u{2}\u{23F}\u{23A}\u{3}\u{2}\u{2}'
      '\u{2}\u{23F}\u{23B}\u{3}\u{2}\u{2}\u{2}\u{23F}\u{23C}\u{3}\u{2}\u{2}'
      '\u{2}\u{23F}\u{23D}\u{3}\u{2}\u{2}\u{2}\u{23F}\u{23E}\u{3}\u{2}\u{2}'
      '\u{2}\u{240}\u{73}\u{3}\u{2}\u{2}\u{2}\u{241}\u{242}\u{7}\u{19}\u{2}'
      '\u{2}\u{242}\u{75}\u{3}\u{2}\u{2}\u{2}\u{243}\u{248}\u{5}\u{78}\u{3D}'
      '\u{2}\u{244}\u{248}\u{5}\u{7A}\u{3E}\u{2}\u{245}\u{248}\u{5}\u{7C}\u{3F}'
      '\u{2}\u{246}\u{248}\u{5}\u{7E}\u{40}\u{2}\u{247}\u{243}\u{3}\u{2}\u{2}'
      '\u{2}\u{247}\u{244}\u{3}\u{2}\u{2}\u{2}\u{247}\u{245}\u{3}\u{2}\u{2}'
      '\u{2}\u{247}\u{246}\u{3}\u{2}\u{2}\u{2}\u{248}\u{77}\u{3}\u{2}\u{2}\u{2}'
      '\u{249}\u{24A}\u{7}\u{4E}\u{2}\u{2}\u{24A}\u{79}\u{3}\u{2}\u{2}\u{2}'
      '\u{24B}\u{24C}\u{7}\u{4F}\u{2}\u{2}\u{24C}\u{7B}\u{3}\u{2}\u{2}\u{2}'
      '\u{24D}\u{24E}\u{7}\u{50}\u{2}\u{2}\u{24E}\u{7D}\u{3}\u{2}\u{2}\u{2}'
      '\u{24F}\u{250}\u{7}\u{51}\u{2}\u{2}\u{250}\u{7F}\u{3}\u{2}\u{2}\u{2}'
      '\u{251}\u{254}\u{5}\u{82}\u{42}\u{2}\u{252}\u{254}\u{5}\u{84}\u{43}\u{2}'
      '\u{253}\u{251}\u{3}\u{2}\u{2}\u{2}\u{253}\u{252}\u{3}\u{2}\u{2}\u{2}'
      '\u{254}\u{81}\u{3}\u{2}\u{2}\u{2}\u{255}\u{256}\u{7}\u{52}\u{2}\u{2}'
      '\u{256}\u{83}\u{3}\u{2}\u{2}\u{2}\u{257}\u{258}\u{7}\u{53}\u{2}\u{2}'
      '\u{258}\u{85}\u{3}\u{2}\u{2}\u{2}\u{259}\u{25A}\u{7}\u{54}\u{2}\u{2}'
      '\u{25A}\u{87}\u{3}\u{2}\u{2}\u{2}\u{25B}\u{25E}\u{5}\u{8A}\u{46}\u{2}'
      '\u{25C}\u{25E}\u{5}\u{8C}\u{47}\u{2}\u{25D}\u{25B}\u{3}\u{2}\u{2}\u{2}'
      '\u{25D}\u{25C}\u{3}\u{2}\u{2}\u{2}\u{25E}\u{89}\u{3}\u{2}\u{2}\u{2}\u{25F}'
      '\u{260}\u{7}\u{55}\u{2}\u{2}\u{260}\u{8B}\u{3}\u{2}\u{2}\u{2}\u{261}'
      '\u{262}\u{7}\u{56}\u{2}\u{2}\u{262}\u{8D}\u{3}\u{2}\u{2}\u{2}\u{263}'
      '\u{266}\u{5}\u{20}\u{11}\u{2}\u{264}\u{266}\u{5}\u{90}\u{49}\u{2}\u{265}'
      '\u{263}\u{3}\u{2}\u{2}\u{2}\u{265}\u{264}\u{3}\u{2}\u{2}\u{2}\u{266}'
      '\u{8F}\u{3}\u{2}\u{2}\u{2}\u{267}\u{268}\u{5}\u{A}\u{6}\u{2}\u{268}\u{269}'
      '\u{7}\u{44}\u{2}\u{2}\u{269}\u{26A}\u{7}\u{1A}\u{2}\u{2}\u{26A}\u{91}'
      '\u{3}\u{2}\u{2}\u{2}\u{26B}\u{26C}\u{5}\u{94}\u{4B}\u{2}\u{26C}\u{26D}'
      '\u{5}\u{96}\u{4C}\u{2}\u{26D}\u{93}\u{3}\u{2}\u{2}\u{2}\u{26E}\u{277}'
      '\u{5}\u{42}\u{22}\u{2}\u{26F}\u{277}\u{5}\u{3A}\u{1E}\u{2}\u{270}\u{271}'
      '\u{7}\u{3F}\u{2}\u{2}\u{271}\u{272}\u{7}\u{1E}\u{2}\u{2}\u{272}\u{273}'
      '\u{7}\u{40}\u{2}\u{2}\u{273}\u{277}\u{5}\u{3E}\u{20}\u{2}\u{274}\u{277}'
      '\u{5}\u{40}\u{21}\u{2}\u{275}\u{277}\u{5}\u{36}\u{1C}\u{2}\u{276}\u{26E}'
      '\u{3}\u{2}\u{2}\u{2}\u{276}\u{26F}\u{3}\u{2}\u{2}\u{2}\u{276}\u{270}'
      '\u{3}\u{2}\u{2}\u{2}\u{276}\u{274}\u{3}\u{2}\u{2}\u{2}\u{276}\u{275}'
      '\u{3}\u{2}\u{2}\u{2}\u{277}\u{95}\u{3}\u{2}\u{2}\u{2}\u{278}\u{27D}\u{7}'
      '\u{3D}\u{2}\u{2}\u{279}\u{27B}\u{5}\u{98}\u{4D}\u{2}\u{27A}\u{27C}\u{7}'
      '\u{41}\u{2}\u{2}\u{27B}\u{27A}\u{3}\u{2}\u{2}\u{2}\u{27B}\u{27C}\u{3}'
      '\u{2}\u{2}\u{2}\u{27C}\u{27E}\u{3}\u{2}\u{2}\u{2}\u{27D}\u{279}\u{3}'
      '\u{2}\u{2}\u{2}\u{27D}\u{27E}\u{3}\u{2}\u{2}\u{2}\u{27E}\u{27F}\u{3}'
      '\u{2}\u{2}\u{2}\u{27F}\u{280}\u{7}\u{3E}\u{2}\u{2}\u{280}\u{97}\u{3}'
      '\u{2}\u{2}\u{2}\u{281}\u{286}\u{5}\u{9A}\u{4E}\u{2}\u{282}\u{283}\u{7}'
      '\u{41}\u{2}\u{2}\u{283}\u{285}\u{5}\u{9A}\u{4E}\u{2}\u{284}\u{282}\u{3}'
      '\u{2}\u{2}\u{2}\u{285}\u{288}\u{3}\u{2}\u{2}\u{2}\u{286}\u{284}\u{3}'
      '\u{2}\u{2}\u{2}\u{286}\u{287}\u{3}\u{2}\u{2}\u{2}\u{287}\u{99}\u{3}\u{2}'
      '\u{2}\u{2}\u{288}\u{286}\u{3}\u{2}\u{2}\u{2}\u{289}\u{28A}\u{5}\u{9C}'
      '\u{4F}\u{2}\u{28A}\u{28B}\u{7}\u{43}\u{2}\u{2}\u{28B}\u{28D}\u{3}\u{2}'
      '\u{2}\u{2}\u{28C}\u{289}\u{3}\u{2}\u{2}\u{2}\u{28C}\u{28D}\u{3}\u{2}'
      '\u{2}\u{2}\u{28D}\u{28E}\u{3}\u{2}\u{2}\u{2}\u{28E}\u{28F}\u{5}\u{A0}'
      '\u{51}\u{2}\u{28F}\u{9B}\u{3}\u{2}\u{2}\u{2}\u{290}\u{294}\u{5}\u{9E}'
      '\u{50}\u{2}\u{291}\u{294}\u{5}\u{B0}\u{59}\u{2}\u{292}\u{294}\u{5}\u{96}'
      '\u{4C}\u{2}\u{293}\u{290}\u{3}\u{2}\u{2}\u{2}\u{293}\u{291}\u{3}\u{2}'
      '\u{2}\u{2}\u{293}\u{292}\u{3}\u{2}\u{2}\u{2}\u{294}\u{9D}\u{3}\u{2}\u{2}'
      '\u{2}\u{295}\u{296}\u{7}\u{1A}\u{2}\u{2}\u{296}\u{9F}\u{3}\u{2}\u{2}'
      '\u{2}\u{297}\u{29A}\u{5}\u{B0}\u{59}\u{2}\u{298}\u{29A}\u{5}\u{96}\u{4C}'
      '\u{2}\u{299}\u{297}\u{3}\u{2}\u{2}\u{2}\u{299}\u{298}\u{3}\u{2}\u{2}'
      '\u{2}\u{29A}\u{A1}\u{3}\u{2}\u{2}\u{2}\u{29B}\u{29C}\u{7}\u{5}\u{2}\u{2}'
      '\u{29C}\u{29D}\u{5}\u{4E}\u{28}\u{2}\u{29D}\u{29E}\u{5}\u{6A}\u{36}\u{2}'
      '\u{29E}\u{A3}\u{3}\u{2}\u{2}\u{2}\u{29F}\u{2A0}\u{8}\u{53}\u{1}\u{2}'
      '\u{2A0}\u{2A4}\u{5}\u{6E}\u{38}\u{2}\u{2A1}\u{2A4}\u{5}\u{BC}\u{5F}\u{2}'
      '\u{2A2}\u{2A4}\u{5}\u{AE}\u{58}\u{2}\u{2A3}\u{29F}\u{3}\u{2}\u{2}\u{2}'
      '\u{2A3}\u{2A1}\u{3}\u{2}\u{2}\u{2}\u{2A3}\u{2A2}\u{3}\u{2}\u{2}\u{2}'
      '\u{2A4}\u{2AF}\u{3}\u{2}\u{2}\u{2}\u{2A5}\u{2A6}\u{C}\u{6}\u{2}\u{2}'
      '\u{2A6}\u{2AE}\u{5}\u{A6}\u{54}\u{2}\u{2A7}\u{2A8}\u{C}\u{5}\u{2}\u{2}'
      '\u{2A8}\u{2AE}\u{5}\u{A8}\u{55}\u{2}\u{2A9}\u{2AA}\u{C}\u{4}\u{2}\u{2}'
      '\u{2AA}\u{2AE}\u{5}\u{AA}\u{56}\u{2}\u{2AB}\u{2AC}\u{C}\u{3}\u{2}\u{2}'
      '\u{2AC}\u{2AE}\u{5}\u{AC}\u{57}\u{2}\u{2AD}\u{2A5}\u{3}\u{2}\u{2}\u{2}'
      '\u{2AD}\u{2A7}\u{3}\u{2}\u{2}\u{2}\u{2AD}\u{2A9}\u{3}\u{2}\u{2}\u{2}'
      '\u{2AD}\u{2AB}\u{3}\u{2}\u{2}\u{2}\u{2AE}\u{2B1}\u{3}\u{2}\u{2}\u{2}'
      '\u{2AF}\u{2AD}\u{3}\u{2}\u{2}\u{2}\u{2AF}\u{2B0}\u{3}\u{2}\u{2}\u{2}'
      '\u{2B0}\u{A5}\u{3}\u{2}\u{2}\u{2}\u{2B1}\u{2AF}\u{3}\u{2}\u{2}\u{2}\u{2B2}'
      '\u{2B3}\u{7}\u{44}\u{2}\u{2}\u{2B3}\u{2B4}\u{7}\u{1A}\u{2}\u{2}\u{2B4}'
      '\u{A7}\u{3}\u{2}\u{2}\u{2}\u{2B5}\u{2B6}\u{7}\u{3F}\u{2}\u{2}\u{2B6}'
      '\u{2B7}\u{5}\u{B0}\u{59}\u{2}\u{2B7}\u{2B8}\u{7}\u{40}\u{2}\u{2}\u{2B8}'
      '\u{A9}\u{3}\u{2}\u{2}\u{2}\u{2B9}\u{2BB}\u{7}\u{3F}\u{2}\u{2}\u{2BA}'
      '\u{2BC}\u{5}\u{B0}\u{59}\u{2}\u{2BB}\u{2BA}\u{3}\u{2}\u{2}\u{2}\u{2BB}'
      '\u{2BC}\u{3}\u{2}\u{2}\u{2}\u{2BC}\u{2BD}\u{3}\u{2}\u{2}\u{2}\u{2BD}'
      '\u{2BF}\u{7}\u{43}\u{2}\u{2}\u{2BE}\u{2C0}\u{5}\u{B0}\u{59}\u{2}\u{2BF}'
      '\u{2BE}\u{3}\u{2}\u{2}\u{2}\u{2BF}\u{2C0}\u{3}\u{2}\u{2}\u{2}\u{2C0}'
      '\u{2C1}\u{3}\u{2}\u{2}\u{2}\u{2C1}\u{2C2}\u{7}\u{40}\u{2}\u{2}\u{2C2}'
      '\u{AB}\u{3}\u{2}\u{2}\u{2}\u{2C3}\u{2D2}\u{7}\u{3B}\u{2}\u{2}\u{2C4}'
      '\u{2CB}\u{5}\u{22}\u{12}\u{2}\u{2C5}\u{2C8}\u{5}\u{34}\u{1B}\u{2}\u{2C6}'
      '\u{2C7}\u{7}\u{41}\u{2}\u{2}\u{2C7}\u{2C9}\u{5}\u{22}\u{12}\u{2}\u{2C8}'
      '\u{2C6}\u{3}\u{2}\u{2}\u{2}\u{2C8}\u{2C9}\u{3}\u{2}\u{2}\u{2}\u{2C9}'
      '\u{2CB}\u{3}\u{2}\u{2}\u{2}\u{2CA}\u{2C4}\u{3}\u{2}\u{2}\u{2}\u{2CA}'
      '\u{2C5}\u{3}\u{2}\u{2}\u{2}\u{2CB}\u{2CD}\u{3}\u{2}\u{2}\u{2}\u{2CC}'
      '\u{2CE}\u{7}\u{1E}\u{2}\u{2}\u{2CD}\u{2CC}\u{3}\u{2}\u{2}\u{2}\u{2CD}'
      '\u{2CE}\u{3}\u{2}\u{2}\u{2}\u{2CE}\u{2D0}\u{3}\u{2}\u{2}\u{2}\u{2CF}'
      '\u{2D1}\u{7}\u{41}\u{2}\u{2}\u{2D0}\u{2CF}\u{3}\u{2}\u{2}\u{2}\u{2D0}'
      '\u{2D1}\u{3}\u{2}\u{2}\u{2}\u{2D1}\u{2D3}\u{3}\u{2}\u{2}\u{2}\u{2D2}'
      '\u{2CA}\u{3}\u{2}\u{2}\u{2}\u{2D2}\u{2D3}\u{3}\u{2}\u{2}\u{2}\u{2D3}'
      '\u{2D4}\u{3}\u{2}\u{2}\u{2}\u{2D4}\u{2D5}\u{7}\u{3C}\u{2}\u{2}\u{2D5}'
      '\u{AD}\u{3}\u{2}\u{2}\u{2}\u{2D6}\u{2D7}\u{5}\u{34}\u{1B}\u{2}\u{2D7}'
      '\u{2D8}\u{7}\u{44}\u{2}\u{2}\u{2D8}\u{2D9}\u{5}\u{5C}\u{2F}\u{2}\u{2D9}'
      '\u{AF}\u{3}\u{2}\u{2}\u{2}\u{2DA}\u{2DB}\u{8}\u{59}\u{1}\u{2}\u{2DB}'
      '\u{2DC}\u{5}\u{B2}\u{5A}\u{2}\u{2DC}\u{2F1}\u{3}\u{2}\u{2}\u{2}\u{2DD}'
      '\u{2DE}\u{C}\u{7}\u{2}\u{2}\u{2DE}\u{2DF}\u{5}\u{B6}\u{5C}\u{2}\u{2DF}'
      '\u{2E0}\u{5}\u{B0}\u{59}\u{8}\u{2E0}\u{2F0}\u{3}\u{2}\u{2}\u{2}\u{2E1}'
      '\u{2E2}\u{C}\u{6}\u{2}\u{2}\u{2E2}\u{2E3}\u{5}\u{B8}\u{5D}\u{2}\u{2E3}'
      '\u{2E4}\u{5}\u{B0}\u{59}\u{7}\u{2E4}\u{2F0}\u{3}\u{2}\u{2}\u{2}\u{2E5}'
      '\u{2E6}\u{C}\u{5}\u{2}\u{2}\u{2E6}\u{2E7}\u{5}\u{BA}\u{5E}\u{2}\u{2E7}'
      '\u{2E8}\u{5}\u{B0}\u{59}\u{6}\u{2E8}\u{2F0}\u{3}\u{2}\u{2}\u{2}\u{2E9}'
      '\u{2EA}\u{C}\u{4}\u{2}\u{2}\u{2EA}\u{2EB}\u{7}\u{1F}\u{2}\u{2}\u{2EB}'
      '\u{2F0}\u{5}\u{B0}\u{59}\u{5}\u{2EC}\u{2ED}\u{C}\u{3}\u{2}\u{2}\u{2ED}'
      '\u{2EE}\u{7}\u{20}\u{2}\u{2}\u{2EE}\u{2F0}\u{5}\u{B0}\u{59}\u{4}\u{2EF}'
      '\u{2DD}\u{3}\u{2}\u{2}\u{2}\u{2EF}\u{2E1}\u{3}\u{2}\u{2}\u{2}\u{2EF}'
      '\u{2E5}\u{3}\u{2}\u{2}\u{2}\u{2EF}\u{2E9}\u{3}\u{2}\u{2}\u{2}\u{2EF}'
      '\u{2EC}\u{3}\u{2}\u{2}\u{2}\u{2F0}\u{2F3}\u{3}\u{2}\u{2}\u{2}\u{2F1}'
      '\u{2EF}\u{3}\u{2}\u{2}\u{2}\u{2F1}\u{2F2}\u{3}\u{2}\u{2}\u{2}\u{2F2}'
      '\u{B1}\u{3}\u{2}\u{2}\u{2}\u{2F3}\u{2F1}\u{3}\u{2}\u{2}\u{2}\u{2F4}\u{2F9}'
      '\u{5}\u{A4}\u{53}\u{2}\u{2F5}\u{2F6}\u{5}\u{B4}\u{5B}\u{2}\u{2F6}\u{2F7}'
      '\u{5}\u{B2}\u{5A}\u{2}\u{2F7}\u{2F9}\u{3}\u{2}\u{2}\u{2}\u{2F8}\u{2F4}'
      '\u{3}\u{2}\u{2}\u{2}\u{2F8}\u{2F5}\u{3}\u{2}\u{2}\u{2}\u{2F9}\u{B3}\u{3}'
      '\u{2}\u{2}\u{2}\u{2FA}\u{2FB}\u{9}\u{2}\u{2}\u{2}\u{2FB}\u{B5}\u{3}\u{2}'
      '\u{2}\u{2}\u{2FC}\u{2FD}\u{9}\u{3}\u{2}\u{2}\u{2FD}\u{B7}\u{3}\u{2}\u{2}'
      '\u{2}\u{2FE}\u{2FF}\u{9}\u{4}\u{2}\u{2}\u{2FF}\u{B9}\u{3}\u{2}\u{2}\u{2}'
      '\u{300}\u{301}\u{9}\u{5}\u{2}\u{2}\u{301}\u{BB}\u{3}\u{2}\u{2}\u{2}\u{302}'
      '\u{303}\u{5}\u{34}\u{1B}\u{2}\u{303}\u{304}\u{7}\u{3B}\u{2}\u{2}\u{304}'
      '\u{305}\u{5}\u{B0}\u{59}\u{2}\u{305}\u{306}\u{7}\u{3C}\u{2}\u{2}\u{306}'
      '\u{BD}\u{3}\u{2}\u{2}\u{2}\u{307}\u{314}\u{5}\u{16}\u{C}\u{2}\u{308}'
      '\u{314}\u{5}\u{C4}\u{63}\u{2}\u{309}\u{314}\u{5}\u{C0}\u{61}\u{2}\u{30A}'
      '\u{314}\u{5}\u{EC}\u{77}\u{2}\u{30B}\u{314}\u{5}\u{EE}\u{78}\u{2}\u{30C}'
      '\u{314}\u{5}\u{F0}\u{79}\u{2}\u{30D}\u{314}\u{5}\u{F2}\u{7A}\u{2}\u{30E}'
      '\u{314}\u{5}\u{F4}\u{7B}\u{2}\u{30F}\u{314}\u{5}\u{60}\u{31}\u{2}\u{310}'
      '\u{314}\u{5}\u{D0}\u{69}\u{2}\u{311}\u{314}\u{5}\u{D2}\u{6A}\u{2}\u{312}'
      '\u{314}\u{5}\u{E4}\u{73}\u{2}\u{313}\u{307}\u{3}\u{2}\u{2}\u{2}\u{313}'
      '\u{308}\u{3}\u{2}\u{2}\u{2}\u{313}\u{309}\u{3}\u{2}\u{2}\u{2}\u{313}'
      '\u{30A}\u{3}\u{2}\u{2}\u{2}\u{313}\u{30B}\u{3}\u{2}\u{2}\u{2}\u{313}'
      '\u{30C}\u{3}\u{2}\u{2}\u{2}\u{313}\u{30D}\u{3}\u{2}\u{2}\u{2}\u{313}'
      '\u{30E}\u{3}\u{2}\u{2}\u{2}\u{313}\u{30F}\u{3}\u{2}\u{2}\u{2}\u{313}'
      '\u{310}\u{3}\u{2}\u{2}\u{2}\u{313}\u{311}\u{3}\u{2}\u{2}\u{2}\u{313}'
      '\u{312}\u{3}\u{2}\u{2}\u{2}\u{314}\u{BF}\u{3}\u{2}\u{2}\u{2}\u{315}\u{31B}'
      '\u{5}\u{C2}\u{62}\u{2}\u{316}\u{31B}\u{5}\u{C8}\u{65}\u{2}\u{317}\u{31B}'
      '\u{5}\u{CA}\u{66}\u{2}\u{318}\u{31B}\u{5}\u{CC}\u{67}\u{2}\u{319}\u{31B}'
      '\u{5}\u{64}\u{33}\u{2}\u{31A}\u{315}\u{3}\u{2}\u{2}\u{2}\u{31A}\u{316}'
      '\u{3}\u{2}\u{2}\u{2}\u{31A}\u{317}\u{3}\u{2}\u{2}\u{2}\u{31A}\u{318}'
      '\u{3}\u{2}\u{2}\u{2}\u{31A}\u{319}\u{3}\u{2}\u{2}\u{2}\u{31B}\u{C1}\u{3}'
      '\u{2}\u{2}\u{2}\u{31C}\u{31D}\u{7}\u{42}\u{2}\u{2}\u{31D}\u{C3}\u{3}'
      '\u{2}\u{2}\u{2}\u{31E}\u{31F}\u{5}\u{C6}\u{64}\u{2}\u{31F}\u{320}\u{7}'
      '\u{43}\u{2}\u{2}\u{320}\u{321}\u{5}\u{BE}\u{60}\u{2}\u{321}\u{C5}\u{3}'
      '\u{2}\u{2}\u{2}\u{322}\u{323}\u{7}\u{1A}\u{2}\u{2}\u{323}\u{C7}\u{3}'
      '\u{2}\u{2}\u{2}\u{324}\u{325}\u{5}\u{B0}\u{59}\u{2}\u{325}\u{C9}\u{3}'
      '\u{2}\u{2}\u{2}\u{326}\u{327}\u{5}\u{B0}\u{59}\u{2}\u{327}\u{328}\u{7}'
      '\u{21}\u{2}\u{2}\u{328}\u{32D}\u{3}\u{2}\u{2}\u{2}\u{329}\u{32A}\u{5}'
      '\u{B0}\u{59}\u{2}\u{32A}\u{32B}\u{7}\u{22}\u{2}\u{2}\u{32B}\u{32D}\u{3}'
      '\u{2}\u{2}\u{2}\u{32C}\u{326}\u{3}\u{2}\u{2}\u{2}\u{32C}\u{329}\u{3}'
      '\u{2}\u{2}\u{2}\u{32D}\u{CB}\u{3}\u{2}\u{2}\u{2}\u{32E}\u{32F}\u{5}\u{22}'
      '\u{12}\u{2}\u{32F}\u{330}\u{5}\u{CE}\u{68}\u{2}\u{330}\u{331}\u{5}\u{22}'
      '\u{12}\u{2}\u{331}\u{CD}\u{3}\u{2}\u{2}\u{2}\u{332}\u{335}\u{5}\u{B6}'
      '\u{5C}\u{2}\u{333}\u{335}\u{5}\u{B8}\u{5D}\u{2}\u{334}\u{332}\u{3}\u{2}'
      '\u{2}\u{2}\u{334}\u{333}\u{3}\u{2}\u{2}\u{2}\u{334}\u{335}\u{3}\u{2}'
      '\u{2}\u{2}\u{335}\u{336}\u{3}\u{2}\u{2}\u{2}\u{336}\u{337}\u{7}\u{48}'
      '\u{2}\u{2}\u{337}\u{CF}\u{3}\u{2}\u{2}\u{2}\u{338}\u{33C}\u{7}\u{11}'
      '\u{2}\u{2}\u{339}\u{33A}\u{5}\u{C0}\u{61}\u{2}\u{33A}\u{33B}\u{7}\u{42}'
      '\u{2}\u{2}\u{33B}\u{33D}\u{3}\u{2}\u{2}\u{2}\u{33C}\u{339}\u{3}\u{2}'
      '\u{2}\u{2}\u{33C}\u{33D}\u{3}\u{2}\u{2}\u{2}\u{33D}\u{33E}\u{3}\u{2}'
      '\u{2}\u{2}\u{33E}\u{33F}\u{5}\u{B0}\u{59}\u{2}\u{33F}\u{345}\u{5}\u{60}'
      '\u{31}\u{2}\u{340}\u{343}\u{7}\u{B}\u{2}\u{2}\u{341}\u{344}\u{5}\u{D0}'
      '\u{69}\u{2}\u{342}\u{344}\u{5}\u{60}\u{31}\u{2}\u{343}\u{341}\u{3}\u{2}'
      '\u{2}\u{2}\u{343}\u{342}\u{3}\u{2}\u{2}\u{2}\u{344}\u{346}\u{3}\u{2}'
      '\u{2}\u{2}\u{345}\u{340}\u{3}\u{2}\u{2}\u{2}\u{345}\u{346}\u{3}\u{2}'
      '\u{2}\u{2}\u{346}\u{D1}\u{3}\u{2}\u{2}\u{2}\u{347}\u{34A}\u{5}\u{D4}'
      '\u{6B}\u{2}\u{348}\u{34A}\u{5}\u{DA}\u{6E}\u{2}\u{349}\u{347}\u{3}\u{2}'
      '\u{2}\u{2}\u{349}\u{348}\u{3}\u{2}\u{2}\u{2}\u{34A}\u{D3}\u{3}\u{2}\u{2}'
      '\u{2}\u{34B}\u{34F}\u{7}\u{E}\u{2}\u{2}\u{34C}\u{34D}\u{5}\u{C0}\u{61}'
      '\u{2}\u{34D}\u{34E}\u{7}\u{42}\u{2}\u{2}\u{34E}\u{350}\u{3}\u{2}\u{2}'
      '\u{2}\u{34F}\u{34C}\u{3}\u{2}\u{2}\u{2}\u{34F}\u{350}\u{3}\u{2}\u{2}'
      '\u{2}\u{350}\u{352}\u{3}\u{2}\u{2}\u{2}\u{351}\u{353}\u{5}\u{B0}\u{59}'
      '\u{2}\u{352}\u{351}\u{3}\u{2}\u{2}\u{2}\u{352}\u{353}\u{3}\u{2}\u{2}'
      '\u{2}\u{353}\u{354}\u{3}\u{2}\u{2}\u{2}\u{354}\u{355}\u{7}\u{3D}\u{2}'
      '\u{2}\u{355}\u{356}\u{5}\u{D6}\u{6C}\u{2}\u{356}\u{357}\u{7}\u{3E}\u{2}'
      '\u{2}\u{357}\u{D5}\u{3}\u{2}\u{2}\u{2}\u{358}\u{359}\u{5}\u{D8}\u{6D}'
      '\u{2}\u{359}\u{35A}\u{7}\u{43}\u{2}\u{2}\u{35A}\u{35B}\u{5}\u{62}\u{32}'
      '\u{2}\u{35B}\u{D7}\u{3}\u{2}\u{2}\u{2}\u{35C}\u{35D}\u{7}\u{8}\u{2}\u{2}'
      '\u{35D}\u{360}\u{5}\u{22}\u{12}\u{2}\u{35E}\u{360}\u{7}\u{4}\u{2}\u{2}'
      '\u{35F}\u{35C}\u{3}\u{2}\u{2}\u{2}\u{35F}\u{35E}\u{3}\u{2}\u{2}\u{2}'
      '\u{360}\u{D9}\u{3}\u{2}\u{2}\u{2}\u{361}\u{365}\u{7}\u{E}\u{2}\u{2}\u{362}'
      '\u{363}\u{5}\u{C0}\u{61}\u{2}\u{363}\u{364}\u{7}\u{42}\u{2}\u{2}\u{364}'
      '\u{366}\u{3}\u{2}\u{2}\u{2}\u{365}\u{362}\u{3}\u{2}\u{2}\u{2}\u{365}'
      '\u{366}\u{3}\u{2}\u{2}\u{2}\u{366}\u{367}\u{3}\u{2}\u{2}\u{2}\u{367}'
      '\u{368}\u{5}\u{DC}\u{6F}\u{2}\u{368}\u{369}\u{7}\u{3D}\u{2}\u{2}\u{369}'
      '\u{36A}\u{5}\u{DE}\u{70}\u{2}\u{36A}\u{36B}\u{7}\u{3E}\u{2}\u{2}\u{36B}'
      '\u{DB}\u{3}\u{2}\u{2}\u{2}\u{36C}\u{36D}\u{7}\u{1A}\u{2}\u{2}\u{36D}'
      '\u{36F}\u{7}\u{32}\u{2}\u{2}\u{36E}\u{36C}\u{3}\u{2}\u{2}\u{2}\u{36E}'
      '\u{36F}\u{3}\u{2}\u{2}\u{2}\u{36F}\u{370}\u{3}\u{2}\u{2}\u{2}\u{370}'
      '\u{371}\u{5}\u{A4}\u{53}\u{2}\u{371}\u{372}\u{7}\u{44}\u{2}\u{2}\u{372}'
      '\u{373}\u{7}\u{3B}\u{2}\u{2}\u{373}\u{374}\u{7}\u{13}\u{2}\u{2}\u{374}'
      '\u{375}\u{7}\u{3C}\u{2}\u{2}\u{375}\u{DD}\u{3}\u{2}\u{2}\u{2}\u{376}'
      '\u{377}\u{5}\u{E0}\u{71}\u{2}\u{377}\u{378}\u{7}\u{43}\u{2}\u{2}\u{378}'
      '\u{379}\u{5}\u{62}\u{32}\u{2}\u{379}\u{DF}\u{3}\u{2}\u{2}\u{2}\u{37A}'
      '\u{37B}\u{7}\u{8}\u{2}\u{2}\u{37B}\u{37E}\u{5}\u{E2}\u{72}\u{2}\u{37C}'
      '\u{37E}\u{7}\u{4}\u{2}\u{2}\u{37D}\u{37A}\u{3}\u{2}\u{2}\u{2}\u{37D}'
      '\u{37C}\u{3}\u{2}\u{2}\u{2}\u{37E}\u{E1}\u{3}\u{2}\u{2}\u{2}\u{37F}\u{384}'
      '\u{5}\u{34}\u{1B}\u{2}\u{380}\u{381}\u{7}\u{41}\u{2}\u{2}\u{381}\u{383}'
      '\u{5}\u{34}\u{1B}\u{2}\u{382}\u{380}\u{3}\u{2}\u{2}\u{2}\u{383}\u{386}'
      '\u{3}\u{2}\u{2}\u{2}\u{384}\u{382}\u{3}\u{2}\u{2}\u{2}\u{384}\u{385}'
      '\u{3}\u{2}\u{2}\u{2}\u{385}\u{E3}\u{3}\u{2}\u{2}\u{2}\u{386}\u{384}\u{3}'
      '\u{2}\u{2}\u{2}\u{387}\u{38B}\u{7}\u{15}\u{2}\u{2}\u{388}\u{38C}\u{5}'
      '\u{E6}\u{74}\u{2}\u{389}\u{38C}\u{5}\u{E8}\u{75}\u{2}\u{38A}\u{38C}\u{5}'
      '\u{EA}\u{76}\u{2}\u{38B}\u{388}\u{3}\u{2}\u{2}\u{2}\u{38B}\u{389}\u{3}'
      '\u{2}\u{2}\u{2}\u{38B}\u{38A}\u{3}\u{2}\u{2}\u{2}\u{38B}\u{38C}\u{3}'
      '\u{2}\u{2}\u{2}\u{38C}\u{38D}\u{3}\u{2}\u{2}\u{2}\u{38D}\u{38E}\u{5}'
      '\u{60}\u{31}\u{2}\u{38E}\u{E5}\u{3}\u{2}\u{2}\u{2}\u{38F}\u{390}\u{5}'
      '\u{B0}\u{59}\u{2}\u{390}\u{E7}\u{3}\u{2}\u{2}\u{2}\u{391}\u{393}\u{5}'
      '\u{C0}\u{61}\u{2}\u{392}\u{391}\u{3}\u{2}\u{2}\u{2}\u{392}\u{393}\u{3}'
      '\u{2}\u{2}\u{2}\u{393}\u{394}\u{3}\u{2}\u{2}\u{2}\u{394}\u{396}\u{7}'
      '\u{42}\u{2}\u{2}\u{395}\u{397}\u{5}\u{E6}\u{74}\u{2}\u{396}\u{395}\u{3}'
      '\u{2}\u{2}\u{2}\u{396}\u{397}\u{3}\u{2}\u{2}\u{2}\u{397}\u{398}\u{3}'
      '\u{2}\u{2}\u{2}\u{398}\u{39A}\u{7}\u{42}\u{2}\u{2}\u{399}\u{39B}\u{5}'
      '\u{C0}\u{61}\u{2}\u{39A}\u{399}\u{3}\u{2}\u{2}\u{2}\u{39A}\u{39B}\u{3}'
      '\u{2}\u{2}\u{2}\u{39B}\u{E9}\u{3}\u{2}\u{2}\u{2}\u{39C}\u{39D}\u{5}\u{1E}'
      '\u{10}\u{2}\u{39D}\u{39E}\u{7}\u{32}\u{2}\u{2}\u{39E}\u{3A0}\u{3}\u{2}'
      '\u{2}\u{2}\u{39F}\u{39C}\u{3}\u{2}\u{2}\u{2}\u{39F}\u{3A0}\u{3}\u{2}'
      '\u{2}\u{2}\u{3A0}\u{3A1}\u{3}\u{2}\u{2}\u{2}\u{3A1}\u{3A2}\u{7}\u{12}'
      '\u{2}\u{2}\u{3A2}\u{3A3}\u{5}\u{B0}\u{59}\u{2}\u{3A3}\u{EB}\u{3}\u{2}'
      '\u{2}\u{2}\u{3A4}\u{3A6}\u{7}\u{17}\u{2}\u{2}\u{3A5}\u{3A7}\u{5}\u{22}'
      '\u{12}\u{2}\u{3A6}\u{3A5}\u{3}\u{2}\u{2}\u{2}\u{3A6}\u{3A7}\u{3}\u{2}'
      '\u{2}\u{2}\u{3A7}\u{ED}\u{3}\u{2}\u{2}\u{2}\u{3A8}\u{3AA}\u{7}\u{3}\u{2}'
      '\u{2}\u{3A9}\u{3AB}\u{5}\u{C6}\u{64}\u{2}\u{3AA}\u{3A9}\u{3}\u{2}\u{2}'
      '\u{2}\u{3AA}\u{3AB}\u{3}\u{2}\u{2}\u{2}\u{3AB}\u{EF}\u{3}\u{2}\u{2}\u{2}'
      '\u{3AC}\u{3AE}\u{7}\u{14}\u{2}\u{2}\u{3AD}\u{3AF}\u{5}\u{C6}\u{64}\u{2}'
      '\u{3AE}\u{3AD}\u{3}\u{2}\u{2}\u{2}\u{3AE}\u{3AF}\u{3}\u{2}\u{2}\u{2}'
      '\u{3AF}\u{F1}\u{3}\u{2}\u{2}\u{2}\u{3B0}\u{3B1}\u{7}\u{C}\u{2}\u{2}\u{3B1}'
      '\u{3B2}\u{5}\u{C6}\u{64}\u{2}\u{3B2}\u{F3}\u{3}\u{2}\u{2}\u{2}\u{3B3}'
      '\u{3B4}\u{7}\u{10}\u{2}\u{2}\u{3B4}\u{F5}\u{3}\u{2}\u{2}\u{2}\u{3B5}'
      '\u{3BA}\u{7}\u{42}\u{2}\u{2}\u{3B6}\u{3BA}\u{7}\u{2}\u{2}\u{3}\u{3B7}'
      '\u{3BA}\u{6}\u{7C}\u{E}\u{2}\u{3B8}\u{3BA}\u{6}\u{7C}\u{F}\u{2}\u{3B9}'
      '\u{3B5}\u{3}\u{2}\u{2}\u{2}\u{3B9}\u{3B6}\u{3}\u{2}\u{2}\u{2}\u{3B9}'
      '\u{3B7}\u{3}\u{2}\u{2}\u{2}\u{3B9}\u{3B8}\u{3}\u{2}\u{2}\u{2}\u{3BA}'
      '\u{F7}\u{3}\u{2}\u{2}\u{2}\u{5B}\u{102}\u{10A}\u{119}\u{120}\u{124}\u{12D}'
      '\u{132}\u{13A}\u{141}\u{146}\u{14A}\u{151}\u{15B}\u{164}\u{16B}\u{170}'
      '\u{17F}\u{186}\u{18D}\u{191}\u{199}\u{19D}\u{1A5}\u{1BE}\u{1C6}\u{1C9}'
      '\u{1D6}\u{1DA}\u{1DF}\u{1E1}\u{1EA}\u{1EE}\u{1F1}\u{1F9}\u{1FF}\u{215}'
      '\u{220}\u{22B}\u{233}\u{238}\u{23F}\u{247}\u{253}\u{25D}\u{265}\u{276}'
      '\u{27B}\u{27D}\u{286}\u{28C}\u{293}\u{299}\u{2A3}\u{2AD}\u{2AF}\u{2BB}'
      '\u{2BF}\u{2C8}\u{2CA}\u{2CD}\u{2D0}\u{2D2}\u{2EF}\u{2F1}\u{2F8}\u{313}'
      '\u{31A}\u{32C}\u{334}\u{33C}\u{343}\u{345}\u{349}\u{34F}\u{352}\u{35F}'
      '\u{365}\u{36E}\u{37D}\u{384}\u{38B}\u{392}\u{396}\u{39A}\u{39F}\u{3A6}'
      '\u{3AA}\u{3AE}\u{3B9}';
  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN.codeUnits);
}

class SourceFileContext extends ParserRuleContext {
  PackageClauseContext packageClause() =>
      getRuleContext<PackageClauseContext>(0);
  EosContext eos() => getRuleContext<EosContext>(0);
  ImportDeclListContext importDeclList() =>
      getRuleContext<ImportDeclListContext>(0);
  TopLevelDeclListContext topLevelDeclList() =>
      getRuleContext<TopLevelDeclListContext>(0);
  SourceFileContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_sourceFile;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterSourceFile(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitSourceFile(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitSourceFile(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ImportDeclListContext extends ParserRuleContext {
  List<ImportDeclContext> importDecls() => getRuleContexts<ImportDeclContext>();
  ImportDeclContext importDecl(int i) => getRuleContext<ImportDeclContext>(i);
  List<EosContext> eoss() => getRuleContexts<EosContext>();
  EosContext eos(int i) => getRuleContext<EosContext>(i);
  ImportDeclListContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_importDeclList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterImportDeclList(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitImportDeclList(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitImportDeclList(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TopLevelDeclListContext extends ParserRuleContext {
  List<TopLevelDeclContext> topLevelDecls() =>
      getRuleContexts<TopLevelDeclContext>();
  TopLevelDeclContext topLevelDecl(int i) =>
      getRuleContext<TopLevelDeclContext>(i);
  List<EosContext> eoss() => getRuleContexts<EosContext>();
  EosContext eos(int i) => getRuleContext<EosContext>(i);
  TopLevelDeclListContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_topLevelDeclList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterTopLevelDeclList(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitTopLevelDeclList(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitTopLevelDeclList(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class PackageClauseContext extends ParserRuleContext {
  TerminalNode PACKAGE() => getToken(MicroGoParser.TOKEN_PACKAGE, 0);
  PackageNameContext packageName() => getRuleContext<PackageNameContext>(0);
  PackageClauseContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_packageClause;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterPackageClause(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitPackageClause(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitPackageClause(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class PackageNameContext extends ParserRuleContext {
  TerminalNode IDENTIFIER() => getToken(MicroGoParser.TOKEN_IDENTIFIER, 0);
  PackageNameContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_packageName;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterPackageName(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitPackageName(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitPackageName(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ImportDeclContext extends ParserRuleContext {
  TerminalNode IMPORT() => getToken(MicroGoParser.TOKEN_IMPORT, 0);
  ImportSpecContext importSpec() => getRuleContext<ImportSpecContext>(0);
  TerminalNode L_PAREN() => getToken(MicroGoParser.TOKEN_L_PAREN, 0);
  ImportSpecListContext importSpecList() =>
      getRuleContext<ImportSpecListContext>(0);
  TerminalNode R_PAREN() => getToken(MicroGoParser.TOKEN_R_PAREN, 0);
  ImportDeclContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_importDecl;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterImportDecl(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitImportDecl(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitImportDecl(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ImportSpecListContext extends ParserRuleContext {
  List<ImportSpecContext> importSpecs() => getRuleContexts<ImportSpecContext>();
  ImportSpecContext importSpec(int i) => getRuleContext<ImportSpecContext>(i);
  List<EosContext> eoss() => getRuleContexts<EosContext>();
  EosContext eos(int i) => getRuleContext<EosContext>(i);
  ImportSpecListContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_importSpecList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterImportSpecList(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitImportSpecList(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitImportSpecList(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ImportSpecContext extends ParserRuleContext {
  ImportPathContext importPath() => getRuleContext<ImportPathContext>(0);
  PackageNameContext packageName() => getRuleContext<PackageNameContext>(0);
  ImportSpecContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_importSpec;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterImportSpec(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitImportSpec(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitImportSpec(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ImportPathContext extends ParserRuleContext {
  StringLitContext stringLit() => getRuleContext<StringLitContext>(0);
  ImportPathContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_importPath;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterImportPath(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitImportPath(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitImportPath(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TopLevelDeclContext extends ParserRuleContext {
  DeclarationContext declaration() => getRuleContext<DeclarationContext>(0);
  FunctionDeclContext functionDecl() => getRuleContext<FunctionDeclContext>(0);
  MethodDeclContext methodDecl() => getRuleContext<MethodDeclContext>(0);
  TopLevelDeclContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_topLevelDecl;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterTopLevelDecl(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitTopLevelDecl(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitTopLevelDecl(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class DeclarationContext extends ParserRuleContext {
  ConstDeclContext constDecl() => getRuleContext<ConstDeclContext>(0);
  TypeDeclContext typeDecl() => getRuleContext<TypeDeclContext>(0);
  VarDeclContext varDecl() => getRuleContext<VarDeclContext>(0);
  DeclarationContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_declaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitDeclaration(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitDeclaration(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ConstDeclContext extends ParserRuleContext {
  TerminalNode CONST() => getToken(MicroGoParser.TOKEN_CONST, 0);
  ConstSpecContext constSpec() => getRuleContext<ConstSpecContext>(0);
  TerminalNode L_PAREN() => getToken(MicroGoParser.TOKEN_L_PAREN, 0);
  ConstSpecListContext constSpecList() =>
      getRuleContext<ConstSpecListContext>(0);
  TerminalNode R_PAREN() => getToken(MicroGoParser.TOKEN_R_PAREN, 0);
  ConstDeclContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_constDecl;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterConstDecl(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitConstDecl(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitConstDecl(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ConstSpecListContext extends ParserRuleContext {
  List<ConstSpecContext> constSpecs() => getRuleContexts<ConstSpecContext>();
  ConstSpecContext constSpec(int i) => getRuleContext<ConstSpecContext>(i);
  List<EosContext> eoss() => getRuleContexts<EosContext>();
  EosContext eos(int i) => getRuleContext<EosContext>(i);
  ConstSpecListContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_constSpecList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterConstSpecList(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitConstSpecList(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitConstSpecList(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ConstSpecContext extends ParserRuleContext {
  IdentifierListContext identifierList() =>
      getRuleContext<IdentifierListContext>(0);
  TerminalNode EQUAL() => getToken(MicroGoParser.TOKEN_EQUAL, 0);
  ExpressionListContext expressionList() =>
      getRuleContext<ExpressionListContext>(0);
  TypeContext type() => getRuleContext<TypeContext>(0);
  ConstSpecContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_constSpec;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterConstSpec(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitConstSpec(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitConstSpec(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class IdentifierListContext extends ParserRuleContext {
  List<IdentifierContext> identifiers() => getRuleContexts<IdentifierContext>();
  IdentifierContext identifier(int i) => getRuleContext<IdentifierContext>(i);
  List<TerminalNode> COMMAs() => getTokens(MicroGoParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(MicroGoParser.TOKEN_COMMA, i);
  IdentifierListContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_identifierList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterIdentifierList(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitIdentifierList(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitIdentifierList(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class IdentifierContext extends ParserRuleContext {
  TerminalNode IDENTIFIER() => getToken(MicroGoParser.TOKEN_IDENTIFIER, 0);
  IdentifierContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_identifier;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterIdentifier(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitIdentifier(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitIdentifier(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ExpressionListContext extends ParserRuleContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  List<TerminalNode> COMMAs() => getTokens(MicroGoParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(MicroGoParser.TOKEN_COMMA, i);
  ExpressionListContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expressionList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterExpressionList(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitExpressionList(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitExpressionList(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TypeDeclContext extends ParserRuleContext {
  TerminalNode TYPE() => getToken(MicroGoParser.TOKEN_TYPE, 0);
  TypeSpecContext typeSpec() => getRuleContext<TypeSpecContext>(0);
  TerminalNode L_PAREN() => getToken(MicroGoParser.TOKEN_L_PAREN, 0);
  TypeSpecListContext typeSpecList() => getRuleContext<TypeSpecListContext>(0);
  TerminalNode R_PAREN() => getToken(MicroGoParser.TOKEN_R_PAREN, 0);
  TypeDeclContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeDecl;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterTypeDecl(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitTypeDecl(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitTypeDecl(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TypeSpecListContext extends ParserRuleContext {
  List<TypeSpecContext> typeSpecs() => getRuleContexts<TypeSpecContext>();
  TypeSpecContext typeSpec(int i) => getRuleContext<TypeSpecContext>(i);
  List<EosContext> eoss() => getRuleContexts<EosContext>();
  EosContext eos(int i) => getRuleContext<EosContext>(i);
  TypeSpecListContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeSpecList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterTypeSpecList(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitTypeSpecList(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitTypeSpecList(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TypeSpecContext extends ParserRuleContext {
  AliasDeclContext aliasDecl() => getRuleContext<AliasDeclContext>(0);
  TypeDefContext typeDef() => getRuleContext<TypeDefContext>(0);
  TypeSpecContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeSpec;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterTypeSpec(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitTypeSpec(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitTypeSpec(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class AliasDeclContext extends ParserRuleContext {
  TerminalNode IDENTIFIER() => getToken(MicroGoParser.TOKEN_IDENTIFIER, 0);
  TerminalNode EQUAL() => getToken(MicroGoParser.TOKEN_EQUAL, 0);
  TypeContext type() => getRuleContext<TypeContext>(0);
  AliasDeclContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_aliasDecl;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterAliasDecl(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitAliasDecl(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitAliasDecl(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TypeDefContext extends ParserRuleContext {
  TerminalNode IDENTIFIER() => getToken(MicroGoParser.TOKEN_IDENTIFIER, 0);
  TypeContext type() => getRuleContext<TypeContext>(0);
  TypeDefContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeDef;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterTypeDef(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitTypeDef(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitTypeDef(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class VarDeclContext extends ParserRuleContext {
  TerminalNode VAR() => getToken(MicroGoParser.TOKEN_VAR, 0);
  VarSpecContext varSpec() => getRuleContext<VarSpecContext>(0);
  TerminalNode L_PAREN() => getToken(MicroGoParser.TOKEN_L_PAREN, 0);
  VarSpecListContext varSpecList() => getRuleContext<VarSpecListContext>(0);
  TerminalNode R_PAREN() => getToken(MicroGoParser.TOKEN_R_PAREN, 0);
  VarDeclContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_varDecl;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterVarDecl(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitVarDecl(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitVarDecl(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class VarSpecListContext extends ParserRuleContext {
  List<VarSpecContext> varSpecs() => getRuleContexts<VarSpecContext>();
  VarSpecContext varSpec(int i) => getRuleContext<VarSpecContext>(i);
  List<EosContext> eoss() => getRuleContexts<EosContext>();
  EosContext eos(int i) => getRuleContext<EosContext>(i);
  VarSpecListContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_varSpecList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterVarSpecList(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitVarSpecList(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitVarSpecList(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class VarSpecContext extends ParserRuleContext {
  IdentifierListContext identifierList() =>
      getRuleContext<IdentifierListContext>(0);
  TypeContext type() => getRuleContext<TypeContext>(0);
  TerminalNode EQUAL() => getToken(MicroGoParser.TOKEN_EQUAL, 0);
  ExpressionListContext expressionList() =>
      getRuleContext<ExpressionListContext>(0);
  VarSpecContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_varSpec;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterVarSpec(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitVarSpec(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitVarSpec(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TypeContext extends ParserRuleContext {
  TypeNameContext typeName() => getRuleContext<TypeNameContext>(0);
  TypeLitContext typeLit() => getRuleContext<TypeLitContext>(0);
  TerminalNode L_PAREN() => getToken(MicroGoParser.TOKEN_L_PAREN, 0);
  TypeContext type() => getRuleContext<TypeContext>(0);
  TerminalNode R_PAREN() => getToken(MicroGoParser.TOKEN_R_PAREN, 0);
  TypeContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_type;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterType(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitType(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitType(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TypeNameContext extends ParserRuleContext {
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  QualifiedIdentContext qualifiedIdent() =>
      getRuleContext<QualifiedIdentContext>(0);
  TypeNameContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeName;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterTypeName(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitTypeName(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitTypeName(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TypeLitContext extends ParserRuleContext {
  ArrayTypeContext arrayType() => getRuleContext<ArrayTypeContext>(0);
  StructTypeContext structType() => getRuleContext<StructTypeContext>(0);
  PointerTypeContext pointerType() => getRuleContext<PointerTypeContext>(0);
  FunctionTypeContext functionType() => getRuleContext<FunctionTypeContext>(0);
  InterfaceTypeContext interfaceType() =>
      getRuleContext<InterfaceTypeContext>(0);
  SliceTypeContext sliceType() => getRuleContext<SliceTypeContext>(0);
  TypeLitContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeLit;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterTypeLit(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitTypeLit(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitTypeLit(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ArrayTypeContext extends ParserRuleContext {
  TerminalNode L_BRACKET() => getToken(MicroGoParser.TOKEN_L_BRACKET, 0);
  ArrayLengthContext arrayLength() => getRuleContext<ArrayLengthContext>(0);
  TerminalNode R_BRACKET() => getToken(MicroGoParser.TOKEN_R_BRACKET, 0);
  ElementTypeContext elementType() => getRuleContext<ElementTypeContext>(0);
  ArrayTypeContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_arrayType;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterArrayType(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitArrayType(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitArrayType(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ArrayLengthContext extends ParserRuleContext {
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  ArrayLengthContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_arrayLength;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterArrayLength(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitArrayLength(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitArrayLength(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ElementTypeContext extends ParserRuleContext {
  TypeContext type() => getRuleContext<TypeContext>(0);
  ElementTypeContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_elementType;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterElementType(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitElementType(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitElementType(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class SliceTypeContext extends ParserRuleContext {
  TerminalNode L_BRACKET() => getToken(MicroGoParser.TOKEN_L_BRACKET, 0);
  TerminalNode R_BRACKET() => getToken(MicroGoParser.TOKEN_R_BRACKET, 0);
  ElementTypeContext elementType() => getRuleContext<ElementTypeContext>(0);
  SliceTypeContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_sliceType;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterSliceType(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitSliceType(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitSliceType(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class StructTypeContext extends ParserRuleContext {
  TerminalNode STRUCT() => getToken(MicroGoParser.TOKEN_STRUCT, 0);
  TerminalNode L_CURLY() => getToken(MicroGoParser.TOKEN_L_CURLY, 0);
  FieldDeclListContext fieldDeclList() =>
      getRuleContext<FieldDeclListContext>(0);
  TerminalNode R_CURLY() => getToken(MicroGoParser.TOKEN_R_CURLY, 0);
  StructTypeContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_structType;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterStructType(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitStructType(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitStructType(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class FieldDeclListContext extends ParserRuleContext {
  List<FieldDeclContext> fieldDecls() => getRuleContexts<FieldDeclContext>();
  FieldDeclContext fieldDecl(int i) => getRuleContext<FieldDeclContext>(i);
  List<EosContext> eoss() => getRuleContexts<EosContext>();
  EosContext eos(int i) => getRuleContext<EosContext>(i);
  FieldDeclListContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_fieldDeclList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterFieldDeclList(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitFieldDeclList(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitFieldDeclList(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class FieldDeclContext extends ParserRuleContext {
  IdentifierListContext identifierList() =>
      getRuleContext<IdentifierListContext>(0);
  TypeContext type() => getRuleContext<TypeContext>(0);
  EmbeddedFieldContext embeddedField() =>
      getRuleContext<EmbeddedFieldContext>(0);
  FieldDeclContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_fieldDecl;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterFieldDecl(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitFieldDecl(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitFieldDecl(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class EmbeddedFieldContext extends ParserRuleContext {
  TypeNameContext typeName() => getRuleContext<TypeNameContext>(0);
  TerminalNode STAR() => getToken(MicroGoParser.TOKEN_STAR, 0);
  EmbeddedFieldContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_embeddedField;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterEmbeddedField(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitEmbeddedField(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitEmbeddedField(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class PointerTypeContext extends ParserRuleContext {
  TerminalNode STAR() => getToken(MicroGoParser.TOKEN_STAR, 0);
  TypeContext type() => getRuleContext<TypeContext>(0);
  PointerTypeContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_pointerType;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterPointerType(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitPointerType(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitPointerType(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class FunctionTypeContext extends ParserRuleContext {
  TerminalNode FUNC() => getToken(MicroGoParser.TOKEN_FUNC, 0);
  SignatureContext signature() => getRuleContext<SignatureContext>(0);
  FunctionTypeContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_functionType;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterFunctionType(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitFunctionType(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitFunctionType(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class SignatureContext extends ParserRuleContext {
  ParametersContext parameters() => getRuleContext<ParametersContext>(0);
  ResultContext result() => getRuleContext<ResultContext>(0);
  SignatureContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_signature;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterSignature(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitSignature(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitSignature(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ResultContext extends ParserRuleContext {
  ParametersContext parameters() => getRuleContext<ParametersContext>(0);
  TypeContext type() => getRuleContext<TypeContext>(0);
  ResultContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_result;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterResult(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitResult(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitResult(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ParametersContext extends ParserRuleContext {
  TerminalNode L_PAREN() => getToken(MicroGoParser.TOKEN_L_PAREN, 0);
  TerminalNode R_PAREN() => getToken(MicroGoParser.TOKEN_R_PAREN, 0);
  ParameterListContext parameterList() =>
      getRuleContext<ParameterListContext>(0);
  TerminalNode COMMA() => getToken(MicroGoParser.TOKEN_COMMA, 0);
  ParametersContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_parameters;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterParameters(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitParameters(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitParameters(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ParameterListContext extends ParserRuleContext {
  List<ParameterDeclContext> parameterDecls() =>
      getRuleContexts<ParameterDeclContext>();
  ParameterDeclContext parameterDecl(int i) =>
      getRuleContext<ParameterDeclContext>(i);
  List<TerminalNode> COMMAs() => getTokens(MicroGoParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(MicroGoParser.TOKEN_COMMA, i);
  ParameterListContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_parameterList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterParameterList(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitParameterList(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitParameterList(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ParameterDeclContext extends ParserRuleContext {
  TypeContext type() => getRuleContext<TypeContext>(0);
  IdentifierListContext identifierList() =>
      getRuleContext<IdentifierListContext>(0);
  TerminalNode ELLIPSIS() => getToken(MicroGoParser.TOKEN_ELLIPSIS, 0);
  ParameterDeclContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_parameterDecl;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterParameterDecl(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitParameterDecl(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitParameterDecl(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class InterfaceTypeContext extends ParserRuleContext {
  TerminalNode INTERFACE() => getToken(MicroGoParser.TOKEN_INTERFACE, 0);
  TerminalNode L_CURLY() => getToken(MicroGoParser.TOKEN_L_CURLY, 0);
  TerminalNode R_CURLY() => getToken(MicroGoParser.TOKEN_R_CURLY, 0);
  List<EosContext> eoss() => getRuleContexts<EosContext>();
  EosContext eos(int i) => getRuleContext<EosContext>(i);
  List<MethodSpecContext> methodSpecs() => getRuleContexts<MethodSpecContext>();
  MethodSpecContext methodSpec(int i) => getRuleContext<MethodSpecContext>(i);
  List<InterfaceTypeNameContext> interfaceTypeNames() =>
      getRuleContexts<InterfaceTypeNameContext>();
  InterfaceTypeNameContext interfaceTypeName(int i) =>
      getRuleContext<InterfaceTypeNameContext>(i);
  InterfaceTypeContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_interfaceType;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterInterfaceType(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitInterfaceType(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitInterfaceType(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class MethodSpecContext extends ParserRuleContext {
  MethodNameContext methodName() => getRuleContext<MethodNameContext>(0);
  SignatureContext signature() => getRuleContext<SignatureContext>(0);
  MethodSpecContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_methodSpec;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterMethodSpec(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitMethodSpec(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitMethodSpec(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class MethodNameContext extends ParserRuleContext {
  TerminalNode IDENTIFIER() => getToken(MicroGoParser.TOKEN_IDENTIFIER, 0);
  MethodNameContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_methodName;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterMethodName(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitMethodName(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitMethodName(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class InterfaceTypeNameContext extends ParserRuleContext {
  TypeNameContext typeName() => getRuleContext<TypeNameContext>(0);
  InterfaceTypeNameContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_interfaceTypeName;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterInterfaceTypeName(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitInterfaceTypeName(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitInterfaceTypeName(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class BlockContext extends ParserRuleContext {
  TerminalNode L_CURLY() => getToken(MicroGoParser.TOKEN_L_CURLY, 0);
  StatementListContext statementList() =>
      getRuleContext<StatementListContext>(0);
  TerminalNode R_CURLY() => getToken(MicroGoParser.TOKEN_R_CURLY, 0);
  BlockContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_block;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterBlock(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitBlock(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitBlock(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class StatementListContext extends ParserRuleContext {
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext statement(int i) => getRuleContext<StatementContext>(i);
  List<EosContext> eoss() => getRuleContexts<EosContext>();
  EosContext eos(int i) => getRuleContext<EosContext>(i);
  StatementListContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_statementList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterStatementList(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitStatementList(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitStatementList(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ShortVarDeclContext extends ParserRuleContext {
  IdentifierListContext identifierList() =>
      getRuleContext<IdentifierListContext>(0);
  TerminalNode SHORT_ASSIGN() => getToken(MicroGoParser.TOKEN_SHORT_ASSIGN, 0);
  ExpressionListContext expressionList() =>
      getRuleContext<ExpressionListContext>(0);
  ShortVarDeclContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_shortVarDecl;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterShortVarDecl(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitShortVarDecl(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitShortVarDecl(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class FunctionDeclContext extends ParserRuleContext {
  TerminalNode FUNC() => getToken(MicroGoParser.TOKEN_FUNC, 0);
  FunctionNameContext functionName() => getRuleContext<FunctionNameContext>(0);
  SignatureContext signature() => getRuleContext<SignatureContext>(0);
  FunctionBodyContext functionBody() => getRuleContext<FunctionBodyContext>(0);
  FunctionDeclContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_functionDecl;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterFunctionDecl(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitFunctionDecl(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitFunctionDecl(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class FunctionNameContext extends ParserRuleContext {
  TerminalNode IDENTIFIER() => getToken(MicroGoParser.TOKEN_IDENTIFIER, 0);
  FunctionNameContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_functionName;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterFunctionName(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitFunctionName(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitFunctionName(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class FunctionBodyContext extends ParserRuleContext {
  BlockContext block() => getRuleContext<BlockContext>(0);
  FunctionBodyContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_functionBody;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterFunctionBody(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitFunctionBody(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitFunctionBody(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class MethodDeclContext extends ParserRuleContext {
  TerminalNode FUNC() => getToken(MicroGoParser.TOKEN_FUNC, 0);
  ParametersContext parameters() => getRuleContext<ParametersContext>(0);
  MethodNameContext methodName() => getRuleContext<MethodNameContext>(0);
  SignatureContext signature() => getRuleContext<SignatureContext>(0);
  FunctionBodyContext functionBody() => getRuleContext<FunctionBodyContext>(0);
  MethodDeclContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_methodDecl;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterMethodDecl(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitMethodDecl(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitMethodDecl(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class OperandContext extends ParserRuleContext {
  LiteralContext literal() => getRuleContext<LiteralContext>(0);
  OperandNameContext operandName() => getRuleContext<OperandNameContext>(0);
  TerminalNode L_PAREN() => getToken(MicroGoParser.TOKEN_L_PAREN, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode R_PAREN() => getToken(MicroGoParser.TOKEN_R_PAREN, 0);
  OperandContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_operand;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterOperand(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitOperand(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitOperand(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class LiteralContext extends ParserRuleContext {
  BasicLitContext basicLit() => getRuleContext<BasicLitContext>(0);
  CompositeLitContext compositeLit() => getRuleContext<CompositeLitContext>(0);
  FunctionLitContext functionLit() => getRuleContext<FunctionLitContext>(0);
  LiteralContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_literal;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterLiteral(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitLiteral(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitLiteral(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class BasicLitContext extends ParserRuleContext {
  NilLitContext nilLit() => getRuleContext<NilLitContext>(0);
  IntegerLitContext integerLit() => getRuleContext<IntegerLitContext>(0);
  FloatLitContext floatLit() => getRuleContext<FloatLitContext>(0);
  RuneLitContext runeLit() => getRuleContext<RuneLitContext>(0);
  StringLitContext stringLit() => getRuleContext<StringLitContext>(0);
  BasicLitContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_basicLit;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterBasicLit(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitBasicLit(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitBasicLit(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class NilLitContext extends ParserRuleContext {
  TerminalNode NIL() => getToken(MicroGoParser.TOKEN_NIL, 0);
  NilLitContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_nilLit;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterNilLit(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitNilLit(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitNilLit(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class IntegerLitContext extends ParserRuleContext {
  DecimalLitContext decimalLit() => getRuleContext<DecimalLitContext>(0);
  BinaryLitContext binaryLit() => getRuleContext<BinaryLitContext>(0);
  OctalLitContext octalLit() => getRuleContext<OctalLitContext>(0);
  HexLitContext hexLit() => getRuleContext<HexLitContext>(0);
  IntegerLitContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_integerLit;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterIntegerLit(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitIntegerLit(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitIntegerLit(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class DecimalLitContext extends ParserRuleContext {
  TerminalNode DECIMAL_LIT() => getToken(MicroGoParser.TOKEN_DECIMAL_LIT, 0);
  DecimalLitContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_decimalLit;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterDecimalLit(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitDecimalLit(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitDecimalLit(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class BinaryLitContext extends ParserRuleContext {
  TerminalNode BINARY_LIT() => getToken(MicroGoParser.TOKEN_BINARY_LIT, 0);
  BinaryLitContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_binaryLit;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterBinaryLit(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitBinaryLit(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitBinaryLit(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class OctalLitContext extends ParserRuleContext {
  TerminalNode OCTAL_LIT() => getToken(MicroGoParser.TOKEN_OCTAL_LIT, 0);
  OctalLitContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_octalLit;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterOctalLit(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitOctalLit(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitOctalLit(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class HexLitContext extends ParserRuleContext {
  TerminalNode HEX_LIT() => getToken(MicroGoParser.TOKEN_HEX_LIT, 0);
  HexLitContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_hexLit;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterHexLit(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitHexLit(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitHexLit(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class FloatLitContext extends ParserRuleContext {
  DecimalFloatLitContext decimalFloatLit() =>
      getRuleContext<DecimalFloatLitContext>(0);
  HexFloatLitContext hexFloatLit() => getRuleContext<HexFloatLitContext>(0);
  FloatLitContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_floatLit;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterFloatLit(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitFloatLit(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitFloatLit(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class DecimalFloatLitContext extends ParserRuleContext {
  TerminalNode DECIMAL_FLOAT_LIT() =>
      getToken(MicroGoParser.TOKEN_DECIMAL_FLOAT_LIT, 0);
  DecimalFloatLitContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_decimalFloatLit;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterDecimalFloatLit(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitDecimalFloatLit(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitDecimalFloatLit(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class HexFloatLitContext extends ParserRuleContext {
  TerminalNode HEX_FLOAT_LIT() =>
      getToken(MicroGoParser.TOKEN_HEX_FLOAT_LIT, 0);
  HexFloatLitContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_hexFloatLit;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterHexFloatLit(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitHexFloatLit(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitHexFloatLit(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class RuneLitContext extends ParserRuleContext {
  TerminalNode RUNE_LIT() => getToken(MicroGoParser.TOKEN_RUNE_LIT, 0);
  RuneLitContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_runeLit;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterRuneLit(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitRuneLit(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitRuneLit(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class StringLitContext extends ParserRuleContext {
  RawStringLitContext rawStringLit() => getRuleContext<RawStringLitContext>(0);
  InterpretedStringLitContext interpretedStringLit() =>
      getRuleContext<InterpretedStringLitContext>(0);
  StringLitContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_stringLit;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterStringLit(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitStringLit(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitStringLit(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class RawStringLitContext extends ParserRuleContext {
  TerminalNode RAW_STRING_LIT() =>
      getToken(MicroGoParser.TOKEN_RAW_STRING_LIT, 0);
  RawStringLitContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_rawStringLit;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterRawStringLit(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitRawStringLit(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitRawStringLit(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class InterpretedStringLitContext extends ParserRuleContext {
  TerminalNode INTERPRETED_STRING_LIT() =>
      getToken(MicroGoParser.TOKEN_INTERPRETED_STRING_LIT, 0);
  InterpretedStringLitContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_interpretedStringLit;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterInterpretedStringLit(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitInterpretedStringLit(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitInterpretedStringLit(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class OperandNameContext extends ParserRuleContext {
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  QualifiedIdentContext qualifiedIdent() =>
      getRuleContext<QualifiedIdentContext>(0);
  OperandNameContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_operandName;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterOperandName(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitOperandName(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitOperandName(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class QualifiedIdentContext extends ParserRuleContext {
  PackageNameContext packageName() => getRuleContext<PackageNameContext>(0);
  TerminalNode DOT() => getToken(MicroGoParser.TOKEN_DOT, 0);
  TerminalNode IDENTIFIER() => getToken(MicroGoParser.TOKEN_IDENTIFIER, 0);
  QualifiedIdentContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_qualifiedIdent;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterQualifiedIdent(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitQualifiedIdent(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitQualifiedIdent(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class CompositeLitContext extends ParserRuleContext {
  LiteralTypeContext literalType() => getRuleContext<LiteralTypeContext>(0);
  LiteralValueContext literalValue() => getRuleContext<LiteralValueContext>(0);
  CompositeLitContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_compositeLit;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterCompositeLit(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitCompositeLit(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitCompositeLit(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class LiteralTypeContext extends ParserRuleContext {
  StructTypeContext structType() => getRuleContext<StructTypeContext>(0);
  ArrayTypeContext arrayType() => getRuleContext<ArrayTypeContext>(0);
  TerminalNode L_BRACKET() => getToken(MicroGoParser.TOKEN_L_BRACKET, 0);
  TerminalNode ELLIPSIS() => getToken(MicroGoParser.TOKEN_ELLIPSIS, 0);
  TerminalNode R_BRACKET() => getToken(MicroGoParser.TOKEN_R_BRACKET, 0);
  ElementTypeContext elementType() => getRuleContext<ElementTypeContext>(0);
  SliceTypeContext sliceType() => getRuleContext<SliceTypeContext>(0);
  TypeNameContext typeName() => getRuleContext<TypeNameContext>(0);
  LiteralTypeContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_literalType;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterLiteralType(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitLiteralType(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitLiteralType(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class LiteralValueContext extends ParserRuleContext {
  TerminalNode L_CURLY() => getToken(MicroGoParser.TOKEN_L_CURLY, 0);
  TerminalNode R_CURLY() => getToken(MicroGoParser.TOKEN_R_CURLY, 0);
  ElementListContext elementList() => getRuleContext<ElementListContext>(0);
  TerminalNode COMMA() => getToken(MicroGoParser.TOKEN_COMMA, 0);
  LiteralValueContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_literalValue;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterLiteralValue(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitLiteralValue(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitLiteralValue(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ElementListContext extends ParserRuleContext {
  List<KeyedElementContext> keyedElements() =>
      getRuleContexts<KeyedElementContext>();
  KeyedElementContext keyedElement(int i) =>
      getRuleContext<KeyedElementContext>(i);
  List<TerminalNode> COMMAs() => getTokens(MicroGoParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(MicroGoParser.TOKEN_COMMA, i);
  ElementListContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_elementList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterElementList(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitElementList(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitElementList(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class KeyedElementContext extends ParserRuleContext {
  ElementContext element() => getRuleContext<ElementContext>(0);
  KeyContext key() => getRuleContext<KeyContext>(0);
  TerminalNode COLON() => getToken(MicroGoParser.TOKEN_COLON, 0);
  KeyedElementContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_keyedElement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterKeyedElement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitKeyedElement(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitKeyedElement(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class KeyContext extends ParserRuleContext {
  FieldNameContext fieldName() => getRuleContext<FieldNameContext>(0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  LiteralValueContext literalValue() => getRuleContext<LiteralValueContext>(0);
  KeyContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_key;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterKey(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitKey(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitKey(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class FieldNameContext extends ParserRuleContext {
  TerminalNode IDENTIFIER() => getToken(MicroGoParser.TOKEN_IDENTIFIER, 0);
  FieldNameContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_fieldName;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterFieldName(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitFieldName(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitFieldName(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ElementContext extends ParserRuleContext {
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  LiteralValueContext literalValue() => getRuleContext<LiteralValueContext>(0);
  ElementContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_element;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterElement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitElement(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitElement(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class FunctionLitContext extends ParserRuleContext {
  TerminalNode FUNC() => getToken(MicroGoParser.TOKEN_FUNC, 0);
  SignatureContext signature() => getRuleContext<SignatureContext>(0);
  FunctionBodyContext functionBody() => getRuleContext<FunctionBodyContext>(0);
  FunctionLitContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_functionLit;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterFunctionLit(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitFunctionLit(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitFunctionLit(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class PrimaryExprContext extends ParserRuleContext {
  PrimaryExprContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_primaryExpr;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class SelectorContext extends ParserRuleContext {
  TerminalNode DOT() => getToken(MicroGoParser.TOKEN_DOT, 0);
  TerminalNode IDENTIFIER() => getToken(MicroGoParser.TOKEN_IDENTIFIER, 0);
  SelectorContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_selector;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterSelector(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitSelector(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitSelector(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class IndexContext extends ParserRuleContext {
  TerminalNode L_BRACKET() => getToken(MicroGoParser.TOKEN_L_BRACKET, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode R_BRACKET() => getToken(MicroGoParser.TOKEN_R_BRACKET, 0);
  IndexContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_index;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterIndex(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitIndex(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitIndex(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class SliceContext extends ParserRuleContext {
  TerminalNode L_BRACKET() => getToken(MicroGoParser.TOKEN_L_BRACKET, 0);
  TerminalNode COLON() => getToken(MicroGoParser.TOKEN_COLON, 0);
  TerminalNode R_BRACKET() => getToken(MicroGoParser.TOKEN_R_BRACKET, 0);
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  SliceContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_slice;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterSlice(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitSlice(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitSlice(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ArgumentsContext extends ParserRuleContext {
  TerminalNode L_PAREN() => getToken(MicroGoParser.TOKEN_L_PAREN, 0);
  TerminalNode R_PAREN() => getToken(MicroGoParser.TOKEN_R_PAREN, 0);
  ExpressionListContext expressionList() =>
      getRuleContext<ExpressionListContext>(0);
  TypeContext type() => getRuleContext<TypeContext>(0);
  TerminalNode ELLIPSIS() => getToken(MicroGoParser.TOKEN_ELLIPSIS, 0);
  List<TerminalNode> COMMAs() => getTokens(MicroGoParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(MicroGoParser.TOKEN_COMMA, i);
  ArgumentsContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_arguments;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterArguments(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitArguments(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitArguments(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class MethodExprContext extends ParserRuleContext {
  TypeContext type() => getRuleContext<TypeContext>(0);
  TerminalNode DOT() => getToken(MicroGoParser.TOKEN_DOT, 0);
  MethodNameContext methodName() => getRuleContext<MethodNameContext>(0);
  MethodExprContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_methodExpr;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterMethodExpr(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitMethodExpr(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitMethodExpr(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ExpressionContext extends ParserRuleContext {
  ExpressionContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expression;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class UnaryExprContext extends ParserRuleContext {
  PrimaryExprContext primaryExpr() => getRuleContext<PrimaryExprContext>(0);
  UnarypOpContext unarypOp() => getRuleContext<UnarypOpContext>(0);
  UnaryExprContext unaryExpr() => getRuleContext<UnaryExprContext>(0);
  UnaryExprContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_unaryExpr;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterUnaryExpr(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitUnaryExpr(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitUnaryExpr(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class UnarypOpContext extends ParserRuleContext {
  TerminalNode PLUS() => getToken(MicroGoParser.TOKEN_PLUS, 0);
  TerminalNode MINUS() => getToken(MicroGoParser.TOKEN_MINUS, 0);
  TerminalNode EXCLAMATION() => getToken(MicroGoParser.TOKEN_EXCLAMATION, 0);
  TerminalNode CARET() => getToken(MicroGoParser.TOKEN_CARET, 0);
  TerminalNode STAR() => getToken(MicroGoParser.TOKEN_STAR, 0);
  TerminalNode AMPERSAND() => getToken(MicroGoParser.TOKEN_AMPERSAND, 0);
  UnarypOpContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_unarypOp;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterUnarypOp(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitUnarypOp(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitUnarypOp(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class MultOpContext extends ParserRuleContext {
  TerminalNode STAR() => getToken(MicroGoParser.TOKEN_STAR, 0);
  TerminalNode DIV() => getToken(MicroGoParser.TOKEN_DIV, 0);
  TerminalNode MOD() => getToken(MicroGoParser.TOKEN_MOD, 0);
  TerminalNode LSHIFT() => getToken(MicroGoParser.TOKEN_LSHIFT, 0);
  TerminalNode RSHIFT() => getToken(MicroGoParser.TOKEN_RSHIFT, 0);
  TerminalNode AMPERSAND() => getToken(MicroGoParser.TOKEN_AMPERSAND, 0);
  TerminalNode BIT_CLEAR() => getToken(MicroGoParser.TOKEN_BIT_CLEAR, 0);
  MultOpContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_multOp;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterMultOp(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitMultOp(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitMultOp(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class AddOpContext extends ParserRuleContext {
  TerminalNode PLUS() => getToken(MicroGoParser.TOKEN_PLUS, 0);
  TerminalNode MINUS() => getToken(MicroGoParser.TOKEN_MINUS, 0);
  TerminalNode PIPE() => getToken(MicroGoParser.TOKEN_PIPE, 0);
  TerminalNode CARET() => getToken(MicroGoParser.TOKEN_CARET, 0);
  AddOpContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_addOp;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterAddOp(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitAddOp(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitAddOp(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class RelOpContext extends ParserRuleContext {
  TerminalNode EQUALS() => getToken(MicroGoParser.TOKEN_EQUALS, 0);
  TerminalNode NOT_EQUALS() => getToken(MicroGoParser.TOKEN_NOT_EQUALS, 0);
  TerminalNode LESS() => getToken(MicroGoParser.TOKEN_LESS, 0);
  TerminalNode LESS_OR_EQUALS() =>
      getToken(MicroGoParser.TOKEN_LESS_OR_EQUALS, 0);
  TerminalNode GREATER() => getToken(MicroGoParser.TOKEN_GREATER, 0);
  TerminalNode GREATER_OR_EQUALS() =>
      getToken(MicroGoParser.TOKEN_GREATER_OR_EQUALS, 0);
  RelOpContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_relOp;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterRelOp(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitRelOp(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitRelOp(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ConversionContext extends ParserRuleContext {
  TypeContext type() => getRuleContext<TypeContext>(0);
  TerminalNode L_PAREN() => getToken(MicroGoParser.TOKEN_L_PAREN, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode R_PAREN() => getToken(MicroGoParser.TOKEN_R_PAREN, 0);
  ConversionContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_conversion;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterConversion(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitConversion(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitConversion(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class StatementContext extends ParserRuleContext {
  DeclarationContext declaration() => getRuleContext<DeclarationContext>(0);
  LabeledStmtContext labeledStmt() => getRuleContext<LabeledStmtContext>(0);
  SimpleStmtContext simpleStmt() => getRuleContext<SimpleStmtContext>(0);
  ReturnStmtContext returnStmt() => getRuleContext<ReturnStmtContext>(0);
  BreakStmtContext breakStmt() => getRuleContext<BreakStmtContext>(0);
  ContinueStmtContext continueStmt() => getRuleContext<ContinueStmtContext>(0);
  GotoStmtContext gotoStmt() => getRuleContext<GotoStmtContext>(0);
  FallthroughStmtContext fallthroughStmt() =>
      getRuleContext<FallthroughStmtContext>(0);
  BlockContext block() => getRuleContext<BlockContext>(0);
  IfStmtContext ifStmt() => getRuleContext<IfStmtContext>(0);
  SwitchStmtContext switchStmt() => getRuleContext<SwitchStmtContext>(0);
  ForStmtContext forStmt() => getRuleContext<ForStmtContext>(0);
  StatementContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_statement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterStatement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitStatement(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitStatement(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class SimpleStmtContext extends ParserRuleContext {
  EmptyStmtContext emptyStmt() => getRuleContext<EmptyStmtContext>(0);
  ExpressionStmtContext expressionStmt() =>
      getRuleContext<ExpressionStmtContext>(0);
  IncDecStmtContext incDecStmt() => getRuleContext<IncDecStmtContext>(0);
  AssignmentContext assignment() => getRuleContext<AssignmentContext>(0);
  ShortVarDeclContext shortVarDecl() => getRuleContext<ShortVarDeclContext>(0);
  SimpleStmtContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_simpleStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterSimpleStmt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitSimpleStmt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitSimpleStmt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class EmptyStmtContext extends ParserRuleContext {
  TerminalNode SEMI() => getToken(MicroGoParser.TOKEN_SEMI, 0);
  EmptyStmtContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_emptyStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterEmptyStmt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitEmptyStmt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitEmptyStmt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class LabeledStmtContext extends ParserRuleContext {
  LabelContext label() => getRuleContext<LabelContext>(0);
  TerminalNode COLON() => getToken(MicroGoParser.TOKEN_COLON, 0);
  StatementContext statement() => getRuleContext<StatementContext>(0);
  LabeledStmtContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_labeledStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterLabeledStmt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitLabeledStmt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitLabeledStmt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class LabelContext extends ParserRuleContext {
  TerminalNode IDENTIFIER() => getToken(MicroGoParser.TOKEN_IDENTIFIER, 0);
  LabelContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_label;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterLabel(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitLabel(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitLabel(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ExpressionStmtContext extends ParserRuleContext {
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  ExpressionStmtContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expressionStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterExpressionStmt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitExpressionStmt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitExpressionStmt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class IncDecStmtContext extends ParserRuleContext {
  IncDecStmtContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_incDecStmt;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class AssignmentContext extends ParserRuleContext {
  List<ExpressionListContext> expressionLists() =>
      getRuleContexts<ExpressionListContext>();
  ExpressionListContext expressionList(int i) =>
      getRuleContext<ExpressionListContext>(i);
  AssignOpContext assignOp() => getRuleContext<AssignOpContext>(0);
  AssignmentContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignment;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterAssignment(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitAssignment(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitAssignment(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class AssignOpContext extends ParserRuleContext {
  TerminalNode EQUAL() => getToken(MicroGoParser.TOKEN_EQUAL, 0);
  MultOpContext multOp() => getRuleContext<MultOpContext>(0);
  AddOpContext addOp() => getRuleContext<AddOpContext>(0);
  AssignOpContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignOp;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterAssignOp(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitAssignOp(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitAssignOp(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class IfStmtContext extends ParserRuleContext {
  TerminalNode IF() => getToken(MicroGoParser.TOKEN_IF, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  List<BlockContext> blocks() => getRuleContexts<BlockContext>();
  BlockContext block(int i) => getRuleContext<BlockContext>(i);
  SimpleStmtContext simpleStmt() => getRuleContext<SimpleStmtContext>(0);
  TerminalNode SEMI() => getToken(MicroGoParser.TOKEN_SEMI, 0);
  TerminalNode ELSE() => getToken(MicroGoParser.TOKEN_ELSE, 0);
  IfStmtContext ifStmt() => getRuleContext<IfStmtContext>(0);
  IfStmtContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_ifStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterIfStmt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitIfStmt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitIfStmt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class SwitchStmtContext extends ParserRuleContext {
  ExprSwitchStmtContext exprSwitchStmt() =>
      getRuleContext<ExprSwitchStmtContext>(0);
  TypeSwitchStmtContext typeSwitchStmt() =>
      getRuleContext<TypeSwitchStmtContext>(0);
  SwitchStmtContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_switchStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterSwitchStmt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitSwitchStmt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitSwitchStmt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ExprSwitchStmtContext extends ParserRuleContext {
  TerminalNode SWITCH() => getToken(MicroGoParser.TOKEN_SWITCH, 0);
  TerminalNode L_CURLY() => getToken(MicroGoParser.TOKEN_L_CURLY, 0);
  ExprCaseClauseContext exprCaseClause() =>
      getRuleContext<ExprCaseClauseContext>(0);
  TerminalNode R_CURLY() => getToken(MicroGoParser.TOKEN_R_CURLY, 0);
  SimpleStmtContext simpleStmt() => getRuleContext<SimpleStmtContext>(0);
  TerminalNode SEMI() => getToken(MicroGoParser.TOKEN_SEMI, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  ExprSwitchStmtContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_exprSwitchStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterExprSwitchStmt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitExprSwitchStmt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitExprSwitchStmt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ExprCaseClauseContext extends ParserRuleContext {
  ExprSwitchCaseContext exprSwitchCase() =>
      getRuleContext<ExprSwitchCaseContext>(0);
  TerminalNode COLON() => getToken(MicroGoParser.TOKEN_COLON, 0);
  StatementListContext statementList() =>
      getRuleContext<StatementListContext>(0);
  ExprCaseClauseContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_exprCaseClause;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterExprCaseClause(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitExprCaseClause(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitExprCaseClause(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ExprSwitchCaseContext extends ParserRuleContext {
  TerminalNode CASE() => getToken(MicroGoParser.TOKEN_CASE, 0);
  ExpressionListContext expressionList() =>
      getRuleContext<ExpressionListContext>(0);
  TerminalNode DEFAULT() => getToken(MicroGoParser.TOKEN_DEFAULT, 0);
  ExprSwitchCaseContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_exprSwitchCase;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterExprSwitchCase(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitExprSwitchCase(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitExprSwitchCase(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TypeSwitchStmtContext extends ParserRuleContext {
  TerminalNode SWITCH() => getToken(MicroGoParser.TOKEN_SWITCH, 0);
  TypeSwitchGuardContext typeSwitchGuard() =>
      getRuleContext<TypeSwitchGuardContext>(0);
  TerminalNode L_CURLY() => getToken(MicroGoParser.TOKEN_L_CURLY, 0);
  TypeCaseClauseContext typeCaseClause() =>
      getRuleContext<TypeCaseClauseContext>(0);
  TerminalNode R_CURLY() => getToken(MicroGoParser.TOKEN_R_CURLY, 0);
  SimpleStmtContext simpleStmt() => getRuleContext<SimpleStmtContext>(0);
  TerminalNode SEMI() => getToken(MicroGoParser.TOKEN_SEMI, 0);
  TypeSwitchStmtContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeSwitchStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterTypeSwitchStmt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitTypeSwitchStmt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitTypeSwitchStmt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TypeSwitchGuardContext extends ParserRuleContext {
  PrimaryExprContext primaryExpr() => getRuleContext<PrimaryExprContext>(0);
  TerminalNode DOT() => getToken(MicroGoParser.TOKEN_DOT, 0);
  TerminalNode L_PAREN() => getToken(MicroGoParser.TOKEN_L_PAREN, 0);
  TerminalNode TYPE() => getToken(MicroGoParser.TOKEN_TYPE, 0);
  TerminalNode R_PAREN() => getToken(MicroGoParser.TOKEN_R_PAREN, 0);
  TerminalNode IDENTIFIER() => getToken(MicroGoParser.TOKEN_IDENTIFIER, 0);
  TerminalNode SHORT_ASSIGN() => getToken(MicroGoParser.TOKEN_SHORT_ASSIGN, 0);
  TypeSwitchGuardContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeSwitchGuard;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterTypeSwitchGuard(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitTypeSwitchGuard(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitTypeSwitchGuard(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TypeCaseClauseContext extends ParserRuleContext {
  TypeSwitchCaseContext typeSwitchCase() =>
      getRuleContext<TypeSwitchCaseContext>(0);
  TerminalNode COLON() => getToken(MicroGoParser.TOKEN_COLON, 0);
  StatementListContext statementList() =>
      getRuleContext<StatementListContext>(0);
  TypeCaseClauseContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeCaseClause;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterTypeCaseClause(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitTypeCaseClause(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitTypeCaseClause(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TypeSwitchCaseContext extends ParserRuleContext {
  TerminalNode CASE() => getToken(MicroGoParser.TOKEN_CASE, 0);
  TypeListContext typeList() => getRuleContext<TypeListContext>(0);
  TerminalNode DEFAULT() => getToken(MicroGoParser.TOKEN_DEFAULT, 0);
  TypeSwitchCaseContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeSwitchCase;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterTypeSwitchCase(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitTypeSwitchCase(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitTypeSwitchCase(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TypeListContext extends ParserRuleContext {
  List<TypeContext> types() => getRuleContexts<TypeContext>();
  TypeContext type(int i) => getRuleContext<TypeContext>(i);
  List<TerminalNode> COMMAs() => getTokens(MicroGoParser.TOKEN_COMMA);
  TerminalNode COMMA(int i) => getToken(MicroGoParser.TOKEN_COMMA, i);
  TypeListContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterTypeList(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitTypeList(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitTypeList(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ForStmtContext extends ParserRuleContext {
  TerminalNode FOR() => getToken(MicroGoParser.TOKEN_FOR, 0);
  BlockContext block() => getRuleContext<BlockContext>(0);
  ConditionContext condition() => getRuleContext<ConditionContext>(0);
  ForClauseContext forClause() => getRuleContext<ForClauseContext>(0);
  RangeClauseContext rangeClause() => getRuleContext<RangeClauseContext>(0);
  ForStmtContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_forStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterForStmt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitForStmt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitForStmt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ConditionContext extends ParserRuleContext {
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  ConditionContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_condition;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterCondition(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitCondition(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitCondition(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ForClauseContext extends ParserRuleContext {
  List<TerminalNode> SEMIs() => getTokens(MicroGoParser.TOKEN_SEMI);
  TerminalNode SEMI(int i) => getToken(MicroGoParser.TOKEN_SEMI, i);
  List<SimpleStmtContext> simpleStmts() => getRuleContexts<SimpleStmtContext>();
  SimpleStmtContext simpleStmt(int i) => getRuleContext<SimpleStmtContext>(i);
  ConditionContext condition() => getRuleContext<ConditionContext>(0);
  ForClauseContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_forClause;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterForClause(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitForClause(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitForClause(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class RangeClauseContext extends ParserRuleContext {
  TerminalNode RANGE() => getToken(MicroGoParser.TOKEN_RANGE, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  IdentifierListContext identifierList() =>
      getRuleContext<IdentifierListContext>(0);
  TerminalNode SHORT_ASSIGN() => getToken(MicroGoParser.TOKEN_SHORT_ASSIGN, 0);
  RangeClauseContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_rangeClause;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterRangeClause(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitRangeClause(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitRangeClause(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ReturnStmtContext extends ParserRuleContext {
  TerminalNode RETURN() => getToken(MicroGoParser.TOKEN_RETURN, 0);
  ExpressionListContext expressionList() =>
      getRuleContext<ExpressionListContext>(0);
  ReturnStmtContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_returnStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterReturnStmt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitReturnStmt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitReturnStmt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class BreakStmtContext extends ParserRuleContext {
  TerminalNode BREAK() => getToken(MicroGoParser.TOKEN_BREAK, 0);
  LabelContext label() => getRuleContext<LabelContext>(0);
  BreakStmtContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_breakStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterBreakStmt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitBreakStmt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitBreakStmt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ContinueStmtContext extends ParserRuleContext {
  TerminalNode CONTINUE() => getToken(MicroGoParser.TOKEN_CONTINUE, 0);
  LabelContext label() => getRuleContext<LabelContext>(0);
  ContinueStmtContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_continueStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterContinueStmt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitContinueStmt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitContinueStmt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class GotoStmtContext extends ParserRuleContext {
  TerminalNode GOTO() => getToken(MicroGoParser.TOKEN_GOTO, 0);
  LabelContext label() => getRuleContext<LabelContext>(0);
  GotoStmtContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_gotoStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterGotoStmt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitGotoStmt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitGotoStmt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class FallthroughStmtContext extends ParserRuleContext {
  TerminalNode FALLTHROUGH() => getToken(MicroGoParser.TOKEN_FALLTHROUGH, 0);
  FallthroughStmtContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_fallthroughStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterFallthroughStmt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitFallthroughStmt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitFallthroughStmt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class EosContext extends ParserRuleContext {
  TerminalNode SEMI() => getToken(MicroGoParser.TOKEN_SEMI, 0);
  TerminalNode EOF() => getToken(MicroGoParser.TOKEN_EOF, 0);
  EosContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_eos;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterEos(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitEos(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitEos(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ConversionExprAltContext extends PrimaryExprContext {
  ConversionContext conversion() => getRuleContext<ConversionContext>(0);
  ConversionExprAltContext(PrimaryExprContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterConversionExprAlt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitConversionExprAlt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitConversionExprAlt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class SliceExprAltContext extends PrimaryExprContext {
  PrimaryExprContext primaryExpr() => getRuleContext<PrimaryExprContext>(0);
  SliceContext slice() => getRuleContext<SliceContext>(0);
  SliceExprAltContext(PrimaryExprContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterSliceExprAlt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitSliceExprAlt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitSliceExprAlt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class MethodExprAltContext extends PrimaryExprContext {
  MethodExprContext methodExpr() => getRuleContext<MethodExprContext>(0);
  MethodExprAltContext(PrimaryExprContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterMethodExprAlt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitMethodExprAlt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitMethodExprAlt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class SelectorExprAltContext extends PrimaryExprContext {
  PrimaryExprContext primaryExpr() => getRuleContext<PrimaryExprContext>(0);
  SelectorContext selector() => getRuleContext<SelectorContext>(0);
  SelectorExprAltContext(PrimaryExprContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterSelectorExprAlt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitSelectorExprAlt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitSelectorExprAlt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ArgumentsExprAltContext extends PrimaryExprContext {
  PrimaryExprContext primaryExpr() => getRuleContext<PrimaryExprContext>(0);
  ArgumentsContext arguments() => getRuleContext<ArgumentsContext>(0);
  ArgumentsExprAltContext(PrimaryExprContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterArgumentsExprAlt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitArgumentsExprAlt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitArgumentsExprAlt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class OperandExprAltContext extends PrimaryExprContext {
  OperandContext operand() => getRuleContext<OperandContext>(0);
  OperandExprAltContext(PrimaryExprContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterOperandExprAlt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitOperandExprAlt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitOperandExprAlt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class IndexExprAltContext extends PrimaryExprContext {
  PrimaryExprContext primaryExpr() => getRuleContext<PrimaryExprContext>(0);
  IndexContext index() => getRuleContext<IndexContext>(0);
  IndexExprAltContext(PrimaryExprContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterIndexExprAlt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitIndexExprAlt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitIndexExprAlt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class MultExprAltContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  MultOpContext multOp() => getRuleContext<MultOpContext>(0);
  MultExprAltContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterMultExprAlt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitMultExprAlt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitMultExprAlt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class OrExprAltContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode LOGICAL_OR() => getToken(MicroGoParser.TOKEN_LOGICAL_OR, 0);
  OrExprAltContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterOrExprAlt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitOrExprAlt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitOrExprAlt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class AndExprAltContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode LOGICAL_AND() => getToken(MicroGoParser.TOKEN_LOGICAL_AND, 0);
  AndExprAltContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterAndExprAlt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitAndExprAlt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitAndExprAlt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class AddExprAltContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  AddOpContext addOp() => getRuleContext<AddOpContext>(0);
  AddExprAltContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterAddExprAlt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitAddExprAlt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitAddExprAlt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class UnaryExprAltContext extends ExpressionContext {
  UnaryExprContext unaryExpr() => getRuleContext<UnaryExprContext>(0);
  UnaryExprAltContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterUnaryExprAlt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitUnaryExprAlt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitUnaryExprAlt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class RelExprAltContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  RelOpContext relOp() => getRuleContext<RelOpContext>(0);
  RelExprAltContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterRelExprAlt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitRelExprAlt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitRelExprAlt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class IncStmtAltContext extends IncDecStmtContext {
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode PLUS_PLUS() => getToken(MicroGoParser.TOKEN_PLUS_PLUS, 0);
  IncStmtAltContext(IncDecStmtContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterIncStmtAlt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitIncStmtAlt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitIncStmtAlt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class DecStmtAltContext extends IncDecStmtContext {
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode MINUS_MINUS() => getToken(MicroGoParser.TOKEN_MINUS_MINUS, 0);
  DecStmtAltContext(IncDecStmtContext ctx) {
    copyFrom(ctx);
  }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterDecStmtAlt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitDecStmtAlt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitDecStmtAlt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}
