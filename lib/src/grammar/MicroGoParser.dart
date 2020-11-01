// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'dart:io';

import 'package:antlr4/antlr4.dart';

import 'MicroGoBaseListener.dart';
import 'MicroGoBaseParser.dart';
import 'MicroGoBaseVisitor.dart';
import 'MicroGoListener.dart';
import 'MicroGoVisitor.dart';

const int RULE_sourceFile = 0,
    RULE_packageClause = 1,
    RULE_packageName = 2,
    RULE_importDecl = 3,
    RULE_importSpec = 4,
    RULE_importPath = 5,
    RULE_stringLit = 6,
    RULE_rawStringLit = 7,
    RULE_interpretedStringLit = 8,
    RULE_topLevelDecl = 9,
    RULE_declaration = 10,
    RULE_constDecl = 11,
    RULE_constSpec = 12,
    RULE_identifierList = 13,
    RULE_expressionList = 14,
    RULE_typeDecl = 15,
    RULE_typeSpec = 16,
    RULE_aliasDecl = 17,
    RULE_typeDef = 18,
    RULE_varDecl = 19,
    RULE_varSpec = 20,
    RULE_type = 21,
    RULE_typeName = 22,
    RULE_typeLit = 23,
    RULE_arrayType = 24,
    RULE_arrayLength = 25,
    RULE_elementType = 26,
    RULE_sliceType = 27,
    RULE_structType = 28,
    RULE_fieldDecl = 29,
    RULE_embeddedField = 30,
    RULE_pointerType = 31,
    RULE_baseType = 32,
    RULE_functionType = 33,
    RULE_signature = 34,
    RULE_result = 35,
    RULE_parameters = 36,
    RULE_parameterList = 37,
    RULE_parameterDecl = 38,
    RULE_interfaceType = 39,
    RULE_methodSpec = 40,
    RULE_methodName = 41,
    RULE_interfaceTypeName = 42,
    RULE_block = 43,
    RULE_statementList = 44,
    RULE_shortVarDecl = 45,
    RULE_functionDecl = 46,
    RULE_functionName = 47,
    RULE_functionBody = 48,
    RULE_methodDecl = 49,
    RULE_receiver = 50,
    RULE_operand = 51,
    RULE_literal = 52,
    RULE_basicLit = 53,
    RULE_nilLit = 54,
    RULE_integerLit = 55,
    RULE_decimalLit = 56,
    RULE_binaryLit = 57,
    RULE_octalLit = 58,
    RULE_hexLit = 59,
    RULE_floatLit = 60,
    RULE_decimalFloatLit = 61,
    RULE_hexFloatLit = 62,
    RULE_runeLit = 63,
    RULE_operandName = 64,
    RULE_qualifiedIdent = 65,
    RULE_compositeLit = 66,
    RULE_literalType = 67,
    RULE_literalValue = 68,
    RULE_elementList = 69,
    RULE_keyedElement = 70,
    RULE_key = 71,
    RULE_fieldName = 72,
    RULE_element = 73,
    RULE_functionLit = 74,
    RULE_primaryExpr = 75,
    RULE_selector = 76,
    RULE_index = 77,
    RULE_slice = 78,
    RULE_typeAssertion = 79,
    RULE_arguments = 80,
    RULE_methodExpr = 81,
    RULE_receiverType = 82,
    RULE_expression = 83,
    RULE_unaryExpr = 84,
    RULE_unarypOp = 85,
    RULE_multOp = 86,
    RULE_addOp = 87,
    RULE_relOp = 88,
    RULE_conversion = 89,
    RULE_statement = 90,
    RULE_simpleStmt = 91,
    RULE_emptyStmt = 92,
    RULE_labeledStmt = 93,
    RULE_label = 94,
    RULE_expressionStmt = 95,
    RULE_incDecStmt = 96,
    RULE_assignment = 97,
    RULE_assignOp = 98,
    RULE_ifStmt = 99,
    RULE_switchStmt = 100,
    RULE_exprSwitchStmt = 101,
    RULE_exprCaseClause = 102,
    RULE_exprSwitchCase = 103,
    RULE_typeSwitchStmt = 104,
    RULE_typeSwitchGuard = 105,
    RULE_typeCaseClause = 106,
    RULE_typeSwitchCase = 107,
    RULE_typeList = 108,
    RULE_forStmt = 109,
    RULE_condition = 110,
    RULE_forClause = 111,
    RULE_initStmt = 112,
    RULE_postStmt = 113,
    RULE_rangeClause = 114,
    RULE_returnStmt = 115,
    RULE_breakStmt = 116,
    RULE_continueStmt = 117,
    RULE_gotoStmt = 118,
    RULE_fallthroughStmt = 119,
    RULE_eos = 120;

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
    'packageClause',
    'packageName',
    'importDecl',
    'importSpec',
    'importPath',
    'stringLit',
    'rawStringLit',
    'interpretedStringLit',
    'topLevelDecl',
    'declaration',
    'constDecl',
    'constSpec',
    'identifierList',
    'expressionList',
    'typeDecl',
    'typeSpec',
    'aliasDecl',
    'typeDef',
    'varDecl',
    'varSpec',
    'type',
    'typeName',
    'typeLit',
    'arrayType',
    'arrayLength',
    'elementType',
    'sliceType',
    'structType',
    'fieldDecl',
    'embeddedField',
    'pointerType',
    'baseType',
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
    'receiver',
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
    'typeAssertion',
    'arguments',
    'methodExpr',
    'receiverType',
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
    'initStmt',
    'postStmt',
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
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 242;
      packageClause();
      state = 243;
      eos();
      state = 249;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_IMPORT) {
        state = 244;
        importDecl();
        state = 245;
        eos();
        state = 251;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 257;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 &&
          ((BigInt.one << _la) &
                  ((BigInt.one << TOKEN_FUNC) |
                      (BigInt.one << TOKEN_CONST) |
                      (BigInt.one << TOKEN_TYPE) |
                      (BigInt.one << TOKEN_VAR))) !=
              BigInt.zero)) {
        state = 252;
        topLevelDecl();
        state = 253;
        eos();
        state = 259;
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
    enterRule(_localctx, 2, RULE_packageClause);
    try {
      enterOuterAlt(_localctx, 1);
      state = 260;
      match(TOKEN_PACKAGE);
      state = 261;
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
    enterRule(_localctx, 4, RULE_packageName);
    try {
      enterOuterAlt(_localctx, 1);
      state = 263;
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
    enterRule(_localctx, 6, RULE_importDecl);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 265;
      match(TOKEN_IMPORT);
      state = 277;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_IDENTIFIER:
        case TOKEN_DOT:
        case TOKEN_RAW_STRING_LIT:
        case TOKEN_INTERPRETED_STRING_LIT:
          state = 266;
          importSpec();
          break;
        case TOKEN_L_PAREN:
          state = 267;
          match(TOKEN_L_PAREN);
          state = 273;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          while (((((_la - 24)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 24)) &
                      ((BigInt.one << (TOKEN_IDENTIFIER - 24)) |
                          (BigInt.one << (TOKEN_DOT - 24)) |
                          (BigInt.one << (TOKEN_RAW_STRING_LIT - 24)) |
                          (BigInt.one <<
                              (TOKEN_INTERPRETED_STRING_LIT - 24)))) !=
                  BigInt.zero)) {
            state = 268;
            importSpec();
            state = 269;
            eos();
            state = 275;
            errorHandler.sync(this);
            _la = tokenStream.LA(1);
          }
          state = 276;
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

  ImportSpecContext importSpec() {
    dynamic _localctx = ImportSpecContext(context, state);
    enterRule(_localctx, 8, RULE_importSpec);
    try {
      enterOuterAlt(_localctx, 1);
      state = 281;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_DOT:
          state = 279;
          match(TOKEN_DOT);
          break;
        case TOKEN_IDENTIFIER:
          state = 280;
          packageName();
          break;
        case TOKEN_RAW_STRING_LIT:
        case TOKEN_INTERPRETED_STRING_LIT:
          break;
        default:
          break;
      }
      state = 283;
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
    enterRule(_localctx, 10, RULE_importPath);
    try {
      enterOuterAlt(_localctx, 1);
      state = 285;
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

  StringLitContext stringLit() {
    dynamic _localctx = StringLitContext(context, state);
    enterRule(_localctx, 12, RULE_stringLit);
    try {
      state = 289;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_RAW_STRING_LIT:
          enterOuterAlt(_localctx, 1);
          state = 287;
          rawStringLit();
          break;
        case TOKEN_INTERPRETED_STRING_LIT:
          enterOuterAlt(_localctx, 2);
          state = 288;
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
    enterRule(_localctx, 14, RULE_rawStringLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 291;
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
    enterRule(_localctx, 16, RULE_interpretedStringLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 293;
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

  TopLevelDeclContext topLevelDecl() {
    dynamic _localctx = TopLevelDeclContext(context, state);
    enterRule(_localctx, 18, RULE_topLevelDecl);
    try {
      state = 298;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 6, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 295;
          declaration();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 296;
          functionDecl();
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 297;
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
      state = 303;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_CONST:
          enterOuterAlt(_localctx, 1);
          state = 300;
          constDecl();
          break;
        case TOKEN_TYPE:
          enterOuterAlt(_localctx, 2);
          state = 301;
          typeDecl();
          break;
        case TOKEN_VAR:
          enterOuterAlt(_localctx, 3);
          state = 302;
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
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 305;
      match(TOKEN_CONST);
      state = 317;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_IDENTIFIER:
          state = 306;
          constSpec();
          break;
        case TOKEN_L_PAREN:
          state = 307;
          match(TOKEN_L_PAREN);
          state = 313;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          while (_la == TOKEN_IDENTIFIER) {
            state = 308;
            constSpec();
            state = 309;
            eos();
            state = 315;
            errorHandler.sync(this);
            _la = tokenStream.LA(1);
          }
          state = 316;
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

  ConstSpecContext constSpec() {
    dynamic _localctx = ConstSpecContext(context, state);
    enterRule(_localctx, 24, RULE_constSpec);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 319;
      identifierList();
      state = 325;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 11, context)) {
        case 1:
          state = 321;
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
            state = 320;
            type();
          }

          state = 323;
          match(TOKEN_EQUAL);
          state = 324;
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
    enterRule(_localctx, 26, RULE_identifierList);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 327;
      match(TOKEN_IDENTIFIER);
      state = 332;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 12, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 328;
          match(TOKEN_COMMA);
          state = 329;
          match(TOKEN_IDENTIFIER);
        }
        state = 334;
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

  ExpressionListContext expressionList() {
    dynamic _localctx = ExpressionListContext(context, state);
    enterRule(_localctx, 28, RULE_expressionList);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 335;
      expression(0);
      state = 340;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 13, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 336;
          match(TOKEN_COMMA);
          state = 337;
          expression(0);
        }
        state = 342;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 13, context);
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
    enterRule(_localctx, 30, RULE_typeDecl);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 343;
      match(TOKEN_TYPE);
      state = 355;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_IDENTIFIER:
          state = 344;
          typeSpec();
          break;
        case TOKEN_L_PAREN:
          state = 345;
          match(TOKEN_L_PAREN);
          state = 351;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          while (_la == TOKEN_IDENTIFIER) {
            state = 346;
            typeSpec();
            state = 347;
            eos();
            state = 353;
            errorHandler.sync(this);
            _la = tokenStream.LA(1);
          }
          state = 354;
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

  TypeSpecContext typeSpec() {
    dynamic _localctx = TypeSpecContext(context, state);
    enterRule(_localctx, 32, RULE_typeSpec);
    try {
      state = 359;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 16, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 357;
          aliasDecl();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 358;
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
    enterRule(_localctx, 34, RULE_aliasDecl);
    try {
      enterOuterAlt(_localctx, 1);
      state = 361;
      match(TOKEN_IDENTIFIER);
      state = 362;
      match(TOKEN_EQUAL);
      state = 363;
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
    enterRule(_localctx, 36, RULE_typeDef);
    try {
      enterOuterAlt(_localctx, 1);
      state = 365;
      match(TOKEN_IDENTIFIER);
      state = 366;
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
    enterRule(_localctx, 38, RULE_varDecl);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 368;
      match(TOKEN_VAR);
      state = 380;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_IDENTIFIER:
          state = 369;
          varSpec();
          break;
        case TOKEN_L_PAREN:
          state = 370;
          match(TOKEN_L_PAREN);
          state = 376;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          while (_la == TOKEN_IDENTIFIER) {
            state = 371;
            varSpec();
            state = 372;
            eos();
            state = 378;
            errorHandler.sync(this);
            _la = tokenStream.LA(1);
          }
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

  VarSpecContext varSpec() {
    dynamic _localctx = VarSpecContext(context, state);
    enterRule(_localctx, 40, RULE_varSpec);
    try {
      enterOuterAlt(_localctx, 1);
      state = 382;
      identifierList();
      state = 390;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_FUNC:
        case TOKEN_INTERFACE:
        case TOKEN_STRUCT:
        case TOKEN_IDENTIFIER:
        case TOKEN_STAR:
        case TOKEN_L_PAREN:
        case TOKEN_L_BRACKET:
          state = 383;
          type();
          state = 386;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 19, context)) {
            case 1:
              state = 384;
              match(TOKEN_EQUAL);
              state = 385;
              expressionList();
              break;
          }
          break;
        case TOKEN_EQUAL:
          state = 388;
          match(TOKEN_EQUAL);
          state = 389;
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
    enterRule(_localctx, 42, RULE_type);
    try {
      state = 398;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_IDENTIFIER:
          enterOuterAlt(_localctx, 1);
          state = 392;
          typeName();
          break;
        case TOKEN_FUNC:
        case TOKEN_INTERFACE:
        case TOKEN_STRUCT:
        case TOKEN_STAR:
        case TOKEN_L_BRACKET:
          enterOuterAlt(_localctx, 2);
          state = 393;
          typeLit();
          break;
        case TOKEN_L_PAREN:
          enterOuterAlt(_localctx, 3);
          state = 394;
          match(TOKEN_L_PAREN);
          state = 395;
          type();
          state = 396;
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
    enterRule(_localctx, 44, RULE_typeName);
    try {
      state = 402;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 22, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 400;
          match(TOKEN_IDENTIFIER);
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 401;
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
    enterRule(_localctx, 46, RULE_typeLit);
    try {
      state = 410;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 23, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 404;
          arrayType();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 405;
          structType();
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 406;
          pointerType();
          break;
        case 4:
          enterOuterAlt(_localctx, 4);
          state = 407;
          functionType();
          break;
        case 5:
          enterOuterAlt(_localctx, 5);
          state = 408;
          interfaceType();
          break;
        case 6:
          enterOuterAlt(_localctx, 6);
          state = 409;
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
    enterRule(_localctx, 48, RULE_arrayType);
    try {
      enterOuterAlt(_localctx, 1);
      state = 412;
      match(TOKEN_L_BRACKET);
      state = 413;
      arrayLength();
      state = 414;
      match(TOKEN_R_BRACKET);
      state = 415;
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
    enterRule(_localctx, 50, RULE_arrayLength);
    try {
      enterOuterAlt(_localctx, 1);
      state = 417;
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
    enterRule(_localctx, 52, RULE_elementType);
    try {
      enterOuterAlt(_localctx, 1);
      state = 419;
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
    enterRule(_localctx, 54, RULE_sliceType);
    try {
      enterOuterAlt(_localctx, 1);
      state = 421;
      match(TOKEN_L_BRACKET);
      state = 422;
      match(TOKEN_R_BRACKET);
      state = 423;
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
    enterRule(_localctx, 56, RULE_structType);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 425;
      match(TOKEN_STRUCT);
      state = 426;
      match(TOKEN_L_CURLY);
      state = 432;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_IDENTIFIER || _la == TOKEN_STAR) {
        state = 427;
        fieldDecl();
        state = 428;
        eos();
        state = 434;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 435;
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

  FieldDeclContext fieldDecl() {
    dynamic _localctx = FieldDeclContext(context, state);
    enterRule(_localctx, 58, RULE_fieldDecl);
    try {
      enterOuterAlt(_localctx, 1);
      state = 441;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 25, context)) {
        case 1:
          state = 437;
          identifierList();
          state = 438;
          type();
          break;
        case 2:
          state = 440;
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
    enterRule(_localctx, 60, RULE_embeddedField);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 444;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_STAR) {
        state = 443;
        match(TOKEN_STAR);
      }

      state = 446;
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
    enterRule(_localctx, 62, RULE_pointerType);
    try {
      enterOuterAlt(_localctx, 1);
      state = 448;
      match(TOKEN_STAR);
      state = 449;
      baseType();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BaseTypeContext baseType() {
    dynamic _localctx = BaseTypeContext(context, state);
    enterRule(_localctx, 64, RULE_baseType);
    try {
      enterOuterAlt(_localctx, 1);
      state = 451;
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
    enterRule(_localctx, 66, RULE_functionType);
    try {
      enterOuterAlt(_localctx, 1);
      state = 453;
      match(TOKEN_FUNC);
      state = 454;
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
    enterRule(_localctx, 68, RULE_signature);
    try {
      enterOuterAlt(_localctx, 1);
      state = 456;
      parameters();
      state = 458;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 27, context)) {
        case 1:
          state = 457;
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
    enterRule(_localctx, 70, RULE_result);
    try {
      state = 462;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 28, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 460;
          parameters();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 461;
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
    enterRule(_localctx, 72, RULE_parameters);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 464;
      match(TOKEN_L_PAREN);
      state = 469;
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
        state = 465;
        parameterList();
        state = 467;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_COMMA) {
          state = 466;
          match(TOKEN_COMMA);
        }
      }

      state = 471;
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
    enterRule(_localctx, 74, RULE_parameterList);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 473;
      parameterDecl();
      state = 478;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 31, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 474;
          match(TOKEN_COMMA);
          state = 475;
          parameterDecl();
        }
        state = 480;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 31, context);
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
    enterRule(_localctx, 76, RULE_parameterDecl);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 482;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 32, context)) {
        case 1:
          state = 481;
          identifierList();
          break;
      }
      state = 485;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_ELLIPSIS) {
        state = 484;
        match(TOKEN_ELLIPSIS);
      }

      state = 487;
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
    enterRule(_localctx, 78, RULE_interfaceType);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 489;
      match(TOKEN_INTERFACE);
      state = 490;
      match(TOKEN_L_CURLY);
      state = 499;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_IDENTIFIER) {
        state = 493;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 34, context)) {
          case 1:
            state = 491;
            methodSpec();
            break;
          case 2:
            state = 492;
            interfaceTypeName();
            break;
        }
        state = 495;
        eos();
        state = 501;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 502;
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
    enterRule(_localctx, 80, RULE_methodSpec);
    try {
      enterOuterAlt(_localctx, 1);
      state = 504;
      methodName();
      state = 505;
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
    enterRule(_localctx, 82, RULE_methodName);
    try {
      enterOuterAlt(_localctx, 1);
      state = 507;
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
    enterRule(_localctx, 84, RULE_interfaceTypeName);
    try {
      enterOuterAlt(_localctx, 1);
      state = 509;
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
    enterRule(_localctx, 86, RULE_block);
    try {
      enterOuterAlt(_localctx, 1);
      state = 511;
      match(TOKEN_L_CURLY);
      state = 512;
      statementList();
      state = 513;
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
    enterRule(_localctx, 88, RULE_statementList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 520;
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
        state = 515;
        statement();
        state = 516;
        eos();
        state = 522;
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
    enterRule(_localctx, 90, RULE_shortVarDecl);
    try {
      enterOuterAlt(_localctx, 1);
      state = 523;
      identifierList();
      state = 524;
      match(TOKEN_SHORT_ASSIGN);
      state = 525;
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
    enterRule(_localctx, 92, RULE_functionDecl);
    try {
      enterOuterAlt(_localctx, 1);
      state = 527;
      match(TOKEN_FUNC);
      state = 528;
      functionName();
      state = 529;
      signature();
      state = 531;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 37, context)) {
        case 1:
          state = 530;
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
    enterRule(_localctx, 94, RULE_functionName);
    try {
      enterOuterAlt(_localctx, 1);
      state = 533;
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
    enterRule(_localctx, 96, RULE_functionBody);
    try {
      enterOuterAlt(_localctx, 1);
      state = 535;
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
    enterRule(_localctx, 98, RULE_methodDecl);
    try {
      enterOuterAlt(_localctx, 1);
      state = 537;
      match(TOKEN_FUNC);
      state = 538;
      receiver();
      state = 539;
      methodName();
      state = 540;
      signature();
      state = 542;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 38, context)) {
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

  ReceiverContext receiver() {
    dynamic _localctx = ReceiverContext(context, state);
    enterRule(_localctx, 100, RULE_receiver);
    try {
      enterOuterAlt(_localctx, 1);
      state = 544;
      parameters();
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
    enterRule(_localctx, 102, RULE_operand);
    try {
      state = 552;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 39, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 546;
          literal();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 547;
          operandName();
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 548;
          match(TOKEN_L_PAREN);
          state = 549;
          expression(0);
          state = 550;
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
    enterRule(_localctx, 104, RULE_literal);
    try {
      state = 557;
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
          state = 554;
          basicLit();
          break;
        case TOKEN_STRUCT:
        case TOKEN_IDENTIFIER:
        case TOKEN_L_BRACKET:
          enterOuterAlt(_localctx, 2);
          state = 555;
          compositeLit();
          break;
        case TOKEN_FUNC:
          enterOuterAlt(_localctx, 3);
          state = 556;
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
    enterRule(_localctx, 106, RULE_basicLit);
    try {
      state = 564;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_NIL:
          enterOuterAlt(_localctx, 1);
          state = 559;
          nilLit();
          break;
        case TOKEN_DECIMAL_LIT:
        case TOKEN_BINARY_LIT:
        case TOKEN_OCTAL_LIT:
        case TOKEN_HEX_LIT:
          enterOuterAlt(_localctx, 2);
          state = 560;
          integerLit();
          break;
        case TOKEN_DECIMAL_FLOAT_LIT:
        case TOKEN_HEX_FLOAT_LIT:
          enterOuterAlt(_localctx, 3);
          state = 561;
          floatLit();
          break;
        case TOKEN_RUNE_LIT:
          enterOuterAlt(_localctx, 4);
          state = 562;
          runeLit();
          break;
        case TOKEN_RAW_STRING_LIT:
        case TOKEN_INTERPRETED_STRING_LIT:
          enterOuterAlt(_localctx, 5);
          state = 563;
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
    enterRule(_localctx, 108, RULE_nilLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 566;
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
    enterRule(_localctx, 110, RULE_integerLit);
    try {
      state = 572;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_DECIMAL_LIT:
          enterOuterAlt(_localctx, 1);
          state = 568;
          decimalLit();
          break;
        case TOKEN_BINARY_LIT:
          enterOuterAlt(_localctx, 2);
          state = 569;
          binaryLit();
          break;
        case TOKEN_OCTAL_LIT:
          enterOuterAlt(_localctx, 3);
          state = 570;
          octalLit();
          break;
        case TOKEN_HEX_LIT:
          enterOuterAlt(_localctx, 4);
          state = 571;
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
    enterRule(_localctx, 112, RULE_decimalLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 574;
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
    enterRule(_localctx, 114, RULE_binaryLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 576;
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
    enterRule(_localctx, 116, RULE_octalLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 578;
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
    enterRule(_localctx, 118, RULE_hexLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 580;
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
    enterRule(_localctx, 120, RULE_floatLit);
    try {
      state = 584;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_DECIMAL_FLOAT_LIT:
          enterOuterAlt(_localctx, 1);
          state = 582;
          decimalFloatLit();
          break;
        case TOKEN_HEX_FLOAT_LIT:
          enterOuterAlt(_localctx, 2);
          state = 583;
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
    enterRule(_localctx, 122, RULE_decimalFloatLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 586;
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
    enterRule(_localctx, 124, RULE_hexFloatLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 588;
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
    enterRule(_localctx, 126, RULE_runeLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 590;
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

  OperandNameContext operandName() {
    dynamic _localctx = OperandNameContext(context, state);
    enterRule(_localctx, 128, RULE_operandName);
    try {
      state = 594;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 44, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 592;
          match(TOKEN_IDENTIFIER);
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 593;
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
    enterRule(_localctx, 130, RULE_qualifiedIdent);
    try {
      enterOuterAlt(_localctx, 1);
      state = 596;
      packageName();
      state = 597;
      match(TOKEN_DOT);
      state = 598;
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
    enterRule(_localctx, 132, RULE_compositeLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 600;
      literalType();
      state = 601;
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
    enterRule(_localctx, 134, RULE_literalType);
    try {
      state = 611;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 45, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 603;
          structType();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 604;
          arrayType();
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 605;
          match(TOKEN_L_BRACKET);
          state = 606;
          match(TOKEN_ELLIPSIS);
          state = 607;
          match(TOKEN_R_BRACKET);
          state = 608;
          elementType();
          break;
        case 4:
          enterOuterAlt(_localctx, 4);
          state = 609;
          sliceType();
          break;
        case 5:
          enterOuterAlt(_localctx, 5);
          state = 610;
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
    enterRule(_localctx, 136, RULE_literalValue);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 613;
      match(TOKEN_L_CURLY);
      state = 618;
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
        state = 614;
        elementList();
        state = 616;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_COMMA) {
          state = 615;
          match(TOKEN_COMMA);
        }
      }

      state = 620;
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
    enterRule(_localctx, 138, RULE_elementList);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 622;
      keyedElement();
      state = 627;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 48, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 623;
          match(TOKEN_COMMA);
          state = 624;
          keyedElement();
        }
        state = 629;
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
    enterRule(_localctx, 140, RULE_keyedElement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 633;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 49, context)) {
        case 1:
          state = 630;
          key();
          state = 631;
          match(TOKEN_COLON);
          break;
      }
      state = 635;
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
    enterRule(_localctx, 142, RULE_key);
    try {
      state = 640;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 50, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 637;
          fieldName();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 638;
          expression(0);
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 639;
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
    enterRule(_localctx, 144, RULE_fieldName);
    try {
      enterOuterAlt(_localctx, 1);
      state = 642;
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
    enterRule(_localctx, 146, RULE_element);
    try {
      state = 646;
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
          state = 644;
          expression(0);
          break;
        case TOKEN_L_CURLY:
          enterOuterAlt(_localctx, 2);
          state = 645;
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
    enterRule(_localctx, 148, RULE_functionLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 648;
      match(TOKEN_FUNC);
      state = 649;
      signature();
      state = 650;
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
    var _startState = 150;
    enterRecursionRule(_localctx, 150, RULE_primaryExpr, _p);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 656;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 52, context)) {
        case 1:
          state = 653;
          operand();
          break;
        case 2:
          state = 654;
          conversion();
          break;
        case 3:
          state = 655;
          methodExpr();
          break;
      }
      context.stop = tokenStream.LT(-1);
      state = 670;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 54, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 668;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 53, context)) {
            case 1:
              _localctx = PrimaryExprContext(_parentctx, _parentState);
              pushNewRecursionContext(_localctx, _startState, RULE_primaryExpr);
              state = 658;
              if (!(precpred(context, 5))) {
                throw FailedPredicateException(this, "precpred(context, 5)");
              }
              state = 659;
              selector();
              break;
            case 2:
              _localctx = PrimaryExprContext(_parentctx, _parentState);
              pushNewRecursionContext(_localctx, _startState, RULE_primaryExpr);
              state = 660;
              if (!(precpred(context, 4))) {
                throw FailedPredicateException(this, "precpred(context, 4)");
              }
              state = 661;
              index();
              break;
            case 3:
              _localctx = PrimaryExprContext(_parentctx, _parentState);
              pushNewRecursionContext(_localctx, _startState, RULE_primaryExpr);
              state = 662;
              if (!(precpred(context, 3))) {
                throw FailedPredicateException(this, "precpred(context, 3)");
              }
              state = 663;
              slice();
              break;
            case 4:
              _localctx = PrimaryExprContext(_parentctx, _parentState);
              pushNewRecursionContext(_localctx, _startState, RULE_primaryExpr);
              state = 664;
              if (!(precpred(context, 2))) {
                throw FailedPredicateException(this, "precpred(context, 2)");
              }
              state = 665;
              typeAssertion();
              break;
            case 5:
              _localctx = PrimaryExprContext(_parentctx, _parentState);
              pushNewRecursionContext(_localctx, _startState, RULE_primaryExpr);
              state = 666;
              if (!(precpred(context, 1))) {
                throw FailedPredicateException(this, "precpred(context, 1)");
              }
              state = 667;
              arguments();
              break;
          }
        }
        state = 672;
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
    enterRule(_localctx, 152, RULE_selector);
    try {
      enterOuterAlt(_localctx, 1);
      state = 673;
      match(TOKEN_DOT);
      state = 674;
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
    enterRule(_localctx, 154, RULE_index);
    try {
      enterOuterAlt(_localctx, 1);
      state = 676;
      match(TOKEN_L_BRACKET);
      state = 677;
      expression(0);
      state = 678;
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
    enterRule(_localctx, 156, RULE_slice);
    int _la;
    try {
      state = 699;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 58, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 680;
          match(TOKEN_L_BRACKET);
          state = 682;
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
            state = 681;
            expression(0);
          }

          state = 684;
          match(TOKEN_COLON);
          state = 686;
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
            state = 685;
            expression(0);
          }

          state = 688;
          match(TOKEN_R_BRACKET);
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 689;
          match(TOKEN_L_BRACKET);
          state = 691;
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
            state = 690;
            expression(0);
          }

          state = 693;
          match(TOKEN_COLON);
          state = 694;
          expression(0);
          state = 695;
          match(TOKEN_COLON);
          state = 696;
          expression(0);
          state = 697;
          match(TOKEN_R_BRACKET);
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

  TypeAssertionContext typeAssertion() {
    dynamic _localctx = TypeAssertionContext(context, state);
    enterRule(_localctx, 158, RULE_typeAssertion);
    try {
      enterOuterAlt(_localctx, 1);
      state = 701;
      match(TOKEN_DOT);
      state = 702;
      match(TOKEN_L_PAREN);
      state = 703;
      type();
      state = 704;
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

  ArgumentsContext arguments() {
    dynamic _localctx = ArgumentsContext(context, state);
    enterRule(_localctx, 160, RULE_arguments);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 706;
      match(TOKEN_L_PAREN);
      state = 721;
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
        state = 713;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 60, context)) {
          case 1:
            state = 707;
            expressionList();
            break;
          case 2:
            state = 708;
            type();
            state = 711;
            errorHandler.sync(this);
            switch (interpreter.adaptivePredict(tokenStream, 59, context)) {
              case 1:
                state = 709;
                match(TOKEN_COMMA);
                state = 710;
                expressionList();
                break;
            }
            break;
        }
        state = 716;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_ELLIPSIS) {
          state = 715;
          match(TOKEN_ELLIPSIS);
        }

        state = 719;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_COMMA) {
          state = 718;
          match(TOKEN_COMMA);
        }
      }

      state = 723;
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
    enterRule(_localctx, 162, RULE_methodExpr);
    try {
      enterOuterAlt(_localctx, 1);
      state = 725;
      receiverType();
      state = 726;
      match(TOKEN_DOT);
      state = 727;
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

  ReceiverTypeContext receiverType() {
    dynamic _localctx = ReceiverTypeContext(context, state);
    enterRule(_localctx, 164, RULE_receiverType);
    try {
      enterOuterAlt(_localctx, 1);
      state = 729;
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

  ExpressionContext expression([int _p = 0]) {
    final _parentctx = context;
    final _parentState = state;
    dynamic _localctx = ExpressionContext(context, _parentState);
    var _prevctx = _localctx;
    var _startState = 166;
    enterRecursionRule(_localctx, 166, RULE_expression, _p);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 732;
      unaryExpr();
      context.stop = tokenStream.LT(-1);
      state = 754;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 65, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 752;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 64, context)) {
            case 1:
              _localctx = ExpressionContext(_parentctx, _parentState);
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 734;
              if (!(precpred(context, 5))) {
                throw FailedPredicateException(this, "precpred(context, 5)");
              }
              state = 735;
              multOp();
              state = 736;
              expression(6);
              break;
            case 2:
              _localctx = ExpressionContext(_parentctx, _parentState);
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 738;
              if (!(precpred(context, 4))) {
                throw FailedPredicateException(this, "precpred(context, 4)");
              }
              state = 739;
              addOp();
              state = 740;
              expression(5);
              break;
            case 3:
              _localctx = ExpressionContext(_parentctx, _parentState);
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 742;
              if (!(precpred(context, 3))) {
                throw FailedPredicateException(this, "precpred(context, 3)");
              }
              state = 743;
              relOp();
              state = 744;
              expression(4);
              break;
            case 4:
              _localctx = ExpressionContext(_parentctx, _parentState);
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 746;
              if (!(precpred(context, 2))) {
                throw FailedPredicateException(this, "precpred(context, 2)");
              }
              state = 747;
              match(TOKEN_LOGICAL_AND);
              state = 748;
              expression(3);
              break;
            case 5:
              _localctx = ExpressionContext(_parentctx, _parentState);
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 749;
              if (!(precpred(context, 1))) {
                throw FailedPredicateException(this, "precpred(context, 1)");
              }
              state = 750;
              match(TOKEN_LOGICAL_OR);
              state = 751;
              expression(2);
              break;
          }
        }
        state = 756;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 65, context);
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
    enterRule(_localctx, 168, RULE_unaryExpr);
    try {
      state = 761;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 66, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 757;
          primaryExpr(0);
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 758;
          unarypOp();
          state = 759;
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
    enterRule(_localctx, 170, RULE_unarypOp);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 763;
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
    enterRule(_localctx, 172, RULE_multOp);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 765;
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
    enterRule(_localctx, 174, RULE_addOp);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 767;
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
    enterRule(_localctx, 176, RULE_relOp);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 769;
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
    enterRule(_localctx, 178, RULE_conversion);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 771;
      type();
      state = 772;
      match(TOKEN_L_PAREN);
      state = 773;
      expression(0);
      state = 775;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_COMMA) {
        state = 774;
        match(TOKEN_COMMA);
      }

      state = 777;
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
    enterRule(_localctx, 180, RULE_statement);
    try {
      state = 791;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 68, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 779;
          declaration();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 780;
          labeledStmt();
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 781;
          simpleStmt();
          break;
        case 4:
          enterOuterAlt(_localctx, 4);
          state = 782;
          returnStmt();
          break;
        case 5:
          enterOuterAlt(_localctx, 5);
          state = 783;
          breakStmt();
          break;
        case 6:
          enterOuterAlt(_localctx, 6);
          state = 784;
          continueStmt();
          break;
        case 7:
          enterOuterAlt(_localctx, 7);
          state = 785;
          gotoStmt();
          break;
        case 8:
          enterOuterAlt(_localctx, 8);
          state = 786;
          fallthroughStmt();
          break;
        case 9:
          enterOuterAlt(_localctx, 9);
          state = 787;
          block();
          break;
        case 10:
          enterOuterAlt(_localctx, 10);
          state = 788;
          ifStmt();
          break;
        case 11:
          enterOuterAlt(_localctx, 11);
          state = 789;
          switchStmt();
          break;
        case 12:
          enterOuterAlt(_localctx, 12);
          state = 790;
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
    enterRule(_localctx, 182, RULE_simpleStmt);
    try {
      state = 798;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 69, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 793;
          emptyStmt();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 794;
          expressionStmt();
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 795;
          incDecStmt();
          break;
        case 4:
          enterOuterAlt(_localctx, 4);
          state = 796;
          assignment();
          break;
        case 5:
          enterOuterAlt(_localctx, 5);
          state = 797;
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
    enterRule(_localctx, 184, RULE_emptyStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 800;
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
    enterRule(_localctx, 186, RULE_labeledStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 802;
      label();
      state = 803;
      match(TOKEN_COLON);
      state = 804;
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
    enterRule(_localctx, 188, RULE_label);
    try {
      enterOuterAlt(_localctx, 1);
      state = 806;
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
    enterRule(_localctx, 190, RULE_expressionStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 808;
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
    enterRule(_localctx, 192, RULE_incDecStmt);
    try {
      state = 816;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 70, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 810;
          expression(0);
          state = 811;
          match(TOKEN_PLUS_PLUS);
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 813;
          expression(0);
          state = 814;
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
    enterRule(_localctx, 194, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 818;
      expressionList();
      state = 819;
      assignOp();
      state = 820;
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
    enterRule(_localctx, 196, RULE_assignOp);
    try {
      enterOuterAlt(_localctx, 1);
      state = 824;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_LSHIFT:
        case TOKEN_RSHIFT:
        case TOKEN_BIT_CLEAR:
        case TOKEN_STAR:
        case TOKEN_DIV:
        case TOKEN_MOD:
        case TOKEN_AMPERSAND:
          state = 822;
          multOp();
          break;
        case TOKEN_PLUS:
        case TOKEN_MINUS:
        case TOKEN_PIPE:
        case TOKEN_CARET:
          state = 823;
          addOp();
          break;
        case TOKEN_EQUAL:
          break;
        default:
          break;
      }
      state = 826;
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
    enterRule(_localctx, 198, RULE_ifStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 828;
      match(TOKEN_IF);
      state = 832;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 72, context)) {
        case 1:
          state = 829;
          simpleStmt();
          state = 830;
          match(TOKEN_SEMI);
          break;
      }
      state = 834;
      expression(0);
      state = 835;
      block();
      state = 841;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 74, context)) {
        case 1:
          state = 836;
          match(TOKEN_ELSE);
          state = 839;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)) {
            case TOKEN_IF:
              state = 837;
              ifStmt();
              break;
            case TOKEN_L_CURLY:
              state = 838;
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
    enterRule(_localctx, 200, RULE_switchStmt);
    try {
      state = 845;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 75, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 843;
          exprSwitchStmt();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 844;
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
    enterRule(_localctx, 202, RULE_exprSwitchStmt);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 847;
      match(TOKEN_SWITCH);
      state = 851;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 76, context)) {
        case 1:
          state = 848;
          simpleStmt();
          state = 849;
          match(TOKEN_SEMI);
          break;
      }
      state = 854;
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
        state = 853;
        expression(0);
      }

      state = 856;
      match(TOKEN_L_CURLY);
      state = 857;
      exprCaseClause();
      state = 858;
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
    enterRule(_localctx, 204, RULE_exprCaseClause);
    try {
      enterOuterAlt(_localctx, 1);
      state = 860;
      exprSwitchCase();
      state = 861;
      match(TOKEN_COLON);
      state = 862;
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
    enterRule(_localctx, 206, RULE_exprSwitchCase);
    try {
      state = 867;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_CASE:
          enterOuterAlt(_localctx, 1);
          state = 864;
          match(TOKEN_CASE);
          state = 865;
          expressionList();
          break;
        case TOKEN_DEFAULT:
          enterOuterAlt(_localctx, 2);
          state = 866;
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
    enterRule(_localctx, 208, RULE_typeSwitchStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 869;
      match(TOKEN_SWITCH);
      state = 873;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 79, context)) {
        case 1:
          state = 870;
          simpleStmt();
          state = 871;
          match(TOKEN_SEMI);
          break;
      }
      state = 875;
      typeSwitchGuard();
      state = 876;
      match(TOKEN_L_CURLY);
      state = 877;
      typeCaseClause();
      state = 878;
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
    enterRule(_localctx, 210, RULE_typeSwitchGuard);
    try {
      enterOuterAlt(_localctx, 1);
      state = 882;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 80, context)) {
        case 1:
          state = 880;
          match(TOKEN_IDENTIFIER);
          state = 881;
          match(TOKEN_SHORT_ASSIGN);
          break;
      }
      state = 884;
      primaryExpr(0);
      state = 885;
      match(TOKEN_DOT);
      state = 886;
      match(TOKEN_L_PAREN);
      state = 887;
      match(TOKEN_TYPE);
      state = 888;
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
    enterRule(_localctx, 212, RULE_typeCaseClause);
    try {
      enterOuterAlt(_localctx, 1);
      state = 890;
      typeSwitchCase();
      state = 891;
      match(TOKEN_COLON);
      state = 892;
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
    enterRule(_localctx, 214, RULE_typeSwitchCase);
    try {
      state = 897;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_CASE:
          enterOuterAlt(_localctx, 1);
          state = 894;
          match(TOKEN_CASE);
          state = 895;
          typeList();
          break;
        case TOKEN_DEFAULT:
          enterOuterAlt(_localctx, 2);
          state = 896;
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
    enterRule(_localctx, 216, RULE_typeList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 899;
      type();
      state = 904;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_COMMA) {
        state = 900;
        match(TOKEN_COMMA);
        state = 901;
        type();
        state = 906;
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
    enterRule(_localctx, 218, RULE_forStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 907;
      match(TOKEN_FOR);
      state = 911;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 83, context)) {
        case 1:
          state = 908;
          condition();
          break;
        case 2:
          state = 909;
          forClause();
          break;
        case 3:
          state = 910;
          rangeClause();
          break;
      }
      state = 913;
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
    enterRule(_localctx, 220, RULE_condition);
    try {
      enterOuterAlt(_localctx, 1);
      state = 915;
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
    enterRule(_localctx, 222, RULE_forClause);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 918;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 84, context)) {
        case 1:
          state = 917;
          initStmt();
          break;
      }
      state = 920;
      match(TOKEN_SEMI);
      state = 922;
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
        state = 921;
        condition();
      }

      state = 924;
      match(TOKEN_SEMI);
      state = 926;
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
        state = 925;
        postStmt();
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

  InitStmtContext initStmt() {
    dynamic _localctx = InitStmtContext(context, state);
    enterRule(_localctx, 224, RULE_initStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 928;
      simpleStmt();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PostStmtContext postStmt() {
    dynamic _localctx = PostStmtContext(context, state);
    enterRule(_localctx, 226, RULE_postStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 930;
      simpleStmt();
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
    enterRule(_localctx, 228, RULE_rangeClause);
    try {
      enterOuterAlt(_localctx, 1);
      state = 938;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 87, context)) {
        case 1:
          state = 932;
          expressionList();
          state = 933;
          match(TOKEN_EQUAL);
          break;
        case 2:
          state = 935;
          identifierList();
          state = 936;
          match(TOKEN_SHORT_ASSIGN);
          break;
      }
      state = 940;
      match(TOKEN_RANGE);
      state = 941;
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
    enterRule(_localctx, 230, RULE_returnStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 943;
      match(TOKEN_RETURN);
      state = 945;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 88, context)) {
        case 1:
          state = 944;
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
    enterRule(_localctx, 232, RULE_breakStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 947;
      match(TOKEN_BREAK);
      state = 949;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 89, context)) {
        case 1:
          state = 948;
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
    enterRule(_localctx, 234, RULE_continueStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 951;
      match(TOKEN_CONTINUE);
      state = 953;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 90, context)) {
        case 1:
          state = 952;
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
    enterRule(_localctx, 236, RULE_gotoStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 955;
      match(TOKEN_GOTO);
      state = 956;
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
    enterRule(_localctx, 238, RULE_fallthroughStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 958;
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
    enterRule(_localctx, 240, RULE_eos);
    try {
      state = 964;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 91, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 960;
          match(TOKEN_SEMI);
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 961;
          match(TOKEN_EOF);
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 962;
          if (!(lineTerminatorAhead())) {
            throw FailedPredicateException(this, "lineTerminatorAhead()");
          }
          break;
        case 4:
          enterOuterAlt(_localctx, 4);
          state = 963;
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
      case 75:
        return _primaryExpr_sempred(_localctx, predIndex);
      case 83:
        return _expression_sempred(_localctx, predIndex);
      case 120:
        return _eos_sempred(_localctx, predIndex);
    }
    return true;
  }

  bool _primaryExpr_sempred(PrimaryExprContext _localctx, int predIndex) {
    switch (predIndex) {
      case 0:
        return precpred(context, 5);
      case 1:
        return precpred(context, 4);
      case 2:
        return precpred(context, 3);
      case 3:
        return precpred(context, 2);
      case 4:
        return precpred(context, 1);
    }
    return true;
  }

  bool _expression_sempred(ExpressionContext _localctx, int predIndex) {
    switch (predIndex) {
      case 5:
        return precpred(context, 5);
      case 6:
        return precpred(context, 4);
      case 7:
        return precpred(context, 3);
      case 8:
        return precpred(context, 2);
      case 9:
        return precpred(context, 1);
    }
    return true;
  }

  bool _eos_sempred(EosContext _localctx, int predIndex) {
    switch (predIndex) {
      case 10:
        return lineTerminatorAhead();
      case 11:
        return checkPreviousTokenText("}");
    }
    return true;
  }

  static const String _serializedATN = '\u{3}\u{608B}\u{A72A}\u{8133}\u{B9ED}'
      '\u{417C}\u{3BE7}\u{7786}\u{5964}\u{3}\u{5A}\u{3C9}\u{4}\u{2}\u{9}\u{2}'
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
      '\u{4}\u{79}\u{9}\u{79}\u{4}\u{7A}\u{9}\u{7A}\u{3}\u{2}\u{3}\u{2}\u{3}'
      '\u{2}\u{3}\u{2}\u{3}\u{2}\u{7}\u{2}\u{FA}\u{A}\u{2}\u{C}\u{2}\u{E}\u{2}'
      '\u{FD}\u{B}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{7}\u{2}\u{102}\u{A}'
      '\u{2}\u{C}\u{2}\u{E}\u{2}\u{105}\u{B}\u{2}\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}'
      '\u{3}\u{4}\u{3}\u{4}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}'
      '\u{3}\u{5}\u{7}\u{5}\u{112}\u{A}\u{5}\u{C}\u{5}\u{E}\u{5}\u{115}\u{B}'
      '\u{5}\u{3}\u{5}\u{5}\u{5}\u{118}\u{A}\u{5}\u{3}\u{6}\u{3}\u{6}\u{5}\u{6}'
      '\u{11C}\u{A}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{7}\u{3}\u{7}\u{3}\u{8}\u{3}'
      '\u{8}\u{5}\u{8}\u{124}\u{A}\u{8}\u{3}\u{9}\u{3}\u{9}\u{3}\u{A}\u{3}\u{A}'
      '\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{5}\u{B}\u{12D}\u{A}\u{B}\u{3}\u{C}\u{3}'
      '\u{C}\u{3}\u{C}\u{5}\u{C}\u{132}\u{A}\u{C}\u{3}\u{D}\u{3}\u{D}\u{3}\u{D}'
      '\u{3}\u{D}\u{3}\u{D}\u{3}\u{D}\u{7}\u{D}\u{13A}\u{A}\u{D}\u{C}\u{D}\u{E}'
      '\u{D}\u{13D}\u{B}\u{D}\u{3}\u{D}\u{5}\u{D}\u{140}\u{A}\u{D}\u{3}\u{E}'
      '\u{3}\u{E}\u{5}\u{E}\u{144}\u{A}\u{E}\u{3}\u{E}\u{3}\u{E}\u{5}\u{E}\u{148}'
      '\u{A}\u{E}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{7}\u{F}\u{14D}\u{A}\u{F}\u{C}'
      '\u{F}\u{E}\u{F}\u{150}\u{B}\u{F}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{7}'
      '\u{10}\u{155}\u{A}\u{10}\u{C}\u{10}\u{E}\u{10}\u{158}\u{B}\u{10}\u{3}'
      '\u{11}\u{3}\u{11}\u{3}\u{11}\u{3}\u{11}\u{3}\u{11}\u{3}\u{11}\u{7}\u{11}'
      '\u{160}\u{A}\u{11}\u{C}\u{11}\u{E}\u{11}\u{163}\u{B}\u{11}\u{3}\u{11}'
      '\u{5}\u{11}\u{166}\u{A}\u{11}\u{3}\u{12}\u{3}\u{12}\u{5}\u{12}\u{16A}'
      '\u{A}\u{12}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{14}\u{3}'
      '\u{14}\u{3}\u{14}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}'
      '\u{3}\u{15}\u{7}\u{15}\u{179}\u{A}\u{15}\u{C}\u{15}\u{E}\u{15}\u{17C}'
      '\u{B}\u{15}\u{3}\u{15}\u{5}\u{15}\u{17F}\u{A}\u{15}\u{3}\u{16}\u{3}\u{16}'
      '\u{3}\u{16}\u{3}\u{16}\u{5}\u{16}\u{185}\u{A}\u{16}\u{3}\u{16}\u{3}\u{16}'
      '\u{5}\u{16}\u{189}\u{A}\u{16}\u{3}\u{17}\u{3}\u{17}\u{3}\u{17}\u{3}\u{17}'
      '\u{3}\u{17}\u{3}\u{17}\u{5}\u{17}\u{191}\u{A}\u{17}\u{3}\u{18}\u{3}\u{18}'
      '\u{5}\u{18}\u{195}\u{A}\u{18}\u{3}\u{19}\u{3}\u{19}\u{3}\u{19}\u{3}\u{19}'
      '\u{3}\u{19}\u{3}\u{19}\u{5}\u{19}\u{19D}\u{A}\u{19}\u{3}\u{1A}\u{3}\u{1A}'
      '\u{3}\u{1A}\u{3}\u{1A}\u{3}\u{1A}\u{3}\u{1B}\u{3}\u{1B}\u{3}\u{1C}\u{3}'
      '\u{1C}\u{3}\u{1D}\u{3}\u{1D}\u{3}\u{1D}\u{3}\u{1D}\u{3}\u{1E}\u{3}\u{1E}'
      '\u{3}\u{1E}\u{3}\u{1E}\u{3}\u{1E}\u{7}\u{1E}\u{1B1}\u{A}\u{1E}\u{C}\u{1E}'
      '\u{E}\u{1E}\u{1B4}\u{B}\u{1E}\u{3}\u{1E}\u{3}\u{1E}\u{3}\u{1F}\u{3}\u{1F}'
      '\u{3}\u{1F}\u{3}\u{1F}\u{5}\u{1F}\u{1BC}\u{A}\u{1F}\u{3}\u{20}\u{5}\u{20}'
      '\u{1BF}\u{A}\u{20}\u{3}\u{20}\u{3}\u{20}\u{3}\u{21}\u{3}\u{21}\u{3}\u{21}'
      '\u{3}\u{22}\u{3}\u{22}\u{3}\u{23}\u{3}\u{23}\u{3}\u{23}\u{3}\u{24}\u{3}'
      '\u{24}\u{5}\u{24}\u{1CD}\u{A}\u{24}\u{3}\u{25}\u{3}\u{25}\u{5}\u{25}'
      '\u{1D1}\u{A}\u{25}\u{3}\u{26}\u{3}\u{26}\u{3}\u{26}\u{5}\u{26}\u{1D6}'
      '\u{A}\u{26}\u{5}\u{26}\u{1D8}\u{A}\u{26}\u{3}\u{26}\u{3}\u{26}\u{3}\u{27}'
      '\u{3}\u{27}\u{3}\u{27}\u{7}\u{27}\u{1DF}\u{A}\u{27}\u{C}\u{27}\u{E}\u{27}'
      '\u{1E2}\u{B}\u{27}\u{3}\u{28}\u{5}\u{28}\u{1E5}\u{A}\u{28}\u{3}\u{28}'
      '\u{5}\u{28}\u{1E8}\u{A}\u{28}\u{3}\u{28}\u{3}\u{28}\u{3}\u{29}\u{3}\u{29}'
      '\u{3}\u{29}\u{3}\u{29}\u{5}\u{29}\u{1F0}\u{A}\u{29}\u{3}\u{29}\u{3}\u{29}'
      '\u{7}\u{29}\u{1F4}\u{A}\u{29}\u{C}\u{29}\u{E}\u{29}\u{1F7}\u{B}\u{29}'
      '\u{3}\u{29}\u{3}\u{29}\u{3}\u{2A}\u{3}\u{2A}\u{3}\u{2A}\u{3}\u{2B}\u{3}'
      '\u{2B}\u{3}\u{2C}\u{3}\u{2C}\u{3}\u{2D}\u{3}\u{2D}\u{3}\u{2D}\u{3}\u{2D}'
      '\u{3}\u{2E}\u{3}\u{2E}\u{3}\u{2E}\u{7}\u{2E}\u{209}\u{A}\u{2E}\u{C}\u{2E}'
      '\u{E}\u{2E}\u{20C}\u{B}\u{2E}\u{3}\u{2F}\u{3}\u{2F}\u{3}\u{2F}\u{3}\u{2F}'
      '\u{3}\u{30}\u{3}\u{30}\u{3}\u{30}\u{3}\u{30}\u{5}\u{30}\u{216}\u{A}\u{30}'
      '\u{3}\u{31}\u{3}\u{31}\u{3}\u{32}\u{3}\u{32}\u{3}\u{33}\u{3}\u{33}\u{3}'
      '\u{33}\u{3}\u{33}\u{3}\u{33}\u{5}\u{33}\u{221}\u{A}\u{33}\u{3}\u{34}'
      '\u{3}\u{34}\u{3}\u{35}\u{3}\u{35}\u{3}\u{35}\u{3}\u{35}\u{3}\u{35}\u{3}'
      '\u{35}\u{5}\u{35}\u{22B}\u{A}\u{35}\u{3}\u{36}\u{3}\u{36}\u{3}\u{36}'
      '\u{5}\u{36}\u{230}\u{A}\u{36}\u{3}\u{37}\u{3}\u{37}\u{3}\u{37}\u{3}\u{37}'
      '\u{3}\u{37}\u{5}\u{37}\u{237}\u{A}\u{37}\u{3}\u{38}\u{3}\u{38}\u{3}\u{39}'
      '\u{3}\u{39}\u{3}\u{39}\u{3}\u{39}\u{5}\u{39}\u{23F}\u{A}\u{39}\u{3}\u{3A}'
      '\u{3}\u{3A}\u{3}\u{3B}\u{3}\u{3B}\u{3}\u{3C}\u{3}\u{3C}\u{3}\u{3D}\u{3}'
      '\u{3D}\u{3}\u{3E}\u{3}\u{3E}\u{5}\u{3E}\u{24B}\u{A}\u{3E}\u{3}\u{3F}'
      '\u{3}\u{3F}\u{3}\u{40}\u{3}\u{40}\u{3}\u{41}\u{3}\u{41}\u{3}\u{42}\u{3}'
      '\u{42}\u{5}\u{42}\u{255}\u{A}\u{42}\u{3}\u{43}\u{3}\u{43}\u{3}\u{43}'
      '\u{3}\u{43}\u{3}\u{44}\u{3}\u{44}\u{3}\u{44}\u{3}\u{45}\u{3}\u{45}\u{3}'
      '\u{45}\u{3}\u{45}\u{3}\u{45}\u{3}\u{45}\u{3}\u{45}\u{3}\u{45}\u{5}\u{45}'
      '\u{266}\u{A}\u{45}\u{3}\u{46}\u{3}\u{46}\u{3}\u{46}\u{5}\u{46}\u{26B}'
      '\u{A}\u{46}\u{5}\u{46}\u{26D}\u{A}\u{46}\u{3}\u{46}\u{3}\u{46}\u{3}\u{47}'
      '\u{3}\u{47}\u{3}\u{47}\u{7}\u{47}\u{274}\u{A}\u{47}\u{C}\u{47}\u{E}\u{47}'
      '\u{277}\u{B}\u{47}\u{3}\u{48}\u{3}\u{48}\u{3}\u{48}\u{5}\u{48}\u{27C}'
      '\u{A}\u{48}\u{3}\u{48}\u{3}\u{48}\u{3}\u{49}\u{3}\u{49}\u{3}\u{49}\u{5}'
      '\u{49}\u{283}\u{A}\u{49}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4B}\u{3}\u{4B}'
      '\u{5}\u{4B}\u{289}\u{A}\u{4B}\u{3}\u{4C}\u{3}\u{4C}\u{3}\u{4C}\u{3}\u{4C}'
      '\u{3}\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{5}\u{4D}\u{293}\u{A}\u{4D}'
      '\u{3}\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{3}'
      '\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{7}\u{4D}\u{29F}\u{A}\u{4D}'
      '\u{C}\u{4D}\u{E}\u{4D}\u{2A2}\u{B}\u{4D}\u{3}\u{4E}\u{3}\u{4E}\u{3}\u{4E}'
      '\u{3}\u{4F}\u{3}\u{4F}\u{3}\u{4F}\u{3}\u{4F}\u{3}\u{50}\u{3}\u{50}\u{5}'
      '\u{50}\u{2AD}\u{A}\u{50}\u{3}\u{50}\u{3}\u{50}\u{5}\u{50}\u{2B1}\u{A}'
      '\u{50}\u{3}\u{50}\u{3}\u{50}\u{3}\u{50}\u{5}\u{50}\u{2B6}\u{A}\u{50}'
      '\u{3}\u{50}\u{3}\u{50}\u{3}\u{50}\u{3}\u{50}\u{3}\u{50}\u{3}\u{50}\u{5}'
      '\u{50}\u{2BE}\u{A}\u{50}\u{3}\u{51}\u{3}\u{51}\u{3}\u{51}\u{3}\u{51}'
      '\u{3}\u{51}\u{3}\u{52}\u{3}\u{52}\u{3}\u{52}\u{3}\u{52}\u{3}\u{52}\u{5}'
      '\u{52}\u{2CA}\u{A}\u{52}\u{5}\u{52}\u{2CC}\u{A}\u{52}\u{3}\u{52}\u{5}'
      '\u{52}\u{2CF}\u{A}\u{52}\u{3}\u{52}\u{5}\u{52}\u{2D2}\u{A}\u{52}\u{5}'
      '\u{52}\u{2D4}\u{A}\u{52}\u{3}\u{52}\u{3}\u{52}\u{3}\u{53}\u{3}\u{53}'
      '\u{3}\u{53}\u{3}\u{53}\u{3}\u{54}\u{3}\u{54}\u{3}\u{55}\u{3}\u{55}\u{3}'
      '\u{55}\u{3}\u{55}\u{3}\u{55}\u{3}\u{55}\u{3}\u{55}\u{3}\u{55}\u{3}\u{55}'
      '\u{3}\u{55}\u{3}\u{55}\u{3}\u{55}\u{3}\u{55}\u{3}\u{55}\u{3}\u{55}\u{3}'
      '\u{55}\u{3}\u{55}\u{3}\u{55}\u{3}\u{55}\u{3}\u{55}\u{3}\u{55}\u{7}\u{55}'
      '\u{2F3}\u{A}\u{55}\u{C}\u{55}\u{E}\u{55}\u{2F6}\u{B}\u{55}\u{3}\u{56}'
      '\u{3}\u{56}\u{3}\u{56}\u{3}\u{56}\u{5}\u{56}\u{2FC}\u{A}\u{56}\u{3}\u{57}'
      '\u{3}\u{57}\u{3}\u{58}\u{3}\u{58}\u{3}\u{59}\u{3}\u{59}\u{3}\u{5A}\u{3}'
      '\u{5A}\u{3}\u{5B}\u{3}\u{5B}\u{3}\u{5B}\u{3}\u{5B}\u{5}\u{5B}\u{30A}'
      '\u{A}\u{5B}\u{3}\u{5B}\u{3}\u{5B}\u{3}\u{5C}\u{3}\u{5C}\u{3}\u{5C}\u{3}'
      '\u{5C}\u{3}\u{5C}\u{3}\u{5C}\u{3}\u{5C}\u{3}\u{5C}\u{3}\u{5C}\u{3}\u{5C}'
      '\u{3}\u{5C}\u{3}\u{5C}\u{5}\u{5C}\u{31A}\u{A}\u{5C}\u{3}\u{5D}\u{3}\u{5D}'
      '\u{3}\u{5D}\u{3}\u{5D}\u{3}\u{5D}\u{5}\u{5D}\u{321}\u{A}\u{5D}\u{3}\u{5E}'
      '\u{3}\u{5E}\u{3}\u{5F}\u{3}\u{5F}\u{3}\u{5F}\u{3}\u{5F}\u{3}\u{60}\u{3}'
      '\u{60}\u{3}\u{61}\u{3}\u{61}\u{3}\u{62}\u{3}\u{62}\u{3}\u{62}\u{3}\u{62}'
      '\u{3}\u{62}\u{3}\u{62}\u{5}\u{62}\u{333}\u{A}\u{62}\u{3}\u{63}\u{3}\u{63}'
      '\u{3}\u{63}\u{3}\u{63}\u{3}\u{64}\u{3}\u{64}\u{5}\u{64}\u{33B}\u{A}\u{64}'
      '\u{3}\u{64}\u{3}\u{64}\u{3}\u{65}\u{3}\u{65}\u{3}\u{65}\u{3}\u{65}\u{5}'
      '\u{65}\u{343}\u{A}\u{65}\u{3}\u{65}\u{3}\u{65}\u{3}\u{65}\u{3}\u{65}'
      '\u{3}\u{65}\u{5}\u{65}\u{34A}\u{A}\u{65}\u{5}\u{65}\u{34C}\u{A}\u{65}'
      '\u{3}\u{66}\u{3}\u{66}\u{5}\u{66}\u{350}\u{A}\u{66}\u{3}\u{67}\u{3}\u{67}'
      '\u{3}\u{67}\u{3}\u{67}\u{5}\u{67}\u{356}\u{A}\u{67}\u{3}\u{67}\u{5}\u{67}'
      '\u{359}\u{A}\u{67}\u{3}\u{67}\u{3}\u{67}\u{3}\u{67}\u{3}\u{67}\u{3}\u{68}'
      '\u{3}\u{68}\u{3}\u{68}\u{3}\u{68}\u{3}\u{69}\u{3}\u{69}\u{3}\u{69}\u{5}'
      '\u{69}\u{366}\u{A}\u{69}\u{3}\u{6A}\u{3}\u{6A}\u{3}\u{6A}\u{3}\u{6A}'
      '\u{5}\u{6A}\u{36C}\u{A}\u{6A}\u{3}\u{6A}\u{3}\u{6A}\u{3}\u{6A}\u{3}\u{6A}'
      '\u{3}\u{6A}\u{3}\u{6B}\u{3}\u{6B}\u{5}\u{6B}\u{375}\u{A}\u{6B}\u{3}\u{6B}'
      '\u{3}\u{6B}\u{3}\u{6B}\u{3}\u{6B}\u{3}\u{6B}\u{3}\u{6B}\u{3}\u{6C}\u{3}'
      '\u{6C}\u{3}\u{6C}\u{3}\u{6C}\u{3}\u{6D}\u{3}\u{6D}\u{3}\u{6D}\u{5}\u{6D}'
      '\u{384}\u{A}\u{6D}\u{3}\u{6E}\u{3}\u{6E}\u{3}\u{6E}\u{7}\u{6E}\u{389}'
      '\u{A}\u{6E}\u{C}\u{6E}\u{E}\u{6E}\u{38C}\u{B}\u{6E}\u{3}\u{6F}\u{3}\u{6F}'
      '\u{3}\u{6F}\u{3}\u{6F}\u{5}\u{6F}\u{392}\u{A}\u{6F}\u{3}\u{6F}\u{3}\u{6F}'
      '\u{3}\u{70}\u{3}\u{70}\u{3}\u{71}\u{5}\u{71}\u{399}\u{A}\u{71}\u{3}\u{71}'
      '\u{3}\u{71}\u{5}\u{71}\u{39D}\u{A}\u{71}\u{3}\u{71}\u{3}\u{71}\u{5}\u{71}'
      '\u{3A1}\u{A}\u{71}\u{3}\u{72}\u{3}\u{72}\u{3}\u{73}\u{3}\u{73}\u{3}\u{74}'
      '\u{3}\u{74}\u{3}\u{74}\u{3}\u{74}\u{3}\u{74}\u{3}\u{74}\u{5}\u{74}\u{3AD}'
      '\u{A}\u{74}\u{3}\u{74}\u{3}\u{74}\u{3}\u{74}\u{3}\u{75}\u{3}\u{75}\u{5}'
      '\u{75}\u{3B4}\u{A}\u{75}\u{3}\u{76}\u{3}\u{76}\u{5}\u{76}\u{3B8}\u{A}'
      '\u{76}\u{3}\u{77}\u{3}\u{77}\u{5}\u{77}\u{3BC}\u{A}\u{77}\u{3}\u{78}'
      '\u{3}\u{78}\u{3}\u{78}\u{3}\u{79}\u{3}\u{79}\u{3}\u{7A}\u{3}\u{7A}\u{3}'
      '\u{7A}\u{3}\u{7A}\u{5}\u{7A}\u{3C7}\u{A}\u{7A}\u{3}\u{7A}\u{2}\u{4}\u{98}'
      '\u{A8}\u{7B}\u{2}\u{4}\u{6}\u{8}\u{A}\u{C}\u{E}\u{10}\u{12}\u{14}\u{16}'
      '\u{18}\u{1A}\u{1C}\u{1E}\u{20}\u{22}\u{24}\u{26}\u{28}\u{2A}\u{2C}\u{2E}'
      '\u{30}\u{32}\u{34}\u{36}\u{38}\u{3A}\u{3C}\u{3E}\u{40}\u{42}\u{44}\u{46}'
      '\u{48}\u{4A}\u{4C}\u{4E}\u{50}\u{52}\u{54}\u{56}\u{58}\u{5A}\u{5C}\u{5E}'
      '\u{60}\u{62}\u{64}\u{66}\u{68}\u{6A}\u{6C}\u{6E}\u{70}\u{72}\u{74}\u{76}'
      '\u{78}\u{7A}\u{7C}\u{7E}\u{80}\u{82}\u{84}\u{86}\u{88}\u{8A}\u{8C}\u{8E}'
      '\u{90}\u{92}\u{94}\u{96}\u{98}\u{9A}\u{9C}\u{9E}\u{A0}\u{A2}\u{A4}\u{A6}'
      '\u{A8}\u{AA}\u{AC}\u{AE}\u{B0}\u{B2}\u{B4}\u{B6}\u{B8}\u{BA}\u{BC}\u{BE}'
      '\u{C0}\u{C2}\u{C4}\u{C6}\u{C8}\u{CA}\u{CC}\u{CE}\u{D0}\u{D2}\u{D4}\u{D6}'
      '\u{D8}\u{DA}\u{DC}\u{DE}\u{E0}\u{E2}\u{E4}\u{E6}\u{E8}\u{EA}\u{EC}\u{EE}'
      '\u{F0}\u{F2}\u{2}\u{6}\u{6}\u{2}\u{33}\u{35}\u{38}\u{38}\u{3A}\u{3A}'
      '\u{45}\u{45}\u{4}\u{2}\u{27}\u{29}\u{35}\u{38}\u{4}\u{2}\u{33}\u{34}'
      '\u{39}\u{3A}\u{4}\u{2}\u{23}\u{26}\u{46}\u{47}\u{2}\u{3D8}\u{2}\u{F4}'
      '\u{3}\u{2}\u{2}\u{2}\u{4}\u{106}\u{3}\u{2}\u{2}\u{2}\u{6}\u{109}\u{3}'
      '\u{2}\u{2}\u{2}\u{8}\u{10B}\u{3}\u{2}\u{2}\u{2}\u{A}\u{11B}\u{3}\u{2}'
      '\u{2}\u{2}\u{C}\u{11F}\u{3}\u{2}\u{2}\u{2}\u{E}\u{123}\u{3}\u{2}\u{2}'
      '\u{2}\u{10}\u{125}\u{3}\u{2}\u{2}\u{2}\u{12}\u{127}\u{3}\u{2}\u{2}\u{2}'
      '\u{14}\u{12C}\u{3}\u{2}\u{2}\u{2}\u{16}\u{131}\u{3}\u{2}\u{2}\u{2}\u{18}'
      '\u{133}\u{3}\u{2}\u{2}\u{2}\u{1A}\u{141}\u{3}\u{2}\u{2}\u{2}\u{1C}\u{149}'
      '\u{3}\u{2}\u{2}\u{2}\u{1E}\u{151}\u{3}\u{2}\u{2}\u{2}\u{20}\u{159}\u{3}'
      '\u{2}\u{2}\u{2}\u{22}\u{169}\u{3}\u{2}\u{2}\u{2}\u{24}\u{16B}\u{3}\u{2}'
      '\u{2}\u{2}\u{26}\u{16F}\u{3}\u{2}\u{2}\u{2}\u{28}\u{172}\u{3}\u{2}\u{2}'
      '\u{2}\u{2A}\u{180}\u{3}\u{2}\u{2}\u{2}\u{2C}\u{190}\u{3}\u{2}\u{2}\u{2}'
      '\u{2E}\u{194}\u{3}\u{2}\u{2}\u{2}\u{30}\u{19C}\u{3}\u{2}\u{2}\u{2}\u{32}'
      '\u{19E}\u{3}\u{2}\u{2}\u{2}\u{34}\u{1A3}\u{3}\u{2}\u{2}\u{2}\u{36}\u{1A5}'
      '\u{3}\u{2}\u{2}\u{2}\u{38}\u{1A7}\u{3}\u{2}\u{2}\u{2}\u{3A}\u{1AB}\u{3}'
      '\u{2}\u{2}\u{2}\u{3C}\u{1BB}\u{3}\u{2}\u{2}\u{2}\u{3E}\u{1BE}\u{3}\u{2}'
      '\u{2}\u{2}\u{40}\u{1C2}\u{3}\u{2}\u{2}\u{2}\u{42}\u{1C5}\u{3}\u{2}\u{2}'
      '\u{2}\u{44}\u{1C7}\u{3}\u{2}\u{2}\u{2}\u{46}\u{1CA}\u{3}\u{2}\u{2}\u{2}'
      '\u{48}\u{1D0}\u{3}\u{2}\u{2}\u{2}\u{4A}\u{1D2}\u{3}\u{2}\u{2}\u{2}\u{4C}'
      '\u{1DB}\u{3}\u{2}\u{2}\u{2}\u{4E}\u{1E4}\u{3}\u{2}\u{2}\u{2}\u{50}\u{1EB}'
      '\u{3}\u{2}\u{2}\u{2}\u{52}\u{1FA}\u{3}\u{2}\u{2}\u{2}\u{54}\u{1FD}\u{3}'
      '\u{2}\u{2}\u{2}\u{56}\u{1FF}\u{3}\u{2}\u{2}\u{2}\u{58}\u{201}\u{3}\u{2}'
      '\u{2}\u{2}\u{5A}\u{20A}\u{3}\u{2}\u{2}\u{2}\u{5C}\u{20D}\u{3}\u{2}\u{2}'
      '\u{2}\u{5E}\u{211}\u{3}\u{2}\u{2}\u{2}\u{60}\u{217}\u{3}\u{2}\u{2}\u{2}'
      '\u{62}\u{219}\u{3}\u{2}\u{2}\u{2}\u{64}\u{21B}\u{3}\u{2}\u{2}\u{2}\u{66}'
      '\u{222}\u{3}\u{2}\u{2}\u{2}\u{68}\u{22A}\u{3}\u{2}\u{2}\u{2}\u{6A}\u{22F}'
      '\u{3}\u{2}\u{2}\u{2}\u{6C}\u{236}\u{3}\u{2}\u{2}\u{2}\u{6E}\u{238}\u{3}'
      '\u{2}\u{2}\u{2}\u{70}\u{23E}\u{3}\u{2}\u{2}\u{2}\u{72}\u{240}\u{3}\u{2}'
      '\u{2}\u{2}\u{74}\u{242}\u{3}\u{2}\u{2}\u{2}\u{76}\u{244}\u{3}\u{2}\u{2}'
      '\u{2}\u{78}\u{246}\u{3}\u{2}\u{2}\u{2}\u{7A}\u{24A}\u{3}\u{2}\u{2}\u{2}'
      '\u{7C}\u{24C}\u{3}\u{2}\u{2}\u{2}\u{7E}\u{24E}\u{3}\u{2}\u{2}\u{2}\u{80}'
      '\u{250}\u{3}\u{2}\u{2}\u{2}\u{82}\u{254}\u{3}\u{2}\u{2}\u{2}\u{84}\u{256}'
      '\u{3}\u{2}\u{2}\u{2}\u{86}\u{25A}\u{3}\u{2}\u{2}\u{2}\u{88}\u{265}\u{3}'
      '\u{2}\u{2}\u{2}\u{8A}\u{267}\u{3}\u{2}\u{2}\u{2}\u{8C}\u{270}\u{3}\u{2}'
      '\u{2}\u{2}\u{8E}\u{27B}\u{3}\u{2}\u{2}\u{2}\u{90}\u{282}\u{3}\u{2}\u{2}'
      '\u{2}\u{92}\u{284}\u{3}\u{2}\u{2}\u{2}\u{94}\u{288}\u{3}\u{2}\u{2}\u{2}'
      '\u{96}\u{28A}\u{3}\u{2}\u{2}\u{2}\u{98}\u{292}\u{3}\u{2}\u{2}\u{2}\u{9A}'
      '\u{2A3}\u{3}\u{2}\u{2}\u{2}\u{9C}\u{2A6}\u{3}\u{2}\u{2}\u{2}\u{9E}\u{2BD}'
      '\u{3}\u{2}\u{2}\u{2}\u{A0}\u{2BF}\u{3}\u{2}\u{2}\u{2}\u{A2}\u{2C4}\u{3}'
      '\u{2}\u{2}\u{2}\u{A4}\u{2D7}\u{3}\u{2}\u{2}\u{2}\u{A6}\u{2DB}\u{3}\u{2}'
      '\u{2}\u{2}\u{A8}\u{2DD}\u{3}\u{2}\u{2}\u{2}\u{AA}\u{2FB}\u{3}\u{2}\u{2}'
      '\u{2}\u{AC}\u{2FD}\u{3}\u{2}\u{2}\u{2}\u{AE}\u{2FF}\u{3}\u{2}\u{2}\u{2}'
      '\u{B0}\u{301}\u{3}\u{2}\u{2}\u{2}\u{B2}\u{303}\u{3}\u{2}\u{2}\u{2}\u{B4}'
      '\u{305}\u{3}\u{2}\u{2}\u{2}\u{B6}\u{319}\u{3}\u{2}\u{2}\u{2}\u{B8}\u{320}'
      '\u{3}\u{2}\u{2}\u{2}\u{BA}\u{322}\u{3}\u{2}\u{2}\u{2}\u{BC}\u{324}\u{3}'
      '\u{2}\u{2}\u{2}\u{BE}\u{328}\u{3}\u{2}\u{2}\u{2}\u{C0}\u{32A}\u{3}\u{2}'
      '\u{2}\u{2}\u{C2}\u{332}\u{3}\u{2}\u{2}\u{2}\u{C4}\u{334}\u{3}\u{2}\u{2}'
      '\u{2}\u{C6}\u{33A}\u{3}\u{2}\u{2}\u{2}\u{C8}\u{33E}\u{3}\u{2}\u{2}\u{2}'
      '\u{CA}\u{34F}\u{3}\u{2}\u{2}\u{2}\u{CC}\u{351}\u{3}\u{2}\u{2}\u{2}\u{CE}'
      '\u{35E}\u{3}\u{2}\u{2}\u{2}\u{D0}\u{365}\u{3}\u{2}\u{2}\u{2}\u{D2}\u{367}'
      '\u{3}\u{2}\u{2}\u{2}\u{D4}\u{374}\u{3}\u{2}\u{2}\u{2}\u{D6}\u{37C}\u{3}'
      '\u{2}\u{2}\u{2}\u{D8}\u{383}\u{3}\u{2}\u{2}\u{2}\u{DA}\u{385}\u{3}\u{2}'
      '\u{2}\u{2}\u{DC}\u{38D}\u{3}\u{2}\u{2}\u{2}\u{DE}\u{395}\u{3}\u{2}\u{2}'
      '\u{2}\u{E0}\u{398}\u{3}\u{2}\u{2}\u{2}\u{E2}\u{3A2}\u{3}\u{2}\u{2}\u{2}'
      '\u{E4}\u{3A4}\u{3}\u{2}\u{2}\u{2}\u{E6}\u{3AC}\u{3}\u{2}\u{2}\u{2}\u{E8}'
      '\u{3B1}\u{3}\u{2}\u{2}\u{2}\u{EA}\u{3B5}\u{3}\u{2}\u{2}\u{2}\u{EC}\u{3B9}'
      '\u{3}\u{2}\u{2}\u{2}\u{EE}\u{3BD}\u{3}\u{2}\u{2}\u{2}\u{F0}\u{3C0}\u{3}'
      '\u{2}\u{2}\u{2}\u{F2}\u{3C6}\u{3}\u{2}\u{2}\u{2}\u{F4}\u{F5}\u{5}\u{4}'
      '\u{3}\u{2}\u{F5}\u{FB}\u{5}\u{F2}\u{7A}\u{2}\u{F6}\u{F7}\u{5}\u{8}\u{5}'
      '\u{2}\u{F7}\u{F8}\u{5}\u{F2}\u{7A}\u{2}\u{F8}\u{FA}\u{3}\u{2}\u{2}\u{2}'
      '\u{F9}\u{F6}\u{3}\u{2}\u{2}\u{2}\u{FA}\u{FD}\u{3}\u{2}\u{2}\u{2}\u{FB}'
      '\u{F9}\u{3}\u{2}\u{2}\u{2}\u{FB}\u{FC}\u{3}\u{2}\u{2}\u{2}\u{FC}\u{103}'
      '\u{3}\u{2}\u{2}\u{2}\u{FD}\u{FB}\u{3}\u{2}\u{2}\u{2}\u{FE}\u{FF}\u{5}'
      '\u{14}\u{B}\u{2}\u{FF}\u{100}\u{5}\u{F2}\u{7A}\u{2}\u{100}\u{102}\u{3}'
      '\u{2}\u{2}\u{2}\u{101}\u{FE}\u{3}\u{2}\u{2}\u{2}\u{102}\u{105}\u{3}\u{2}'
      '\u{2}\u{2}\u{103}\u{101}\u{3}\u{2}\u{2}\u{2}\u{103}\u{104}\u{3}\u{2}'
      '\u{2}\u{2}\u{104}\u{3}\u{3}\u{2}\u{2}\u{2}\u{105}\u{103}\u{3}\u{2}\u{2}'
      '\u{2}\u{106}\u{107}\u{7}\u{D}\u{2}\u{2}\u{107}\u{108}\u{5}\u{6}\u{4}'
      '\u{2}\u{108}\u{5}\u{3}\u{2}\u{2}\u{2}\u{109}\u{10A}\u{7}\u{1A}\u{2}\u{2}'
      '\u{10A}\u{7}\u{3}\u{2}\u{2}\u{2}\u{10B}\u{117}\u{7}\u{16}\u{2}\u{2}\u{10C}'
      '\u{118}\u{5}\u{A}\u{6}\u{2}\u{10D}\u{113}\u{7}\u{3B}\u{2}\u{2}\u{10E}'
      '\u{10F}\u{5}\u{A}\u{6}\u{2}\u{10F}\u{110}\u{5}\u{F2}\u{7A}\u{2}\u{110}'
      '\u{112}\u{3}\u{2}\u{2}\u{2}\u{111}\u{10E}\u{3}\u{2}\u{2}\u{2}\u{112}'
      '\u{115}\u{3}\u{2}\u{2}\u{2}\u{113}\u{111}\u{3}\u{2}\u{2}\u{2}\u{113}'
      '\u{114}\u{3}\u{2}\u{2}\u{2}\u{114}\u{116}\u{3}\u{2}\u{2}\u{2}\u{115}'
      '\u{113}\u{3}\u{2}\u{2}\u{2}\u{116}\u{118}\u{7}\u{3C}\u{2}\u{2}\u{117}'
      '\u{10C}\u{3}\u{2}\u{2}\u{2}\u{117}\u{10D}\u{3}\u{2}\u{2}\u{2}\u{118}'
      '\u{9}\u{3}\u{2}\u{2}\u{2}\u{119}\u{11C}\u{7}\u{44}\u{2}\u{2}\u{11A}\u{11C}'
      '\u{5}\u{6}\u{4}\u{2}\u{11B}\u{119}\u{3}\u{2}\u{2}\u{2}\u{11B}\u{11A}'
      '\u{3}\u{2}\u{2}\u{2}\u{11B}\u{11C}\u{3}\u{2}\u{2}\u{2}\u{11C}\u{11D}'
      '\u{3}\u{2}\u{2}\u{2}\u{11D}\u{11E}\u{5}\u{C}\u{7}\u{2}\u{11E}\u{B}\u{3}'
      '\u{2}\u{2}\u{2}\u{11F}\u{120}\u{5}\u{E}\u{8}\u{2}\u{120}\u{D}\u{3}\u{2}'
      '\u{2}\u{2}\u{121}\u{124}\u{5}\u{10}\u{9}\u{2}\u{122}\u{124}\u{5}\u{12}'
      '\u{A}\u{2}\u{123}\u{121}\u{3}\u{2}\u{2}\u{2}\u{123}\u{122}\u{3}\u{2}'
      '\u{2}\u{2}\u{124}\u{F}\u{3}\u{2}\u{2}\u{2}\u{125}\u{126}\u{7}\u{55}\u{2}'
      '\u{2}\u{126}\u{11}\u{3}\u{2}\u{2}\u{2}\u{127}\u{128}\u{7}\u{56}\u{2}'
      '\u{2}\u{128}\u{13}\u{3}\u{2}\u{2}\u{2}\u{129}\u{12D}\u{5}\u{16}\u{C}'
      '\u{2}\u{12A}\u{12D}\u{5}\u{5E}\u{30}\u{2}\u{12B}\u{12D}\u{5}\u{64}\u{33}'
      '\u{2}\u{12C}\u{129}\u{3}\u{2}\u{2}\u{2}\u{12C}\u{12A}\u{3}\u{2}\u{2}'
      '\u{2}\u{12C}\u{12B}\u{3}\u{2}\u{2}\u{2}\u{12D}\u{15}\u{3}\u{2}\u{2}\u{2}'
      '\u{12E}\u{132}\u{5}\u{18}\u{D}\u{2}\u{12F}\u{132}\u{5}\u{20}\u{11}\u{2}'
      '\u{130}\u{132}\u{5}\u{28}\u{15}\u{2}\u{131}\u{12E}\u{3}\u{2}\u{2}\u{2}'
      '\u{131}\u{12F}\u{3}\u{2}\u{2}\u{2}\u{131}\u{130}\u{3}\u{2}\u{2}\u{2}'
      '\u{132}\u{17}\u{3}\u{2}\u{2}\u{2}\u{133}\u{13F}\u{7}\u{F}\u{2}\u{2}\u{134}'
      '\u{140}\u{5}\u{1A}\u{E}\u{2}\u{135}\u{13B}\u{7}\u{3B}\u{2}\u{2}\u{136}'
      '\u{137}\u{5}\u{1A}\u{E}\u{2}\u{137}\u{138}\u{5}\u{F2}\u{7A}\u{2}\u{138}'
      '\u{13A}\u{3}\u{2}\u{2}\u{2}\u{139}\u{136}\u{3}\u{2}\u{2}\u{2}\u{13A}'
      '\u{13D}\u{3}\u{2}\u{2}\u{2}\u{13B}\u{139}\u{3}\u{2}\u{2}\u{2}\u{13B}'
      '\u{13C}\u{3}\u{2}\u{2}\u{2}\u{13C}\u{13E}\u{3}\u{2}\u{2}\u{2}\u{13D}'
      '\u{13B}\u{3}\u{2}\u{2}\u{2}\u{13E}\u{140}\u{7}\u{3C}\u{2}\u{2}\u{13F}'
      '\u{134}\u{3}\u{2}\u{2}\u{2}\u{13F}\u{135}\u{3}\u{2}\u{2}\u{2}\u{140}'
      '\u{19}\u{3}\u{2}\u{2}\u{2}\u{141}\u{147}\u{5}\u{1C}\u{F}\u{2}\u{142}'
      '\u{144}\u{5}\u{2C}\u{17}\u{2}\u{143}\u{142}\u{3}\u{2}\u{2}\u{2}\u{143}'
      '\u{144}\u{3}\u{2}\u{2}\u{2}\u{144}\u{145}\u{3}\u{2}\u{2}\u{2}\u{145}'
      '\u{146}\u{7}\u{48}\u{2}\u{2}\u{146}\u{148}\u{5}\u{1E}\u{10}\u{2}\u{147}'
      '\u{143}\u{3}\u{2}\u{2}\u{2}\u{147}\u{148}\u{3}\u{2}\u{2}\u{2}\u{148}'
      '\u{1B}\u{3}\u{2}\u{2}\u{2}\u{149}\u{14E}\u{7}\u{1A}\u{2}\u{2}\u{14A}'
      '\u{14B}\u{7}\u{41}\u{2}\u{2}\u{14B}\u{14D}\u{7}\u{1A}\u{2}\u{2}\u{14C}'
      '\u{14A}\u{3}\u{2}\u{2}\u{2}\u{14D}\u{150}\u{3}\u{2}\u{2}\u{2}\u{14E}'
      '\u{14C}\u{3}\u{2}\u{2}\u{2}\u{14E}\u{14F}\u{3}\u{2}\u{2}\u{2}\u{14F}'
      '\u{1D}\u{3}\u{2}\u{2}\u{2}\u{150}\u{14E}\u{3}\u{2}\u{2}\u{2}\u{151}\u{156}'
      '\u{5}\u{A8}\u{55}\u{2}\u{152}\u{153}\u{7}\u{41}\u{2}\u{2}\u{153}\u{155}'
      '\u{5}\u{A8}\u{55}\u{2}\u{154}\u{152}\u{3}\u{2}\u{2}\u{2}\u{155}\u{158}'
      '\u{3}\u{2}\u{2}\u{2}\u{156}\u{154}\u{3}\u{2}\u{2}\u{2}\u{156}\u{157}'
      '\u{3}\u{2}\u{2}\u{2}\u{157}\u{1F}\u{3}\u{2}\u{2}\u{2}\u{158}\u{156}\u{3}'
      '\u{2}\u{2}\u{2}\u{159}\u{165}\u{7}\u{13}\u{2}\u{2}\u{15A}\u{166}\u{5}'
      '\u{22}\u{12}\u{2}\u{15B}\u{161}\u{7}\u{3B}\u{2}\u{2}\u{15C}\u{15D}\u{5}'
      '\u{22}\u{12}\u{2}\u{15D}\u{15E}\u{5}\u{F2}\u{7A}\u{2}\u{15E}\u{160}\u{3}'
      '\u{2}\u{2}\u{2}\u{15F}\u{15C}\u{3}\u{2}\u{2}\u{2}\u{160}\u{163}\u{3}'
      '\u{2}\u{2}\u{2}\u{161}\u{15F}\u{3}\u{2}\u{2}\u{2}\u{161}\u{162}\u{3}'
      '\u{2}\u{2}\u{2}\u{162}\u{164}\u{3}\u{2}\u{2}\u{2}\u{163}\u{161}\u{3}'
      '\u{2}\u{2}\u{2}\u{164}\u{166}\u{7}\u{3C}\u{2}\u{2}\u{165}\u{15A}\u{3}'
      '\u{2}\u{2}\u{2}\u{165}\u{15B}\u{3}\u{2}\u{2}\u{2}\u{166}\u{21}\u{3}\u{2}'
      '\u{2}\u{2}\u{167}\u{16A}\u{5}\u{24}\u{13}\u{2}\u{168}\u{16A}\u{5}\u{26}'
      '\u{14}\u{2}\u{169}\u{167}\u{3}\u{2}\u{2}\u{2}\u{169}\u{168}\u{3}\u{2}'
      '\u{2}\u{2}\u{16A}\u{23}\u{3}\u{2}\u{2}\u{2}\u{16B}\u{16C}\u{7}\u{1A}'
      '\u{2}\u{2}\u{16C}\u{16D}\u{7}\u{48}\u{2}\u{2}\u{16D}\u{16E}\u{5}\u{2C}'
      '\u{17}\u{2}\u{16E}\u{25}\u{3}\u{2}\u{2}\u{2}\u{16F}\u{170}\u{7}\u{1A}'
      '\u{2}\u{2}\u{170}\u{171}\u{5}\u{2C}\u{17}\u{2}\u{171}\u{27}\u{3}\u{2}'
      '\u{2}\u{2}\u{172}\u{17E}\u{7}\u{18}\u{2}\u{2}\u{173}\u{17F}\u{5}\u{2A}'
      '\u{16}\u{2}\u{174}\u{17A}\u{7}\u{3B}\u{2}\u{2}\u{175}\u{176}\u{5}\u{2A}'
      '\u{16}\u{2}\u{176}\u{177}\u{5}\u{F2}\u{7A}\u{2}\u{177}\u{179}\u{3}\u{2}'
      '\u{2}\u{2}\u{178}\u{175}\u{3}\u{2}\u{2}\u{2}\u{179}\u{17C}\u{3}\u{2}'
      '\u{2}\u{2}\u{17A}\u{178}\u{3}\u{2}\u{2}\u{2}\u{17A}\u{17B}\u{3}\u{2}'
      '\u{2}\u{2}\u{17B}\u{17D}\u{3}\u{2}\u{2}\u{2}\u{17C}\u{17A}\u{3}\u{2}'
      '\u{2}\u{2}\u{17D}\u{17F}\u{7}\u{3C}\u{2}\u{2}\u{17E}\u{173}\u{3}\u{2}'
      '\u{2}\u{2}\u{17E}\u{174}\u{3}\u{2}\u{2}\u{2}\u{17F}\u{29}\u{3}\u{2}\u{2}'
      '\u{2}\u{180}\u{188}\u{5}\u{1C}\u{F}\u{2}\u{181}\u{184}\u{5}\u{2C}\u{17}'
      '\u{2}\u{182}\u{183}\u{7}\u{48}\u{2}\u{2}\u{183}\u{185}\u{5}\u{1E}\u{10}'
      '\u{2}\u{184}\u{182}\u{3}\u{2}\u{2}\u{2}\u{184}\u{185}\u{3}\u{2}\u{2}'
      '\u{2}\u{185}\u{189}\u{3}\u{2}\u{2}\u{2}\u{186}\u{187}\u{7}\u{48}\u{2}'
      '\u{2}\u{187}\u{189}\u{5}\u{1E}\u{10}\u{2}\u{188}\u{181}\u{3}\u{2}\u{2}'
      '\u{2}\u{188}\u{186}\u{3}\u{2}\u{2}\u{2}\u{189}\u{2B}\u{3}\u{2}\u{2}\u{2}'
      '\u{18A}\u{191}\u{5}\u{2E}\u{18}\u{2}\u{18B}\u{191}\u{5}\u{30}\u{19}\u{2}'
      '\u{18C}\u{18D}\u{7}\u{3B}\u{2}\u{2}\u{18D}\u{18E}\u{5}\u{2C}\u{17}\u{2}'
      '\u{18E}\u{18F}\u{7}\u{3C}\u{2}\u{2}\u{18F}\u{191}\u{3}\u{2}\u{2}\u{2}'
      '\u{190}\u{18A}\u{3}\u{2}\u{2}\u{2}\u{190}\u{18B}\u{3}\u{2}\u{2}\u{2}'
      '\u{190}\u{18C}\u{3}\u{2}\u{2}\u{2}\u{191}\u{2D}\u{3}\u{2}\u{2}\u{2}\u{192}'
      '\u{195}\u{7}\u{1A}\u{2}\u{2}\u{193}\u{195}\u{5}\u{84}\u{43}\u{2}\u{194}'
      '\u{192}\u{3}\u{2}\u{2}\u{2}\u{194}\u{193}\u{3}\u{2}\u{2}\u{2}\u{195}'
      '\u{2F}\u{3}\u{2}\u{2}\u{2}\u{196}\u{19D}\u{5}\u{32}\u{1A}\u{2}\u{197}'
      '\u{19D}\u{5}\u{3A}\u{1E}\u{2}\u{198}\u{19D}\u{5}\u{40}\u{21}\u{2}\u{199}'
      '\u{19D}\u{5}\u{44}\u{23}\u{2}\u{19A}\u{19D}\u{5}\u{50}\u{29}\u{2}\u{19B}'
      '\u{19D}\u{5}\u{38}\u{1D}\u{2}\u{19C}\u{196}\u{3}\u{2}\u{2}\u{2}\u{19C}'
      '\u{197}\u{3}\u{2}\u{2}\u{2}\u{19C}\u{198}\u{3}\u{2}\u{2}\u{2}\u{19C}'
      '\u{199}\u{3}\u{2}\u{2}\u{2}\u{19C}\u{19A}\u{3}\u{2}\u{2}\u{2}\u{19C}'
      '\u{19B}\u{3}\u{2}\u{2}\u{2}\u{19D}\u{31}\u{3}\u{2}\u{2}\u{2}\u{19E}\u{19F}'
      '\u{7}\u{3F}\u{2}\u{2}\u{19F}\u{1A0}\u{5}\u{34}\u{1B}\u{2}\u{1A0}\u{1A1}'
      '\u{7}\u{40}\u{2}\u{2}\u{1A1}\u{1A2}\u{5}\u{36}\u{1C}\u{2}\u{1A2}\u{33}'
      '\u{3}\u{2}\u{2}\u{2}\u{1A3}\u{1A4}\u{5}\u{A8}\u{55}\u{2}\u{1A4}\u{35}'
      '\u{3}\u{2}\u{2}\u{2}\u{1A5}\u{1A6}\u{5}\u{2C}\u{17}\u{2}\u{1A6}\u{37}'
      '\u{3}\u{2}\u{2}\u{2}\u{1A7}\u{1A8}\u{7}\u{3F}\u{2}\u{2}\u{1A8}\u{1A9}'
      '\u{7}\u{40}\u{2}\u{2}\u{1A9}\u{1AA}\u{5}\u{36}\u{1C}\u{2}\u{1AA}\u{39}'
      '\u{3}\u{2}\u{2}\u{2}\u{1AB}\u{1AC}\u{7}\u{A}\u{2}\u{2}\u{1AC}\u{1B2}'
      '\u{7}\u{3D}\u{2}\u{2}\u{1AD}\u{1AE}\u{5}\u{3C}\u{1F}\u{2}\u{1AE}\u{1AF}'
      '\u{5}\u{F2}\u{7A}\u{2}\u{1AF}\u{1B1}\u{3}\u{2}\u{2}\u{2}\u{1B0}\u{1AD}'
      '\u{3}\u{2}\u{2}\u{2}\u{1B1}\u{1B4}\u{3}\u{2}\u{2}\u{2}\u{1B2}\u{1B0}'
      '\u{3}\u{2}\u{2}\u{2}\u{1B2}\u{1B3}\u{3}\u{2}\u{2}\u{2}\u{1B3}\u{1B5}'
      '\u{3}\u{2}\u{2}\u{2}\u{1B4}\u{1B2}\u{3}\u{2}\u{2}\u{2}\u{1B5}\u{1B6}'
      '\u{7}\u{3E}\u{2}\u{2}\u{1B6}\u{3B}\u{3}\u{2}\u{2}\u{2}\u{1B7}\u{1B8}'
      '\u{5}\u{1C}\u{F}\u{2}\u{1B8}\u{1B9}\u{5}\u{2C}\u{17}\u{2}\u{1B9}\u{1BC}'
      '\u{3}\u{2}\u{2}\u{2}\u{1BA}\u{1BC}\u{5}\u{3E}\u{20}\u{2}\u{1BB}\u{1B7}'
      '\u{3}\u{2}\u{2}\u{2}\u{1BB}\u{1BA}\u{3}\u{2}\u{2}\u{2}\u{1BC}\u{3D}\u{3}'
      '\u{2}\u{2}\u{2}\u{1BD}\u{1BF}\u{7}\u{35}\u{2}\u{2}\u{1BE}\u{1BD}\u{3}'
      '\u{2}\u{2}\u{2}\u{1BE}\u{1BF}\u{3}\u{2}\u{2}\u{2}\u{1BF}\u{1C0}\u{3}'
      '\u{2}\u{2}\u{2}\u{1C0}\u{1C1}\u{5}\u{2E}\u{18}\u{2}\u{1C1}\u{3F}\u{3}'
      '\u{2}\u{2}\u{2}\u{1C2}\u{1C3}\u{7}\u{35}\u{2}\u{2}\u{1C3}\u{1C4}\u{5}'
      '\u{42}\u{22}\u{2}\u{1C4}\u{41}\u{3}\u{2}\u{2}\u{2}\u{1C5}\u{1C6}\u{5}'
      '\u{2C}\u{17}\u{2}\u{1C6}\u{43}\u{3}\u{2}\u{2}\u{2}\u{1C7}\u{1C8}\u{7}'
      '\u{5}\u{2}\u{2}\u{1C8}\u{1C9}\u{5}\u{46}\u{24}\u{2}\u{1C9}\u{45}\u{3}'
      '\u{2}\u{2}\u{2}\u{1CA}\u{1CC}\u{5}\u{4A}\u{26}\u{2}\u{1CB}\u{1CD}\u{5}'
      '\u{48}\u{25}\u{2}\u{1CC}\u{1CB}\u{3}\u{2}\u{2}\u{2}\u{1CC}\u{1CD}\u{3}'
      '\u{2}\u{2}\u{2}\u{1CD}\u{47}\u{3}\u{2}\u{2}\u{2}\u{1CE}\u{1D1}\u{5}\u{4A}'
      '\u{26}\u{2}\u{1CF}\u{1D1}\u{5}\u{2C}\u{17}\u{2}\u{1D0}\u{1CE}\u{3}\u{2}'
      '\u{2}\u{2}\u{1D0}\u{1CF}\u{3}\u{2}\u{2}\u{2}\u{1D1}\u{49}\u{3}\u{2}\u{2}'
      '\u{2}\u{1D2}\u{1D7}\u{7}\u{3B}\u{2}\u{2}\u{1D3}\u{1D5}\u{5}\u{4C}\u{27}'
      '\u{2}\u{1D4}\u{1D6}\u{7}\u{41}\u{2}\u{2}\u{1D5}\u{1D4}\u{3}\u{2}\u{2}'
      '\u{2}\u{1D5}\u{1D6}\u{3}\u{2}\u{2}\u{2}\u{1D6}\u{1D8}\u{3}\u{2}\u{2}'
      '\u{2}\u{1D7}\u{1D3}\u{3}\u{2}\u{2}\u{2}\u{1D7}\u{1D8}\u{3}\u{2}\u{2}'
      '\u{2}\u{1D8}\u{1D9}\u{3}\u{2}\u{2}\u{2}\u{1D9}\u{1DA}\u{7}\u{3C}\u{2}'
      '\u{2}\u{1DA}\u{4B}\u{3}\u{2}\u{2}\u{2}\u{1DB}\u{1E0}\u{5}\u{4E}\u{28}'
      '\u{2}\u{1DC}\u{1DD}\u{7}\u{41}\u{2}\u{2}\u{1DD}\u{1DF}\u{5}\u{4E}\u{28}'
      '\u{2}\u{1DE}\u{1DC}\u{3}\u{2}\u{2}\u{2}\u{1DF}\u{1E2}\u{3}\u{2}\u{2}'
      '\u{2}\u{1E0}\u{1DE}\u{3}\u{2}\u{2}\u{2}\u{1E0}\u{1E1}\u{3}\u{2}\u{2}'
      '\u{2}\u{1E1}\u{4D}\u{3}\u{2}\u{2}\u{2}\u{1E2}\u{1E0}\u{3}\u{2}\u{2}\u{2}'
      '\u{1E3}\u{1E5}\u{5}\u{1C}\u{F}\u{2}\u{1E4}\u{1E3}\u{3}\u{2}\u{2}\u{2}'
      '\u{1E4}\u{1E5}\u{3}\u{2}\u{2}\u{2}\u{1E5}\u{1E7}\u{3}\u{2}\u{2}\u{2}'
      '\u{1E6}\u{1E8}\u{7}\u{1E}\u{2}\u{2}\u{1E7}\u{1E6}\u{3}\u{2}\u{2}\u{2}'
      '\u{1E7}\u{1E8}\u{3}\u{2}\u{2}\u{2}\u{1E8}\u{1E9}\u{3}\u{2}\u{2}\u{2}'
      '\u{1E9}\u{1EA}\u{5}\u{2C}\u{17}\u{2}\u{1EA}\u{4F}\u{3}\u{2}\u{2}\u{2}'
      '\u{1EB}\u{1EC}\u{7}\u{6}\u{2}\u{2}\u{1EC}\u{1F5}\u{7}\u{3D}\u{2}\u{2}'
      '\u{1ED}\u{1F0}\u{5}\u{52}\u{2A}\u{2}\u{1EE}\u{1F0}\u{5}\u{56}\u{2C}\u{2}'
      '\u{1EF}\u{1ED}\u{3}\u{2}\u{2}\u{2}\u{1EF}\u{1EE}\u{3}\u{2}\u{2}\u{2}'
      '\u{1F0}\u{1F1}\u{3}\u{2}\u{2}\u{2}\u{1F1}\u{1F2}\u{5}\u{F2}\u{7A}\u{2}'
      '\u{1F2}\u{1F4}\u{3}\u{2}\u{2}\u{2}\u{1F3}\u{1EF}\u{3}\u{2}\u{2}\u{2}'
      '\u{1F4}\u{1F7}\u{3}\u{2}\u{2}\u{2}\u{1F5}\u{1F3}\u{3}\u{2}\u{2}\u{2}'
      '\u{1F5}\u{1F6}\u{3}\u{2}\u{2}\u{2}\u{1F6}\u{1F8}\u{3}\u{2}\u{2}\u{2}'
      '\u{1F7}\u{1F5}\u{3}\u{2}\u{2}\u{2}\u{1F8}\u{1F9}\u{7}\u{3E}\u{2}\u{2}'
      '\u{1F9}\u{51}\u{3}\u{2}\u{2}\u{2}\u{1FA}\u{1FB}\u{5}\u{54}\u{2B}\u{2}'
      '\u{1FB}\u{1FC}\u{5}\u{46}\u{24}\u{2}\u{1FC}\u{53}\u{3}\u{2}\u{2}\u{2}'
      '\u{1FD}\u{1FE}\u{7}\u{1A}\u{2}\u{2}\u{1FE}\u{55}\u{3}\u{2}\u{2}\u{2}'
      '\u{1FF}\u{200}\u{5}\u{2E}\u{18}\u{2}\u{200}\u{57}\u{3}\u{2}\u{2}\u{2}'
      '\u{201}\u{202}\u{7}\u{3D}\u{2}\u{2}\u{202}\u{203}\u{5}\u{5A}\u{2E}\u{2}'
      '\u{203}\u{204}\u{7}\u{3E}\u{2}\u{2}\u{204}\u{59}\u{3}\u{2}\u{2}\u{2}'
      '\u{205}\u{206}\u{5}\u{B6}\u{5C}\u{2}\u{206}\u{207}\u{5}\u{F2}\u{7A}\u{2}'
      '\u{207}\u{209}\u{3}\u{2}\u{2}\u{2}\u{208}\u{205}\u{3}\u{2}\u{2}\u{2}'
      '\u{209}\u{20C}\u{3}\u{2}\u{2}\u{2}\u{20A}\u{208}\u{3}\u{2}\u{2}\u{2}'
      '\u{20A}\u{20B}\u{3}\u{2}\u{2}\u{2}\u{20B}\u{5B}\u{3}\u{2}\u{2}\u{2}\u{20C}'
      '\u{20A}\u{3}\u{2}\u{2}\u{2}\u{20D}\u{20E}\u{5}\u{1C}\u{F}\u{2}\u{20E}'
      '\u{20F}\u{7}\u{32}\u{2}\u{2}\u{20F}\u{210}\u{5}\u{1E}\u{10}\u{2}\u{210}'
      '\u{5D}\u{3}\u{2}\u{2}\u{2}\u{211}\u{212}\u{7}\u{5}\u{2}\u{2}\u{212}\u{213}'
      '\u{5}\u{60}\u{31}\u{2}\u{213}\u{215}\u{5}\u{46}\u{24}\u{2}\u{214}\u{216}'
      '\u{5}\u{62}\u{32}\u{2}\u{215}\u{214}\u{3}\u{2}\u{2}\u{2}\u{215}\u{216}'
      '\u{3}\u{2}\u{2}\u{2}\u{216}\u{5F}\u{3}\u{2}\u{2}\u{2}\u{217}\u{218}\u{7}'
      '\u{1A}\u{2}\u{2}\u{218}\u{61}\u{3}\u{2}\u{2}\u{2}\u{219}\u{21A}\u{5}'
      '\u{58}\u{2D}\u{2}\u{21A}\u{63}\u{3}\u{2}\u{2}\u{2}\u{21B}\u{21C}\u{7}'
      '\u{5}\u{2}\u{2}\u{21C}\u{21D}\u{5}\u{66}\u{34}\u{2}\u{21D}\u{21E}\u{5}'
      '\u{54}\u{2B}\u{2}\u{21E}\u{220}\u{5}\u{46}\u{24}\u{2}\u{21F}\u{221}\u{5}'
      '\u{62}\u{32}\u{2}\u{220}\u{21F}\u{3}\u{2}\u{2}\u{2}\u{220}\u{221}\u{3}'
      '\u{2}\u{2}\u{2}\u{221}\u{65}\u{3}\u{2}\u{2}\u{2}\u{222}\u{223}\u{5}\u{4A}'
      '\u{26}\u{2}\u{223}\u{67}\u{3}\u{2}\u{2}\u{2}\u{224}\u{22B}\u{5}\u{6A}'
      '\u{36}\u{2}\u{225}\u{22B}\u{5}\u{82}\u{42}\u{2}\u{226}\u{227}\u{7}\u{3B}'
      '\u{2}\u{2}\u{227}\u{228}\u{5}\u{A8}\u{55}\u{2}\u{228}\u{229}\u{7}\u{3C}'
      '\u{2}\u{2}\u{229}\u{22B}\u{3}\u{2}\u{2}\u{2}\u{22A}\u{224}\u{3}\u{2}'
      '\u{2}\u{2}\u{22A}\u{225}\u{3}\u{2}\u{2}\u{2}\u{22A}\u{226}\u{3}\u{2}'
      '\u{2}\u{2}\u{22B}\u{69}\u{3}\u{2}\u{2}\u{2}\u{22C}\u{230}\u{5}\u{6C}'
      '\u{37}\u{2}\u{22D}\u{230}\u{5}\u{86}\u{44}\u{2}\u{22E}\u{230}\u{5}\u{96}'
      '\u{4C}\u{2}\u{22F}\u{22C}\u{3}\u{2}\u{2}\u{2}\u{22F}\u{22D}\u{3}\u{2}'
      '\u{2}\u{2}\u{22F}\u{22E}\u{3}\u{2}\u{2}\u{2}\u{230}\u{6B}\u{3}\u{2}\u{2}'
      '\u{2}\u{231}\u{237}\u{5}\u{6E}\u{38}\u{2}\u{232}\u{237}\u{5}\u{70}\u{39}'
      '\u{2}\u{233}\u{237}\u{5}\u{7A}\u{3E}\u{2}\u{234}\u{237}\u{5}\u{80}\u{41}'
      '\u{2}\u{235}\u{237}\u{5}\u{E}\u{8}\u{2}\u{236}\u{231}\u{3}\u{2}\u{2}'
      '\u{2}\u{236}\u{232}\u{3}\u{2}\u{2}\u{2}\u{236}\u{233}\u{3}\u{2}\u{2}'
      '\u{2}\u{236}\u{234}\u{3}\u{2}\u{2}\u{2}\u{236}\u{235}\u{3}\u{2}\u{2}'
      '\u{2}\u{237}\u{6D}\u{3}\u{2}\u{2}\u{2}\u{238}\u{239}\u{7}\u{19}\u{2}'
      '\u{2}\u{239}\u{6F}\u{3}\u{2}\u{2}\u{2}\u{23A}\u{23F}\u{5}\u{72}\u{3A}'
      '\u{2}\u{23B}\u{23F}\u{5}\u{74}\u{3B}\u{2}\u{23C}\u{23F}\u{5}\u{76}\u{3C}'
      '\u{2}\u{23D}\u{23F}\u{5}\u{78}\u{3D}\u{2}\u{23E}\u{23A}\u{3}\u{2}\u{2}'
      '\u{2}\u{23E}\u{23B}\u{3}\u{2}\u{2}\u{2}\u{23E}\u{23C}\u{3}\u{2}\u{2}'
      '\u{2}\u{23E}\u{23D}\u{3}\u{2}\u{2}\u{2}\u{23F}\u{71}\u{3}\u{2}\u{2}\u{2}'
      '\u{240}\u{241}\u{7}\u{4E}\u{2}\u{2}\u{241}\u{73}\u{3}\u{2}\u{2}\u{2}'
      '\u{242}\u{243}\u{7}\u{4F}\u{2}\u{2}\u{243}\u{75}\u{3}\u{2}\u{2}\u{2}'
      '\u{244}\u{245}\u{7}\u{50}\u{2}\u{2}\u{245}\u{77}\u{3}\u{2}\u{2}\u{2}'
      '\u{246}\u{247}\u{7}\u{51}\u{2}\u{2}\u{247}\u{79}\u{3}\u{2}\u{2}\u{2}'
      '\u{248}\u{24B}\u{5}\u{7C}\u{3F}\u{2}\u{249}\u{24B}\u{5}\u{7E}\u{40}\u{2}'
      '\u{24A}\u{248}\u{3}\u{2}\u{2}\u{2}\u{24A}\u{249}\u{3}\u{2}\u{2}\u{2}'
      '\u{24B}\u{7B}\u{3}\u{2}\u{2}\u{2}\u{24C}\u{24D}\u{7}\u{52}\u{2}\u{2}'
      '\u{24D}\u{7D}\u{3}\u{2}\u{2}\u{2}\u{24E}\u{24F}\u{7}\u{53}\u{2}\u{2}'
      '\u{24F}\u{7F}\u{3}\u{2}\u{2}\u{2}\u{250}\u{251}\u{7}\u{54}\u{2}\u{2}'
      '\u{251}\u{81}\u{3}\u{2}\u{2}\u{2}\u{252}\u{255}\u{7}\u{1A}\u{2}\u{2}'
      '\u{253}\u{255}\u{5}\u{84}\u{43}\u{2}\u{254}\u{252}\u{3}\u{2}\u{2}\u{2}'
      '\u{254}\u{253}\u{3}\u{2}\u{2}\u{2}\u{255}\u{83}\u{3}\u{2}\u{2}\u{2}\u{256}'
      '\u{257}\u{5}\u{6}\u{4}\u{2}\u{257}\u{258}\u{7}\u{44}\u{2}\u{2}\u{258}'
      '\u{259}\u{7}\u{1A}\u{2}\u{2}\u{259}\u{85}\u{3}\u{2}\u{2}\u{2}\u{25A}'
      '\u{25B}\u{5}\u{88}\u{45}\u{2}\u{25B}\u{25C}\u{5}\u{8A}\u{46}\u{2}\u{25C}'
      '\u{87}\u{3}\u{2}\u{2}\u{2}\u{25D}\u{266}\u{5}\u{3A}\u{1E}\u{2}\u{25E}'
      '\u{266}\u{5}\u{32}\u{1A}\u{2}\u{25F}\u{260}\u{7}\u{3F}\u{2}\u{2}\u{260}'
      '\u{261}\u{7}\u{1E}\u{2}\u{2}\u{261}\u{262}\u{7}\u{40}\u{2}\u{2}\u{262}'
      '\u{266}\u{5}\u{36}\u{1C}\u{2}\u{263}\u{266}\u{5}\u{38}\u{1D}\u{2}\u{264}'
      '\u{266}\u{5}\u{2E}\u{18}\u{2}\u{265}\u{25D}\u{3}\u{2}\u{2}\u{2}\u{265}'
      '\u{25E}\u{3}\u{2}\u{2}\u{2}\u{265}\u{25F}\u{3}\u{2}\u{2}\u{2}\u{265}'
      '\u{263}\u{3}\u{2}\u{2}\u{2}\u{265}\u{264}\u{3}\u{2}\u{2}\u{2}\u{266}'
      '\u{89}\u{3}\u{2}\u{2}\u{2}\u{267}\u{26C}\u{7}\u{3D}\u{2}\u{2}\u{268}'
      '\u{26A}\u{5}\u{8C}\u{47}\u{2}\u{269}\u{26B}\u{7}\u{41}\u{2}\u{2}\u{26A}'
      '\u{269}\u{3}\u{2}\u{2}\u{2}\u{26A}\u{26B}\u{3}\u{2}\u{2}\u{2}\u{26B}'
      '\u{26D}\u{3}\u{2}\u{2}\u{2}\u{26C}\u{268}\u{3}\u{2}\u{2}\u{2}\u{26C}'
      '\u{26D}\u{3}\u{2}\u{2}\u{2}\u{26D}\u{26E}\u{3}\u{2}\u{2}\u{2}\u{26E}'
      '\u{26F}\u{7}\u{3E}\u{2}\u{2}\u{26F}\u{8B}\u{3}\u{2}\u{2}\u{2}\u{270}'
      '\u{275}\u{5}\u{8E}\u{48}\u{2}\u{271}\u{272}\u{7}\u{41}\u{2}\u{2}\u{272}'
      '\u{274}\u{5}\u{8E}\u{48}\u{2}\u{273}\u{271}\u{3}\u{2}\u{2}\u{2}\u{274}'
      '\u{277}\u{3}\u{2}\u{2}\u{2}\u{275}\u{273}\u{3}\u{2}\u{2}\u{2}\u{275}'
      '\u{276}\u{3}\u{2}\u{2}\u{2}\u{276}\u{8D}\u{3}\u{2}\u{2}\u{2}\u{277}\u{275}'
      '\u{3}\u{2}\u{2}\u{2}\u{278}\u{279}\u{5}\u{90}\u{49}\u{2}\u{279}\u{27A}'
      '\u{7}\u{43}\u{2}\u{2}\u{27A}\u{27C}\u{3}\u{2}\u{2}\u{2}\u{27B}\u{278}'
      '\u{3}\u{2}\u{2}\u{2}\u{27B}\u{27C}\u{3}\u{2}\u{2}\u{2}\u{27C}\u{27D}'
      '\u{3}\u{2}\u{2}\u{2}\u{27D}\u{27E}\u{5}\u{94}\u{4B}\u{2}\u{27E}\u{8F}'
      '\u{3}\u{2}\u{2}\u{2}\u{27F}\u{283}\u{5}\u{92}\u{4A}\u{2}\u{280}\u{283}'
      '\u{5}\u{A8}\u{55}\u{2}\u{281}\u{283}\u{5}\u{8A}\u{46}\u{2}\u{282}\u{27F}'
      '\u{3}\u{2}\u{2}\u{2}\u{282}\u{280}\u{3}\u{2}\u{2}\u{2}\u{282}\u{281}'
      '\u{3}\u{2}\u{2}\u{2}\u{283}\u{91}\u{3}\u{2}\u{2}\u{2}\u{284}\u{285}\u{7}'
      '\u{1A}\u{2}\u{2}\u{285}\u{93}\u{3}\u{2}\u{2}\u{2}\u{286}\u{289}\u{5}'
      '\u{A8}\u{55}\u{2}\u{287}\u{289}\u{5}\u{8A}\u{46}\u{2}\u{288}\u{286}\u{3}'
      '\u{2}\u{2}\u{2}\u{288}\u{287}\u{3}\u{2}\u{2}\u{2}\u{289}\u{95}\u{3}\u{2}'
      '\u{2}\u{2}\u{28A}\u{28B}\u{7}\u{5}\u{2}\u{2}\u{28B}\u{28C}\u{5}\u{46}'
      '\u{24}\u{2}\u{28C}\u{28D}\u{5}\u{62}\u{32}\u{2}\u{28D}\u{97}\u{3}\u{2}'
      '\u{2}\u{2}\u{28E}\u{28F}\u{8}\u{4D}\u{1}\u{2}\u{28F}\u{293}\u{5}\u{68}'
      '\u{35}\u{2}\u{290}\u{293}\u{5}\u{B4}\u{5B}\u{2}\u{291}\u{293}\u{5}\u{A4}'
      '\u{53}\u{2}\u{292}\u{28E}\u{3}\u{2}\u{2}\u{2}\u{292}\u{290}\u{3}\u{2}'
      '\u{2}\u{2}\u{292}\u{291}\u{3}\u{2}\u{2}\u{2}\u{293}\u{2A0}\u{3}\u{2}'
      '\u{2}\u{2}\u{294}\u{295}\u{C}\u{7}\u{2}\u{2}\u{295}\u{29F}\u{5}\u{9A}'
      '\u{4E}\u{2}\u{296}\u{297}\u{C}\u{6}\u{2}\u{2}\u{297}\u{29F}\u{5}\u{9C}'
      '\u{4F}\u{2}\u{298}\u{299}\u{C}\u{5}\u{2}\u{2}\u{299}\u{29F}\u{5}\u{9E}'
      '\u{50}\u{2}\u{29A}\u{29B}\u{C}\u{4}\u{2}\u{2}\u{29B}\u{29F}\u{5}\u{A0}'
      '\u{51}\u{2}\u{29C}\u{29D}\u{C}\u{3}\u{2}\u{2}\u{29D}\u{29F}\u{5}\u{A2}'
      '\u{52}\u{2}\u{29E}\u{294}\u{3}\u{2}\u{2}\u{2}\u{29E}\u{296}\u{3}\u{2}'
      '\u{2}\u{2}\u{29E}\u{298}\u{3}\u{2}\u{2}\u{2}\u{29E}\u{29A}\u{3}\u{2}'
      '\u{2}\u{2}\u{29E}\u{29C}\u{3}\u{2}\u{2}\u{2}\u{29F}\u{2A2}\u{3}\u{2}'
      '\u{2}\u{2}\u{2A0}\u{29E}\u{3}\u{2}\u{2}\u{2}\u{2A0}\u{2A1}\u{3}\u{2}'
      '\u{2}\u{2}\u{2A1}\u{99}\u{3}\u{2}\u{2}\u{2}\u{2A2}\u{2A0}\u{3}\u{2}\u{2}'
      '\u{2}\u{2A3}\u{2A4}\u{7}\u{44}\u{2}\u{2}\u{2A4}\u{2A5}\u{7}\u{1A}\u{2}'
      '\u{2}\u{2A5}\u{9B}\u{3}\u{2}\u{2}\u{2}\u{2A6}\u{2A7}\u{7}\u{3F}\u{2}'
      '\u{2}\u{2A7}\u{2A8}\u{5}\u{A8}\u{55}\u{2}\u{2A8}\u{2A9}\u{7}\u{40}\u{2}'
      '\u{2}\u{2A9}\u{9D}\u{3}\u{2}\u{2}\u{2}\u{2AA}\u{2AC}\u{7}\u{3F}\u{2}'
      '\u{2}\u{2AB}\u{2AD}\u{5}\u{A8}\u{55}\u{2}\u{2AC}\u{2AB}\u{3}\u{2}\u{2}'
      '\u{2}\u{2AC}\u{2AD}\u{3}\u{2}\u{2}\u{2}\u{2AD}\u{2AE}\u{3}\u{2}\u{2}'
      '\u{2}\u{2AE}\u{2B0}\u{7}\u{43}\u{2}\u{2}\u{2AF}\u{2B1}\u{5}\u{A8}\u{55}'
      '\u{2}\u{2B0}\u{2AF}\u{3}\u{2}\u{2}\u{2}\u{2B0}\u{2B1}\u{3}\u{2}\u{2}'
      '\u{2}\u{2B1}\u{2B2}\u{3}\u{2}\u{2}\u{2}\u{2B2}\u{2BE}\u{7}\u{40}\u{2}'
      '\u{2}\u{2B3}\u{2B5}\u{7}\u{3F}\u{2}\u{2}\u{2B4}\u{2B6}\u{5}\u{A8}\u{55}'
      '\u{2}\u{2B5}\u{2B4}\u{3}\u{2}\u{2}\u{2}\u{2B5}\u{2B6}\u{3}\u{2}\u{2}'
      '\u{2}\u{2B6}\u{2B7}\u{3}\u{2}\u{2}\u{2}\u{2B7}\u{2B8}\u{7}\u{43}\u{2}'
      '\u{2}\u{2B8}\u{2B9}\u{5}\u{A8}\u{55}\u{2}\u{2B9}\u{2BA}\u{7}\u{43}\u{2}'
      '\u{2}\u{2BA}\u{2BB}\u{5}\u{A8}\u{55}\u{2}\u{2BB}\u{2BC}\u{7}\u{40}\u{2}'
      '\u{2}\u{2BC}\u{2BE}\u{3}\u{2}\u{2}\u{2}\u{2BD}\u{2AA}\u{3}\u{2}\u{2}'
      '\u{2}\u{2BD}\u{2B3}\u{3}\u{2}\u{2}\u{2}\u{2BE}\u{9F}\u{3}\u{2}\u{2}\u{2}'
      '\u{2BF}\u{2C0}\u{7}\u{44}\u{2}\u{2}\u{2C0}\u{2C1}\u{7}\u{3B}\u{2}\u{2}'
      '\u{2C1}\u{2C2}\u{5}\u{2C}\u{17}\u{2}\u{2C2}\u{2C3}\u{7}\u{3C}\u{2}\u{2}'
      '\u{2C3}\u{A1}\u{3}\u{2}\u{2}\u{2}\u{2C4}\u{2D3}\u{7}\u{3B}\u{2}\u{2}'
      '\u{2C5}\u{2CC}\u{5}\u{1E}\u{10}\u{2}\u{2C6}\u{2C9}\u{5}\u{2C}\u{17}\u{2}'
      '\u{2C7}\u{2C8}\u{7}\u{41}\u{2}\u{2}\u{2C8}\u{2CA}\u{5}\u{1E}\u{10}\u{2}'
      '\u{2C9}\u{2C7}\u{3}\u{2}\u{2}\u{2}\u{2C9}\u{2CA}\u{3}\u{2}\u{2}\u{2}'
      '\u{2CA}\u{2CC}\u{3}\u{2}\u{2}\u{2}\u{2CB}\u{2C5}\u{3}\u{2}\u{2}\u{2}'
      '\u{2CB}\u{2C6}\u{3}\u{2}\u{2}\u{2}\u{2CC}\u{2CE}\u{3}\u{2}\u{2}\u{2}'
      '\u{2CD}\u{2CF}\u{7}\u{1E}\u{2}\u{2}\u{2CE}\u{2CD}\u{3}\u{2}\u{2}\u{2}'
      '\u{2CE}\u{2CF}\u{3}\u{2}\u{2}\u{2}\u{2CF}\u{2D1}\u{3}\u{2}\u{2}\u{2}'
      '\u{2D0}\u{2D2}\u{7}\u{41}\u{2}\u{2}\u{2D1}\u{2D0}\u{3}\u{2}\u{2}\u{2}'
      '\u{2D1}\u{2D2}\u{3}\u{2}\u{2}\u{2}\u{2D2}\u{2D4}\u{3}\u{2}\u{2}\u{2}'
      '\u{2D3}\u{2CB}\u{3}\u{2}\u{2}\u{2}\u{2D3}\u{2D4}\u{3}\u{2}\u{2}\u{2}'
      '\u{2D4}\u{2D5}\u{3}\u{2}\u{2}\u{2}\u{2D5}\u{2D6}\u{7}\u{3C}\u{2}\u{2}'
      '\u{2D6}\u{A3}\u{3}\u{2}\u{2}\u{2}\u{2D7}\u{2D8}\u{5}\u{A6}\u{54}\u{2}'
      '\u{2D8}\u{2D9}\u{7}\u{44}\u{2}\u{2}\u{2D9}\u{2DA}\u{5}\u{54}\u{2B}\u{2}'
      '\u{2DA}\u{A5}\u{3}\u{2}\u{2}\u{2}\u{2DB}\u{2DC}\u{5}\u{2C}\u{17}\u{2}'
      '\u{2DC}\u{A7}\u{3}\u{2}\u{2}\u{2}\u{2DD}\u{2DE}\u{8}\u{55}\u{1}\u{2}'
      '\u{2DE}\u{2DF}\u{5}\u{AA}\u{56}\u{2}\u{2DF}\u{2F4}\u{3}\u{2}\u{2}\u{2}'
      '\u{2E0}\u{2E1}\u{C}\u{7}\u{2}\u{2}\u{2E1}\u{2E2}\u{5}\u{AE}\u{58}\u{2}'
      '\u{2E2}\u{2E3}\u{5}\u{A8}\u{55}\u{8}\u{2E3}\u{2F3}\u{3}\u{2}\u{2}\u{2}'
      '\u{2E4}\u{2E5}\u{C}\u{6}\u{2}\u{2}\u{2E5}\u{2E6}\u{5}\u{B0}\u{59}\u{2}'
      '\u{2E6}\u{2E7}\u{5}\u{A8}\u{55}\u{7}\u{2E7}\u{2F3}\u{3}\u{2}\u{2}\u{2}'
      '\u{2E8}\u{2E9}\u{C}\u{5}\u{2}\u{2}\u{2E9}\u{2EA}\u{5}\u{B2}\u{5A}\u{2}'
      '\u{2EA}\u{2EB}\u{5}\u{A8}\u{55}\u{6}\u{2EB}\u{2F3}\u{3}\u{2}\u{2}\u{2}'
      '\u{2EC}\u{2ED}\u{C}\u{4}\u{2}\u{2}\u{2ED}\u{2EE}\u{7}\u{1F}\u{2}\u{2}'
      '\u{2EE}\u{2F3}\u{5}\u{A8}\u{55}\u{5}\u{2EF}\u{2F0}\u{C}\u{3}\u{2}\u{2}'
      '\u{2F0}\u{2F1}\u{7}\u{20}\u{2}\u{2}\u{2F1}\u{2F3}\u{5}\u{A8}\u{55}\u{4}'
      '\u{2F2}\u{2E0}\u{3}\u{2}\u{2}\u{2}\u{2F2}\u{2E4}\u{3}\u{2}\u{2}\u{2}'
      '\u{2F2}\u{2E8}\u{3}\u{2}\u{2}\u{2}\u{2F2}\u{2EC}\u{3}\u{2}\u{2}\u{2}'
      '\u{2F2}\u{2EF}\u{3}\u{2}\u{2}\u{2}\u{2F3}\u{2F6}\u{3}\u{2}\u{2}\u{2}'
      '\u{2F4}\u{2F2}\u{3}\u{2}\u{2}\u{2}\u{2F4}\u{2F5}\u{3}\u{2}\u{2}\u{2}'
      '\u{2F5}\u{A9}\u{3}\u{2}\u{2}\u{2}\u{2F6}\u{2F4}\u{3}\u{2}\u{2}\u{2}\u{2F7}'
      '\u{2FC}\u{5}\u{98}\u{4D}\u{2}\u{2F8}\u{2F9}\u{5}\u{AC}\u{57}\u{2}\u{2F9}'
      '\u{2FA}\u{5}\u{AA}\u{56}\u{2}\u{2FA}\u{2FC}\u{3}\u{2}\u{2}\u{2}\u{2FB}'
      '\u{2F7}\u{3}\u{2}\u{2}\u{2}\u{2FB}\u{2F8}\u{3}\u{2}\u{2}\u{2}\u{2FC}'
      '\u{AB}\u{3}\u{2}\u{2}\u{2}\u{2FD}\u{2FE}\u{9}\u{2}\u{2}\u{2}\u{2FE}\u{AD}'
      '\u{3}\u{2}\u{2}\u{2}\u{2FF}\u{300}\u{9}\u{3}\u{2}\u{2}\u{300}\u{AF}\u{3}'
      '\u{2}\u{2}\u{2}\u{301}\u{302}\u{9}\u{4}\u{2}\u{2}\u{302}\u{B1}\u{3}\u{2}'
      '\u{2}\u{2}\u{303}\u{304}\u{9}\u{5}\u{2}\u{2}\u{304}\u{B3}\u{3}\u{2}\u{2}'
      '\u{2}\u{305}\u{306}\u{5}\u{2C}\u{17}\u{2}\u{306}\u{307}\u{7}\u{3B}\u{2}'
      '\u{2}\u{307}\u{309}\u{5}\u{A8}\u{55}\u{2}\u{308}\u{30A}\u{7}\u{41}\u{2}'
      '\u{2}\u{309}\u{308}\u{3}\u{2}\u{2}\u{2}\u{309}\u{30A}\u{3}\u{2}\u{2}'
      '\u{2}\u{30A}\u{30B}\u{3}\u{2}\u{2}\u{2}\u{30B}\u{30C}\u{7}\u{3C}\u{2}'
      '\u{2}\u{30C}\u{B5}\u{3}\u{2}\u{2}\u{2}\u{30D}\u{31A}\u{5}\u{16}\u{C}'
      '\u{2}\u{30E}\u{31A}\u{5}\u{BC}\u{5F}\u{2}\u{30F}\u{31A}\u{5}\u{B8}\u{5D}'
      '\u{2}\u{310}\u{31A}\u{5}\u{E8}\u{75}\u{2}\u{311}\u{31A}\u{5}\u{EA}\u{76}'
      '\u{2}\u{312}\u{31A}\u{5}\u{EC}\u{77}\u{2}\u{313}\u{31A}\u{5}\u{EE}\u{78}'
      '\u{2}\u{314}\u{31A}\u{5}\u{F0}\u{79}\u{2}\u{315}\u{31A}\u{5}\u{58}\u{2D}'
      '\u{2}\u{316}\u{31A}\u{5}\u{C8}\u{65}\u{2}\u{317}\u{31A}\u{5}\u{CA}\u{66}'
      '\u{2}\u{318}\u{31A}\u{5}\u{DC}\u{6F}\u{2}\u{319}\u{30D}\u{3}\u{2}\u{2}'
      '\u{2}\u{319}\u{30E}\u{3}\u{2}\u{2}\u{2}\u{319}\u{30F}\u{3}\u{2}\u{2}'
      '\u{2}\u{319}\u{310}\u{3}\u{2}\u{2}\u{2}\u{319}\u{311}\u{3}\u{2}\u{2}'
      '\u{2}\u{319}\u{312}\u{3}\u{2}\u{2}\u{2}\u{319}\u{313}\u{3}\u{2}\u{2}'
      '\u{2}\u{319}\u{314}\u{3}\u{2}\u{2}\u{2}\u{319}\u{315}\u{3}\u{2}\u{2}'
      '\u{2}\u{319}\u{316}\u{3}\u{2}\u{2}\u{2}\u{319}\u{317}\u{3}\u{2}\u{2}'
      '\u{2}\u{319}\u{318}\u{3}\u{2}\u{2}\u{2}\u{31A}\u{B7}\u{3}\u{2}\u{2}\u{2}'
      '\u{31B}\u{321}\u{5}\u{BA}\u{5E}\u{2}\u{31C}\u{321}\u{5}\u{C0}\u{61}\u{2}'
      '\u{31D}\u{321}\u{5}\u{C2}\u{62}\u{2}\u{31E}\u{321}\u{5}\u{C4}\u{63}\u{2}'
      '\u{31F}\u{321}\u{5}\u{5C}\u{2F}\u{2}\u{320}\u{31B}\u{3}\u{2}\u{2}\u{2}'
      '\u{320}\u{31C}\u{3}\u{2}\u{2}\u{2}\u{320}\u{31D}\u{3}\u{2}\u{2}\u{2}'
      '\u{320}\u{31E}\u{3}\u{2}\u{2}\u{2}\u{320}\u{31F}\u{3}\u{2}\u{2}\u{2}'
      '\u{321}\u{B9}\u{3}\u{2}\u{2}\u{2}\u{322}\u{323}\u{7}\u{42}\u{2}\u{2}'
      '\u{323}\u{BB}\u{3}\u{2}\u{2}\u{2}\u{324}\u{325}\u{5}\u{BE}\u{60}\u{2}'
      '\u{325}\u{326}\u{7}\u{43}\u{2}\u{2}\u{326}\u{327}\u{5}\u{B6}\u{5C}\u{2}'
      '\u{327}\u{BD}\u{3}\u{2}\u{2}\u{2}\u{328}\u{329}\u{7}\u{1A}\u{2}\u{2}'
      '\u{329}\u{BF}\u{3}\u{2}\u{2}\u{2}\u{32A}\u{32B}\u{5}\u{A8}\u{55}\u{2}'
      '\u{32B}\u{C1}\u{3}\u{2}\u{2}\u{2}\u{32C}\u{32D}\u{5}\u{A8}\u{55}\u{2}'
      '\u{32D}\u{32E}\u{7}\u{21}\u{2}\u{2}\u{32E}\u{333}\u{3}\u{2}\u{2}\u{2}'
      '\u{32F}\u{330}\u{5}\u{A8}\u{55}\u{2}\u{330}\u{331}\u{7}\u{22}\u{2}\u{2}'
      '\u{331}\u{333}\u{3}\u{2}\u{2}\u{2}\u{332}\u{32C}\u{3}\u{2}\u{2}\u{2}'
      '\u{332}\u{32F}\u{3}\u{2}\u{2}\u{2}\u{333}\u{C3}\u{3}\u{2}\u{2}\u{2}\u{334}'
      '\u{335}\u{5}\u{1E}\u{10}\u{2}\u{335}\u{336}\u{5}\u{C6}\u{64}\u{2}\u{336}'
      '\u{337}\u{5}\u{1E}\u{10}\u{2}\u{337}\u{C5}\u{3}\u{2}\u{2}\u{2}\u{338}'
      '\u{33B}\u{5}\u{AE}\u{58}\u{2}\u{339}\u{33B}\u{5}\u{B0}\u{59}\u{2}\u{33A}'
      '\u{338}\u{3}\u{2}\u{2}\u{2}\u{33A}\u{339}\u{3}\u{2}\u{2}\u{2}\u{33A}'
      '\u{33B}\u{3}\u{2}\u{2}\u{2}\u{33B}\u{33C}\u{3}\u{2}\u{2}\u{2}\u{33C}'
      '\u{33D}\u{7}\u{48}\u{2}\u{2}\u{33D}\u{C7}\u{3}\u{2}\u{2}\u{2}\u{33E}'
      '\u{342}\u{7}\u{11}\u{2}\u{2}\u{33F}\u{340}\u{5}\u{B8}\u{5D}\u{2}\u{340}'
      '\u{341}\u{7}\u{42}\u{2}\u{2}\u{341}\u{343}\u{3}\u{2}\u{2}\u{2}\u{342}'
      '\u{33F}\u{3}\u{2}\u{2}\u{2}\u{342}\u{343}\u{3}\u{2}\u{2}\u{2}\u{343}'
      '\u{344}\u{3}\u{2}\u{2}\u{2}\u{344}\u{345}\u{5}\u{A8}\u{55}\u{2}\u{345}'
      '\u{34B}\u{5}\u{58}\u{2D}\u{2}\u{346}\u{349}\u{7}\u{B}\u{2}\u{2}\u{347}'
      '\u{34A}\u{5}\u{C8}\u{65}\u{2}\u{348}\u{34A}\u{5}\u{58}\u{2D}\u{2}\u{349}'
      '\u{347}\u{3}\u{2}\u{2}\u{2}\u{349}\u{348}\u{3}\u{2}\u{2}\u{2}\u{34A}'
      '\u{34C}\u{3}\u{2}\u{2}\u{2}\u{34B}\u{346}\u{3}\u{2}\u{2}\u{2}\u{34B}'
      '\u{34C}\u{3}\u{2}\u{2}\u{2}\u{34C}\u{C9}\u{3}\u{2}\u{2}\u{2}\u{34D}\u{350}'
      '\u{5}\u{CC}\u{67}\u{2}\u{34E}\u{350}\u{5}\u{D2}\u{6A}\u{2}\u{34F}\u{34D}'
      '\u{3}\u{2}\u{2}\u{2}\u{34F}\u{34E}\u{3}\u{2}\u{2}\u{2}\u{350}\u{CB}\u{3}'
      '\u{2}\u{2}\u{2}\u{351}\u{355}\u{7}\u{E}\u{2}\u{2}\u{352}\u{353}\u{5}'
      '\u{B8}\u{5D}\u{2}\u{353}\u{354}\u{7}\u{42}\u{2}\u{2}\u{354}\u{356}\u{3}'
      '\u{2}\u{2}\u{2}\u{355}\u{352}\u{3}\u{2}\u{2}\u{2}\u{355}\u{356}\u{3}'
      '\u{2}\u{2}\u{2}\u{356}\u{358}\u{3}\u{2}\u{2}\u{2}\u{357}\u{359}\u{5}'
      '\u{A8}\u{55}\u{2}\u{358}\u{357}\u{3}\u{2}\u{2}\u{2}\u{358}\u{359}\u{3}'
      '\u{2}\u{2}\u{2}\u{359}\u{35A}\u{3}\u{2}\u{2}\u{2}\u{35A}\u{35B}\u{7}'
      '\u{3D}\u{2}\u{2}\u{35B}\u{35C}\u{5}\u{CE}\u{68}\u{2}\u{35C}\u{35D}\u{7}'
      '\u{3E}\u{2}\u{2}\u{35D}\u{CD}\u{3}\u{2}\u{2}\u{2}\u{35E}\u{35F}\u{5}'
      '\u{D0}\u{69}\u{2}\u{35F}\u{360}\u{7}\u{43}\u{2}\u{2}\u{360}\u{361}\u{5}'
      '\u{5A}\u{2E}\u{2}\u{361}\u{CF}\u{3}\u{2}\u{2}\u{2}\u{362}\u{363}\u{7}'
      '\u{8}\u{2}\u{2}\u{363}\u{366}\u{5}\u{1E}\u{10}\u{2}\u{364}\u{366}\u{7}'
      '\u{4}\u{2}\u{2}\u{365}\u{362}\u{3}\u{2}\u{2}\u{2}\u{365}\u{364}\u{3}'
      '\u{2}\u{2}\u{2}\u{366}\u{D1}\u{3}\u{2}\u{2}\u{2}\u{367}\u{36B}\u{7}\u{E}'
      '\u{2}\u{2}\u{368}\u{369}\u{5}\u{B8}\u{5D}\u{2}\u{369}\u{36A}\u{7}\u{42}'
      '\u{2}\u{2}\u{36A}\u{36C}\u{3}\u{2}\u{2}\u{2}\u{36B}\u{368}\u{3}\u{2}'
      '\u{2}\u{2}\u{36B}\u{36C}\u{3}\u{2}\u{2}\u{2}\u{36C}\u{36D}\u{3}\u{2}'
      '\u{2}\u{2}\u{36D}\u{36E}\u{5}\u{D4}\u{6B}\u{2}\u{36E}\u{36F}\u{7}\u{3D}'
      '\u{2}\u{2}\u{36F}\u{370}\u{5}\u{D6}\u{6C}\u{2}\u{370}\u{371}\u{7}\u{3E}'
      '\u{2}\u{2}\u{371}\u{D3}\u{3}\u{2}\u{2}\u{2}\u{372}\u{373}\u{7}\u{1A}'
      '\u{2}\u{2}\u{373}\u{375}\u{7}\u{32}\u{2}\u{2}\u{374}\u{372}\u{3}\u{2}'
      '\u{2}\u{2}\u{374}\u{375}\u{3}\u{2}\u{2}\u{2}\u{375}\u{376}\u{3}\u{2}'
      '\u{2}\u{2}\u{376}\u{377}\u{5}\u{98}\u{4D}\u{2}\u{377}\u{378}\u{7}\u{44}'
      '\u{2}\u{2}\u{378}\u{379}\u{7}\u{3B}\u{2}\u{2}\u{379}\u{37A}\u{7}\u{13}'
      '\u{2}\u{2}\u{37A}\u{37B}\u{7}\u{3C}\u{2}\u{2}\u{37B}\u{D5}\u{3}\u{2}'
      '\u{2}\u{2}\u{37C}\u{37D}\u{5}\u{D8}\u{6D}\u{2}\u{37D}\u{37E}\u{7}\u{43}'
      '\u{2}\u{2}\u{37E}\u{37F}\u{5}\u{5A}\u{2E}\u{2}\u{37F}\u{D7}\u{3}\u{2}'
      '\u{2}\u{2}\u{380}\u{381}\u{7}\u{8}\u{2}\u{2}\u{381}\u{384}\u{5}\u{DA}'
      '\u{6E}\u{2}\u{382}\u{384}\u{7}\u{4}\u{2}\u{2}\u{383}\u{380}\u{3}\u{2}'
      '\u{2}\u{2}\u{383}\u{382}\u{3}\u{2}\u{2}\u{2}\u{384}\u{D9}\u{3}\u{2}\u{2}'
      '\u{2}\u{385}\u{38A}\u{5}\u{2C}\u{17}\u{2}\u{386}\u{387}\u{7}\u{41}\u{2}'
      '\u{2}\u{387}\u{389}\u{5}\u{2C}\u{17}\u{2}\u{388}\u{386}\u{3}\u{2}\u{2}'
      '\u{2}\u{389}\u{38C}\u{3}\u{2}\u{2}\u{2}\u{38A}\u{388}\u{3}\u{2}\u{2}'
      '\u{2}\u{38A}\u{38B}\u{3}\u{2}\u{2}\u{2}\u{38B}\u{DB}\u{3}\u{2}\u{2}\u{2}'
      '\u{38C}\u{38A}\u{3}\u{2}\u{2}\u{2}\u{38D}\u{391}\u{7}\u{15}\u{2}\u{2}'
      '\u{38E}\u{392}\u{5}\u{DE}\u{70}\u{2}\u{38F}\u{392}\u{5}\u{E0}\u{71}\u{2}'
      '\u{390}\u{392}\u{5}\u{E6}\u{74}\u{2}\u{391}\u{38E}\u{3}\u{2}\u{2}\u{2}'
      '\u{391}\u{38F}\u{3}\u{2}\u{2}\u{2}\u{391}\u{390}\u{3}\u{2}\u{2}\u{2}'
      '\u{391}\u{392}\u{3}\u{2}\u{2}\u{2}\u{392}\u{393}\u{3}\u{2}\u{2}\u{2}'
      '\u{393}\u{394}\u{5}\u{58}\u{2D}\u{2}\u{394}\u{DD}\u{3}\u{2}\u{2}\u{2}'
      '\u{395}\u{396}\u{5}\u{A8}\u{55}\u{2}\u{396}\u{DF}\u{3}\u{2}\u{2}\u{2}'
      '\u{397}\u{399}\u{5}\u{E2}\u{72}\u{2}\u{398}\u{397}\u{3}\u{2}\u{2}\u{2}'
      '\u{398}\u{399}\u{3}\u{2}\u{2}\u{2}\u{399}\u{39A}\u{3}\u{2}\u{2}\u{2}'
      '\u{39A}\u{39C}\u{7}\u{42}\u{2}\u{2}\u{39B}\u{39D}\u{5}\u{DE}\u{70}\u{2}'
      '\u{39C}\u{39B}\u{3}\u{2}\u{2}\u{2}\u{39C}\u{39D}\u{3}\u{2}\u{2}\u{2}'
      '\u{39D}\u{39E}\u{3}\u{2}\u{2}\u{2}\u{39E}\u{3A0}\u{7}\u{42}\u{2}\u{2}'
      '\u{39F}\u{3A1}\u{5}\u{E4}\u{73}\u{2}\u{3A0}\u{39F}\u{3}\u{2}\u{2}\u{2}'
      '\u{3A0}\u{3A1}\u{3}\u{2}\u{2}\u{2}\u{3A1}\u{E1}\u{3}\u{2}\u{2}\u{2}\u{3A2}'
      '\u{3A3}\u{5}\u{B8}\u{5D}\u{2}\u{3A3}\u{E3}\u{3}\u{2}\u{2}\u{2}\u{3A4}'
      '\u{3A5}\u{5}\u{B8}\u{5D}\u{2}\u{3A5}\u{E5}\u{3}\u{2}\u{2}\u{2}\u{3A6}'
      '\u{3A7}\u{5}\u{1E}\u{10}\u{2}\u{3A7}\u{3A8}\u{7}\u{48}\u{2}\u{2}\u{3A8}'
      '\u{3AD}\u{3}\u{2}\u{2}\u{2}\u{3A9}\u{3AA}\u{5}\u{1C}\u{F}\u{2}\u{3AA}'
      '\u{3AB}\u{7}\u{32}\u{2}\u{2}\u{3AB}\u{3AD}\u{3}\u{2}\u{2}\u{2}\u{3AC}'
      '\u{3A6}\u{3}\u{2}\u{2}\u{2}\u{3AC}\u{3A9}\u{3}\u{2}\u{2}\u{2}\u{3AC}'
      '\u{3AD}\u{3}\u{2}\u{2}\u{2}\u{3AD}\u{3AE}\u{3}\u{2}\u{2}\u{2}\u{3AE}'
      '\u{3AF}\u{7}\u{12}\u{2}\u{2}\u{3AF}\u{3B0}\u{5}\u{A8}\u{55}\u{2}\u{3B0}'
      '\u{E7}\u{3}\u{2}\u{2}\u{2}\u{3B1}\u{3B3}\u{7}\u{17}\u{2}\u{2}\u{3B2}'
      '\u{3B4}\u{5}\u{1E}\u{10}\u{2}\u{3B3}\u{3B2}\u{3}\u{2}\u{2}\u{2}\u{3B3}'
      '\u{3B4}\u{3}\u{2}\u{2}\u{2}\u{3B4}\u{E9}\u{3}\u{2}\u{2}\u{2}\u{3B5}\u{3B7}'
      '\u{7}\u{3}\u{2}\u{2}\u{3B6}\u{3B8}\u{5}\u{BE}\u{60}\u{2}\u{3B7}\u{3B6}'
      '\u{3}\u{2}\u{2}\u{2}\u{3B7}\u{3B8}\u{3}\u{2}\u{2}\u{2}\u{3B8}\u{EB}\u{3}'
      '\u{2}\u{2}\u{2}\u{3B9}\u{3BB}\u{7}\u{14}\u{2}\u{2}\u{3BA}\u{3BC}\u{5}'
      '\u{BE}\u{60}\u{2}\u{3BB}\u{3BA}\u{3}\u{2}\u{2}\u{2}\u{3BB}\u{3BC}\u{3}'
      '\u{2}\u{2}\u{2}\u{3BC}\u{ED}\u{3}\u{2}\u{2}\u{2}\u{3BD}\u{3BE}\u{7}\u{C}'
      '\u{2}\u{2}\u{3BE}\u{3BF}\u{5}\u{BE}\u{60}\u{2}\u{3BF}\u{EF}\u{3}\u{2}'
      '\u{2}\u{2}\u{3C0}\u{3C1}\u{7}\u{10}\u{2}\u{2}\u{3C1}\u{F1}\u{3}\u{2}'
      '\u{2}\u{2}\u{3C2}\u{3C7}\u{7}\u{42}\u{2}\u{2}\u{3C3}\u{3C7}\u{7}\u{2}'
      '\u{2}\u{3}\u{3C4}\u{3C7}\u{6}\u{7A}\u{C}\u{2}\u{3C5}\u{3C7}\u{6}\u{7A}'
      '\u{D}\u{2}\u{3C6}\u{3C2}\u{3}\u{2}\u{2}\u{2}\u{3C6}\u{3C3}\u{3}\u{2}'
      '\u{2}\u{2}\u{3C6}\u{3C4}\u{3}\u{2}\u{2}\u{2}\u{3C6}\u{3C5}\u{3}\u{2}'
      '\u{2}\u{2}\u{3C7}\u{F3}\u{3}\u{2}\u{2}\u{2}\u{5E}\u{FB}\u{103}\u{113}'
      '\u{117}\u{11B}\u{123}\u{12C}\u{131}\u{13B}\u{13F}\u{143}\u{147}\u{14E}'
      '\u{156}\u{161}\u{165}\u{169}\u{17A}\u{17E}\u{184}\u{188}\u{190}\u{194}'
      '\u{19C}\u{1B2}\u{1BB}\u{1BE}\u{1CC}\u{1D0}\u{1D5}\u{1D7}\u{1E0}\u{1E4}'
      '\u{1E7}\u{1EF}\u{1F5}\u{20A}\u{215}\u{220}\u{22A}\u{22F}\u{236}\u{23E}'
      '\u{24A}\u{254}\u{265}\u{26A}\u{26C}\u{275}\u{27B}\u{282}\u{288}\u{292}'
      '\u{29E}\u{2A0}\u{2AC}\u{2B0}\u{2B5}\u{2BD}\u{2C9}\u{2CB}\u{2CE}\u{2D1}'
      '\u{2D3}\u{2F2}\u{2F4}\u{2FB}\u{309}\u{319}\u{320}\u{332}\u{33A}\u{342}'
      '\u{349}\u{34B}\u{34F}\u{355}\u{358}\u{365}\u{36B}\u{374}\u{383}\u{38A}'
      '\u{391}\u{398}\u{39C}\u{3A0}\u{3AC}\u{3B3}\u{3B7}\u{3BB}\u{3C6}';
  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN.codeUnits);
}

class SourceFileContext extends ParserRuleContext {
  PackageClauseContext packageClause() =>
      getRuleContext<PackageClauseContext>(0);
  List<EosContext> eoss() => getRuleContexts<EosContext>();
  EosContext eos(int i) => getRuleContext<EosContext>(i);
  List<ImportDeclContext> importDecls() => getRuleContexts<ImportDeclContext>();
  ImportDeclContext importDecl(int i) => getRuleContext<ImportDeclContext>(i);
  List<TopLevelDeclContext> topLevelDecls() =>
      getRuleContexts<TopLevelDeclContext>();
  TopLevelDeclContext topLevelDecl(int i) =>
      getRuleContext<TopLevelDeclContext>(i);
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
  List<ImportSpecContext> importSpecs() => getRuleContexts<ImportSpecContext>();
  ImportSpecContext importSpec(int i) => getRuleContext<ImportSpecContext>(i);
  TerminalNode L_PAREN() => getToken(MicroGoParser.TOKEN_L_PAREN, 0);
  TerminalNode R_PAREN() => getToken(MicroGoParser.TOKEN_R_PAREN, 0);
  List<EosContext> eoss() => getRuleContexts<EosContext>();
  EosContext eos(int i) => getRuleContext<EosContext>(i);
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

class ImportSpecContext extends ParserRuleContext {
  ImportPathContext importPath() => getRuleContext<ImportPathContext>(0);
  TerminalNode DOT() => getToken(MicroGoParser.TOKEN_DOT, 0);
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
  List<ConstSpecContext> constSpecs() => getRuleContexts<ConstSpecContext>();
  ConstSpecContext constSpec(int i) => getRuleContext<ConstSpecContext>(i);
  TerminalNode L_PAREN() => getToken(MicroGoParser.TOKEN_L_PAREN, 0);
  TerminalNode R_PAREN() => getToken(MicroGoParser.TOKEN_R_PAREN, 0);
  List<EosContext> eoss() => getRuleContexts<EosContext>();
  EosContext eos(int i) => getRuleContext<EosContext>(i);
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
  List<TerminalNode> IDENTIFIERs() => getTokens(MicroGoParser.TOKEN_IDENTIFIER);
  TerminalNode IDENTIFIER(int i) => getToken(MicroGoParser.TOKEN_IDENTIFIER, i);
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
  List<TypeSpecContext> typeSpecs() => getRuleContexts<TypeSpecContext>();
  TypeSpecContext typeSpec(int i) => getRuleContext<TypeSpecContext>(i);
  TerminalNode L_PAREN() => getToken(MicroGoParser.TOKEN_L_PAREN, 0);
  TerminalNode R_PAREN() => getToken(MicroGoParser.TOKEN_R_PAREN, 0);
  List<EosContext> eoss() => getRuleContexts<EosContext>();
  EosContext eos(int i) => getRuleContext<EosContext>(i);
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
  List<VarSpecContext> varSpecs() => getRuleContexts<VarSpecContext>();
  VarSpecContext varSpec(int i) => getRuleContext<VarSpecContext>(i);
  TerminalNode L_PAREN() => getToken(MicroGoParser.TOKEN_L_PAREN, 0);
  TerminalNode R_PAREN() => getToken(MicroGoParser.TOKEN_R_PAREN, 0);
  List<EosContext> eoss() => getRuleContexts<EosContext>();
  EosContext eos(int i) => getRuleContext<EosContext>(i);
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
  TerminalNode IDENTIFIER() => getToken(MicroGoParser.TOKEN_IDENTIFIER, 0);
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
  TerminalNode R_CURLY() => getToken(MicroGoParser.TOKEN_R_CURLY, 0);
  List<FieldDeclContext> fieldDecls() => getRuleContexts<FieldDeclContext>();
  FieldDeclContext fieldDecl(int i) => getRuleContext<FieldDeclContext>(i);
  List<EosContext> eoss() => getRuleContexts<EosContext>();
  EosContext eos(int i) => getRuleContext<EosContext>(i);
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
  BaseTypeContext baseType() => getRuleContext<BaseTypeContext>(0);
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

class BaseTypeContext extends ParserRuleContext {
  TypeContext type() => getRuleContext<TypeContext>(0);
  BaseTypeContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_baseType;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterBaseType(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitBaseType(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitBaseType(this);
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
  ReceiverContext receiver() => getRuleContext<ReceiverContext>(0);
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

class ReceiverContext extends ParserRuleContext {
  ParametersContext parameters() => getRuleContext<ParametersContext>(0);
  ReceiverContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_receiver;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterReceiver(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitReceiver(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitReceiver(this);
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

class OperandNameContext extends ParserRuleContext {
  TerminalNode IDENTIFIER() => getToken(MicroGoParser.TOKEN_IDENTIFIER, 0);
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
  OperandContext operand() => getRuleContext<OperandContext>(0);
  ConversionContext conversion() => getRuleContext<ConversionContext>(0);
  MethodExprContext methodExpr() => getRuleContext<MethodExprContext>(0);
  PrimaryExprContext primaryExpr() => getRuleContext<PrimaryExprContext>(0);
  SelectorContext selector() => getRuleContext<SelectorContext>(0);
  IndexContext index() => getRuleContext<IndexContext>(0);
  SliceContext slice() => getRuleContext<SliceContext>(0);
  TypeAssertionContext typeAssertion() =>
      getRuleContext<TypeAssertionContext>(0);
  ArgumentsContext arguments() => getRuleContext<ArgumentsContext>(0);
  PrimaryExprContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_primaryExpr;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterPrimaryExpr(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitPrimaryExpr(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitPrimaryExpr(this);
    } else {
      return visitor.visitChildren(this);
    }
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
  List<TerminalNode> COLONs() => getTokens(MicroGoParser.TOKEN_COLON);
  TerminalNode COLON(int i) => getToken(MicroGoParser.TOKEN_COLON, i);
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

class TypeAssertionContext extends ParserRuleContext {
  TerminalNode DOT() => getToken(MicroGoParser.TOKEN_DOT, 0);
  TerminalNode L_PAREN() => getToken(MicroGoParser.TOKEN_L_PAREN, 0);
  TypeContext type() => getRuleContext<TypeContext>(0);
  TerminalNode R_PAREN() => getToken(MicroGoParser.TOKEN_R_PAREN, 0);
  TypeAssertionContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeAssertion;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterTypeAssertion(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitTypeAssertion(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitTypeAssertion(this);
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
  ReceiverTypeContext receiverType() => getRuleContext<ReceiverTypeContext>(0);
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

class ReceiverTypeContext extends ParserRuleContext {
  TypeContext type() => getRuleContext<TypeContext>(0);
  ReceiverTypeContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_receiverType;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterReceiverType(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitReceiverType(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitReceiverType(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ExpressionContext extends ParserRuleContext {
  UnaryExprContext unaryExpr() => getRuleContext<UnaryExprContext>(0);
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  MultOpContext multOp() => getRuleContext<MultOpContext>(0);
  AddOpContext addOp() => getRuleContext<AddOpContext>(0);
  RelOpContext relOp() => getRuleContext<RelOpContext>(0);
  TerminalNode LOGICAL_AND() => getToken(MicroGoParser.TOKEN_LOGICAL_AND, 0);
  TerminalNode LOGICAL_OR() => getToken(MicroGoParser.TOKEN_LOGICAL_OR, 0);
  ExpressionContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitExpression(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
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
  TerminalNode COMMA() => getToken(MicroGoParser.TOKEN_COMMA, 0);
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
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode PLUS_PLUS() => getToken(MicroGoParser.TOKEN_PLUS_PLUS, 0);
  TerminalNode MINUS_MINUS() => getToken(MicroGoParser.TOKEN_MINUS_MINUS, 0);
  IncDecStmtContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_incDecStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterIncDecStmt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitIncDecStmt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitIncDecStmt(this);
    } else {
      return visitor.visitChildren(this);
    }
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
  InitStmtContext initStmt() => getRuleContext<InitStmtContext>(0);
  ConditionContext condition() => getRuleContext<ConditionContext>(0);
  PostStmtContext postStmt() => getRuleContext<PostStmtContext>(0);
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

class InitStmtContext extends ParserRuleContext {
  SimpleStmtContext simpleStmt() => getRuleContext<SimpleStmtContext>(0);
  InitStmtContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_initStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterInitStmt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitInitStmt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitInitStmt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class PostStmtContext extends ParserRuleContext {
  SimpleStmtContext simpleStmt() => getRuleContext<SimpleStmtContext>(0);
  PostStmtContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_postStmt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterPostStmt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitPostStmt(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitPostStmt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class RangeClauseContext extends ParserRuleContext {
  TerminalNode RANGE() => getToken(MicroGoParser.TOKEN_RANGE, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  ExpressionListContext expressionList() =>
      getRuleContext<ExpressionListContext>(0);
  TerminalNode EQUAL() => getToken(MicroGoParser.TOKEN_EQUAL, 0);
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
