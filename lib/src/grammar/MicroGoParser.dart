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
    RULE_typeSpec = 18,
    RULE_varDecl = 19,
    RULE_varSpec = 20,
    RULE_type = 21,
    RULE_typeName = 22,
    RULE_typeLit = 23,
    RULE_arrayType = 24,
    RULE_arrayLength = 25,
    RULE_sliceType = 26,
    RULE_structType = 27,
    RULE_fieldDeclList = 28,
    RULE_fieldDecl = 29,
    RULE_embeddedField = 30,
    RULE_pointerType = 31,
    RULE_functionType = 32,
    RULE_signature = 33,
    RULE_result = 34,
    RULE_parameters = 35,
    RULE_parameterList = 36,
    RULE_parameterDecl = 37,
    RULE_interfaceType = 38,
    RULE_interfaceTypeSpecList = 39,
    RULE_interfaceTypeSpec = 40,
    RULE_methodSpec = 41,
    RULE_methodName = 42,
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
    RULE_stringLit = 64,
    RULE_rawStringLit = 65,
    RULE_interpretedStringLit = 66,
    RULE_operandName = 67,
    RULE_qualifiedIdent = 68,
    RULE_compositeLit = 69,
    RULE_literalType = 70,
    RULE_ellipsisArrayType = 71,
    RULE_literalValue = 72,
    RULE_elementList = 73,
    RULE_keyedElement = 74,
    RULE_key = 75,
    RULE_fieldName = 76,
    RULE_element = 77,
    RULE_functionLit = 78,
    RULE_primaryExpr = 79,
    RULE_selector = 80,
    RULE_index = 81,
    RULE_slice = 82,
    RULE_arguments = 83,
    RULE_methodExpr = 84,
    RULE_expression = 85,
    RULE_unaryExpr = 86,
    RULE_unarypOp = 87,
    RULE_multOp = 88,
    RULE_addOp = 89,
    RULE_relOp = 90,
    RULE_conversion = 91,
    RULE_statement = 92,
    RULE_simpleStmt = 93,
    RULE_emptyStmt = 94,
    RULE_labeledStmt = 95,
    RULE_label = 96,
    RULE_expressionStmt = 97,
    RULE_incDecStmt = 98,
    RULE_assignment = 99,
    RULE_assignOp = 100,
    RULE_ifStmt = 101,
    RULE_switchStmt = 102,
    RULE_switchCaseClause = 103,
    RULE_switchCase = 104,
    RULE_forStmt = 105,
    RULE_condition = 106,
    RULE_forClause = 107,
    RULE_rangeClause = 108,
    RULE_returnStmt = 109,
    RULE_breakStmt = 110,
    RULE_continueStmt = 111,
    RULE_gotoStmt = 112,
    RULE_fallthroughStmt = 113,
    RULE_eos = 114;

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
    'typeSpec',
    'varDecl',
    'varSpec',
    'type',
    'typeName',
    'typeLit',
    'arrayType',
    'arrayLength',
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
    'interfaceTypeSpecList',
    'interfaceTypeSpec',
    'methodSpec',
    'methodName',
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
    'stringLit',
    'rawStringLit',
    'interpretedStringLit',
    'operandName',
    'qualifiedIdent',
    'compositeLit',
    'literalType',
    'ellipsisArrayType',
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
    'switchCaseClause',
    'switchCase',
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
      state = 230;
      packageClause();
      state = 231;
      eos();
      state = 232;
      importDeclList();
      state = 233;
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
      state = 240;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_IMPORT) {
        state = 235;
        importDecl();
        state = 236;
        eos();
        state = 242;
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
      state = 248;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 &&
          ((BigInt.one << _la) &
                  ((BigInt.one << TOKEN_FUNC) |
                      (BigInt.one << TOKEN_CONST) |
                      (BigInt.one << TOKEN_TYPE) |
                      (BigInt.one << TOKEN_VAR))) !=
              BigInt.zero)) {
        state = 243;
        topLevelDecl();
        state = 244;
        eos();
        state = 250;
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
      state = 251;
      match(TOKEN_PACKAGE);
      state = 252;
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
      state = 254;
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
      state = 263;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 2, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 256;
          match(TOKEN_IMPORT);
          state = 257;
          importSpec();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 258;
          match(TOKEN_IMPORT);
          state = 259;
          match(TOKEN_L_PAREN);
          state = 260;
          importSpecList();
          state = 261;
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
      state = 270;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (((((_la - 24)) & ~0x3f) == 0 &&
          ((BigInt.one << (_la - 24)) &
                  ((BigInt.one << (TOKEN_IDENTIFIER - 24)) |
                      (BigInt.one << (TOKEN_RAW_STRING_LIT - 24)) |
                      (BigInt.one << (TOKEN_INTERPRETED_STRING_LIT - 24)))) !=
              BigInt.zero)) {
        state = 265;
        importSpec();
        state = 266;
        eos();
        state = 272;
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
      state = 274;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_IDENTIFIER) {
        state = 273;
        packageName();
      }

      state = 276;
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
      state = 278;
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
      state = 283;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 5, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 280;
          declaration();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 281;
          functionDecl();
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 282;
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
      state = 288;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_CONST:
          enterOuterAlt(_localctx, 1);
          state = 285;
          constDecl();
          break;
        case TOKEN_TYPE:
          enterOuterAlt(_localctx, 2);
          state = 286;
          typeDecl();
          break;
        case TOKEN_VAR:
          enterOuterAlt(_localctx, 3);
          state = 287;
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
      state = 290;
      match(TOKEN_CONST);
      state = 296;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_IDENTIFIER:
          state = 291;
          constSpec();
          break;
        case TOKEN_L_PAREN:
          state = 292;
          match(TOKEN_L_PAREN);
          state = 293;
          constSpecList();
          state = 294;
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
      state = 303;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_IDENTIFIER) {
        state = 298;
        constSpec();
        state = 299;
        eos();
        state = 305;
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
      state = 306;
      identifierList();
      state = 312;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 10, context)) {
        case 1:
          state = 308;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_FUNC) |
                          (BigInt.one << TOKEN_INTERFACE) |
                          (BigInt.one << TOKEN_STRUCT) |
                          (BigInt.one << TOKEN_IDENTIFIER) |
                          (BigInt.one << TOKEN_STAR) |
                          (BigInt.one << TOKEN_L_BRACKET))) !=
                  BigInt.zero)) {
            state = 307;
            type();
          }

          state = 310;
          match(TOKEN_EQUAL);
          state = 311;
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
      state = 314;
      identifier();
      state = 319;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 11, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 315;
          match(TOKEN_COMMA);
          state = 316;
          identifier();
        }
        state = 321;
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
      state = 322;
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
      state = 324;
      expression(0);
      state = 329;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 12, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 325;
          match(TOKEN_COMMA);
          state = 326;
          expression(0);
        }
        state = 331;
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
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 332;
      match(TOKEN_TYPE);
      state = 344;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_IDENTIFIER:
          state = 333;
          typeSpec();
          break;
        case TOKEN_L_PAREN:
          state = 334;
          match(TOKEN_L_PAREN);
          state = 340;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          while (_la == TOKEN_IDENTIFIER) {
            state = 335;
            typeSpec();
            state = 336;
            eos();
            state = 342;
            errorHandler.sync(this);
            _la = tokenStream.LA(1);
          }
          state = 343;
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
    enterRule(_localctx, 36, RULE_typeSpec);
    try {
      enterOuterAlt(_localctx, 1);
      state = 346;
      identifier();
      state = 347;
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
      state = 349;
      match(TOKEN_VAR);
      state = 361;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_IDENTIFIER:
          state = 350;
          varSpec();
          break;
        case TOKEN_L_PAREN:
          state = 351;
          match(TOKEN_L_PAREN);
          state = 357;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          while (_la == TOKEN_IDENTIFIER) {
            state = 352;
            varSpec();
            state = 353;
            eos();
            state = 359;
            errorHandler.sync(this);
            _la = tokenStream.LA(1);
          }
          state = 360;
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
      state = 363;
      identifierList();
      state = 371;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_FUNC:
        case TOKEN_INTERFACE:
        case TOKEN_STRUCT:
        case TOKEN_IDENTIFIER:
        case TOKEN_STAR:
        case TOKEN_L_BRACKET:
          state = 364;
          type();
          state = 367;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 17, context)) {
            case 1:
              state = 365;
              match(TOKEN_EQUAL);
              state = 366;
              expressionList();
              break;
          }
          break;
        case TOKEN_EQUAL:
          state = 369;
          match(TOKEN_EQUAL);
          state = 370;
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
      state = 375;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_IDENTIFIER:
          enterOuterAlt(_localctx, 1);
          state = 373;
          typeName();
          break;
        case TOKEN_FUNC:
        case TOKEN_INTERFACE:
        case TOKEN_STRUCT:
        case TOKEN_STAR:
        case TOKEN_L_BRACKET:
          enterOuterAlt(_localctx, 2);
          state = 374;
          typeLit();
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
      state = 379;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 20, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 377;
          identifier();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 378;
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
      state = 387;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 21, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 381;
          arrayType();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 382;
          structType();
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 383;
          pointerType();
          break;
        case 4:
          enterOuterAlt(_localctx, 4);
          state = 384;
          functionType();
          break;
        case 5:
          enterOuterAlt(_localctx, 5);
          state = 385;
          interfaceType();
          break;
        case 6:
          enterOuterAlt(_localctx, 6);
          state = 386;
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
      state = 389;
      match(TOKEN_L_BRACKET);
      state = 390;
      arrayLength();
      state = 391;
      match(TOKEN_R_BRACKET);
      state = 392;
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

  ArrayLengthContext arrayLength() {
    dynamic _localctx = ArrayLengthContext(context, state);
    enterRule(_localctx, 50, RULE_arrayLength);
    try {
      enterOuterAlt(_localctx, 1);
      state = 394;
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

  SliceTypeContext sliceType() {
    dynamic _localctx = SliceTypeContext(context, state);
    enterRule(_localctx, 52, RULE_sliceType);
    try {
      enterOuterAlt(_localctx, 1);
      state = 396;
      match(TOKEN_L_BRACKET);
      state = 397;
      match(TOKEN_R_BRACKET);
      state = 398;
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

  StructTypeContext structType() {
    dynamic _localctx = StructTypeContext(context, state);
    enterRule(_localctx, 54, RULE_structType);
    try {
      enterOuterAlt(_localctx, 1);
      state = 400;
      match(TOKEN_STRUCT);
      state = 401;
      match(TOKEN_L_CURLY);
      state = 402;
      fieldDeclList();
      state = 403;
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
    enterRule(_localctx, 56, RULE_fieldDeclList);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 410;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 22, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 405;
          fieldDecl();
          state = 406;
          eos();
        }
        state = 412;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 22, context);
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
    enterRule(_localctx, 58, RULE_fieldDecl);
    try {
      state = 418;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 23, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 413;
          if (!(noTerminatorBetween(2))) {
            throw FailedPredicateException(this, "noTerminatorBetween(2)");
          }
          state = 414;
          identifierList();
          state = 415;
          type();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 417;
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
      state = 421;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_STAR) {
        state = 420;
        match(TOKEN_STAR);
      }

      state = 423;
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
      state = 425;
      match(TOKEN_STAR);
      state = 426;
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
    enterRule(_localctx, 64, RULE_functionType);
    try {
      enterOuterAlt(_localctx, 1);
      state = 428;
      match(TOKEN_FUNC);
      state = 429;
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
    enterRule(_localctx, 66, RULE_signature);
    try {
      enterOuterAlt(_localctx, 1);
      state = 431;
      if (!(noTerminatorAfterParams(1))) {
        throw FailedPredicateException(this, "noTerminatorAfterParams(1)");
      }
      state = 432;
      parameters();
      state = 434;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 25, context)) {
        case 1:
          state = 433;
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
    enterRule(_localctx, 68, RULE_result);
    try {
      state = 438;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_L_PAREN:
          enterOuterAlt(_localctx, 1);
          state = 436;
          parameters();
          break;
        case TOKEN_FUNC:
        case TOKEN_INTERFACE:
        case TOKEN_STRUCT:
        case TOKEN_IDENTIFIER:
        case TOKEN_STAR:
        case TOKEN_L_BRACKET:
          enterOuterAlt(_localctx, 2);
          state = 437;
          type();
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

  ParametersContext parameters() {
    dynamic _localctx = ParametersContext(context, state);
    enterRule(_localctx, 70, RULE_parameters);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 440;
      match(TOKEN_L_PAREN);
      state = 445;
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
                      (BigInt.one << TOKEN_L_BRACKET))) !=
              BigInt.zero)) {
        state = 441;
        parameterList();
        state = 443;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_COMMA) {
          state = 442;
          match(TOKEN_COMMA);
        }
      }

      state = 447;
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
    enterRule(_localctx, 72, RULE_parameterList);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 449;
      parameterDecl();
      state = 454;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 29, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 450;
          match(TOKEN_COMMA);
          state = 451;
          parameterDecl();
        }
        state = 456;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 29, context);
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
    enterRule(_localctx, 74, RULE_parameterDecl);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 458;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 30, context)) {
        case 1:
          state = 457;
          identifierList();
          break;
      }
      state = 461;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_ELLIPSIS) {
        state = 460;
        match(TOKEN_ELLIPSIS);
      }

      state = 463;
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
    enterRule(_localctx, 76, RULE_interfaceType);
    try {
      enterOuterAlt(_localctx, 1);
      state = 465;
      match(TOKEN_INTERFACE);
      state = 466;
      match(TOKEN_L_CURLY);
      state = 467;
      interfaceTypeSpecList();
      state = 468;
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

  InterfaceTypeSpecListContext interfaceTypeSpecList() {
    dynamic _localctx = InterfaceTypeSpecListContext(context, state);
    enterRule(_localctx, 78, RULE_interfaceTypeSpecList);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 475;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 32, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 470;
          interfaceTypeSpec();
          state = 471;
          eos();
        }
        state = 477;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 32, context);
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

  InterfaceTypeSpecContext interfaceTypeSpec() {
    dynamic _localctx = InterfaceTypeSpecContext(context, state);
    enterRule(_localctx, 80, RULE_interfaceTypeSpec);
    try {
      state = 480;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 33, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 478;
          methodSpec();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 479;
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

  MethodSpecContext methodSpec() {
    dynamic _localctx = MethodSpecContext(context, state);
    enterRule(_localctx, 82, RULE_methodSpec);
    try {
      enterOuterAlt(_localctx, 1);
      state = 482;
      if (!(noTerminatorAfterParams(2))) {
        throw FailedPredicateException(this, "noTerminatorAfterParams(2)");
      }
      state = 483;
      methodName();
      state = 484;
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
    enterRule(_localctx, 84, RULE_methodName);
    try {
      enterOuterAlt(_localctx, 1);
      state = 486;
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

  BlockContext block() {
    dynamic _localctx = BlockContext(context, state);
    enterRule(_localctx, 86, RULE_block);
    try {
      enterOuterAlt(_localctx, 1);
      state = 488;
      match(TOKEN_L_CURLY);
      state = 489;
      statementList();
      state = 490;
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
      state = 497;
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
        state = 492;
        statement();
        state = 493;
        eos();
        state = 499;
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
      state = 500;
      identifierList();
      state = 501;
      match(TOKEN_SHORT_ASSIGN);
      state = 502;
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
      state = 504;
      match(TOKEN_FUNC);
      state = 505;
      functionName();
      state = 506;
      signature();
      state = 508;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 35, context)) {
        case 1:
          state = 507;
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
      state = 510;
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
      state = 512;
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
      state = 514;
      match(TOKEN_FUNC);
      state = 515;
      receiver();
      state = 516;
      methodName();
      state = 517;
      signature();
      state = 519;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 36, context)) {
        case 1:
          state = 518;
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
      state = 521;
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
      state = 529;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 37, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 523;
          literal();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 524;
          operandName();
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 525;
          match(TOKEN_L_PAREN);
          state = 526;
          expression(0);
          state = 527;
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
      state = 534;
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
          state = 531;
          basicLit();
          break;
        case TOKEN_STRUCT:
        case TOKEN_IDENTIFIER:
        case TOKEN_L_BRACKET:
          enterOuterAlt(_localctx, 2);
          state = 532;
          compositeLit();
          break;
        case TOKEN_FUNC:
          enterOuterAlt(_localctx, 3);
          state = 533;
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
      state = 541;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_NIL:
          enterOuterAlt(_localctx, 1);
          state = 536;
          nilLit();
          break;
        case TOKEN_DECIMAL_LIT:
        case TOKEN_BINARY_LIT:
        case TOKEN_OCTAL_LIT:
        case TOKEN_HEX_LIT:
          enterOuterAlt(_localctx, 2);
          state = 537;
          integerLit();
          break;
        case TOKEN_DECIMAL_FLOAT_LIT:
        case TOKEN_HEX_FLOAT_LIT:
          enterOuterAlt(_localctx, 3);
          state = 538;
          floatLit();
          break;
        case TOKEN_RUNE_LIT:
          enterOuterAlt(_localctx, 4);
          state = 539;
          runeLit();
          break;
        case TOKEN_RAW_STRING_LIT:
        case TOKEN_INTERPRETED_STRING_LIT:
          enterOuterAlt(_localctx, 5);
          state = 540;
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
      state = 543;
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
      state = 549;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_DECIMAL_LIT:
          enterOuterAlt(_localctx, 1);
          state = 545;
          decimalLit();
          break;
        case TOKEN_BINARY_LIT:
          enterOuterAlt(_localctx, 2);
          state = 546;
          binaryLit();
          break;
        case TOKEN_OCTAL_LIT:
          enterOuterAlt(_localctx, 3);
          state = 547;
          octalLit();
          break;
        case TOKEN_HEX_LIT:
          enterOuterAlt(_localctx, 4);
          state = 548;
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
      state = 551;
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
      state = 553;
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
      state = 555;
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
      state = 557;
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
      state = 561;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_DECIMAL_FLOAT_LIT:
          enterOuterAlt(_localctx, 1);
          state = 559;
          decimalFloatLit();
          break;
        case TOKEN_HEX_FLOAT_LIT:
          enterOuterAlt(_localctx, 2);
          state = 560;
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
      state = 563;
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
      state = 565;
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
      state = 567;
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
    enterRule(_localctx, 128, RULE_stringLit);
    try {
      state = 571;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_RAW_STRING_LIT:
          enterOuterAlt(_localctx, 1);
          state = 569;
          rawStringLit();
          break;
        case TOKEN_INTERPRETED_STRING_LIT:
          enterOuterAlt(_localctx, 2);
          state = 570;
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
    enterRule(_localctx, 130, RULE_rawStringLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 573;
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
    enterRule(_localctx, 132, RULE_interpretedStringLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 575;
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
    enterRule(_localctx, 134, RULE_operandName);
    try {
      state = 579;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 43, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 577;
          identifier();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 578;
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
    enterRule(_localctx, 136, RULE_qualifiedIdent);
    try {
      enterOuterAlt(_localctx, 1);
      state = 581;
      packageName();
      state = 582;
      match(TOKEN_DOT);
      state = 583;
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
    enterRule(_localctx, 138, RULE_compositeLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 585;
      literalType();
      state = 586;
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
    enterRule(_localctx, 140, RULE_literalType);
    try {
      state = 593;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 44, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 588;
          structType();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 589;
          arrayType();
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 590;
          ellipsisArrayType();
          break;
        case 4:
          enterOuterAlt(_localctx, 4);
          state = 591;
          sliceType();
          break;
        case 5:
          enterOuterAlt(_localctx, 5);
          state = 592;
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

  EllipsisArrayTypeContext ellipsisArrayType() {
    dynamic _localctx = EllipsisArrayTypeContext(context, state);
    enterRule(_localctx, 142, RULE_ellipsisArrayType);
    try {
      enterOuterAlt(_localctx, 1);
      state = 595;
      match(TOKEN_L_BRACKET);
      state = 596;
      match(TOKEN_ELLIPSIS);
      state = 597;
      match(TOKEN_R_BRACKET);
      state = 598;
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

  LiteralValueContext literalValue() {
    dynamic _localctx = LiteralValueContext(context, state);
    enterRule(_localctx, 144, RULE_literalValue);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 600;
      match(TOKEN_L_CURLY);
      state = 605;
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
        state = 601;
        elementList();
        state = 603;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_COMMA) {
          state = 602;
          match(TOKEN_COMMA);
        }
      }

      state = 607;
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
    enterRule(_localctx, 146, RULE_elementList);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 609;
      keyedElement();
      state = 614;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 47, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 610;
          match(TOKEN_COMMA);
          state = 611;
          keyedElement();
        }
        state = 616;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 47, context);
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
    enterRule(_localctx, 148, RULE_keyedElement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 620;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 48, context)) {
        case 1:
          state = 617;
          key();
          state = 618;
          match(TOKEN_COLON);
          break;
      }
      state = 622;
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
    enterRule(_localctx, 150, RULE_key);
    try {
      state = 627;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 49, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 624;
          fieldName();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 625;
          expression(0);
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 626;
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
    enterRule(_localctx, 152, RULE_fieldName);
    try {
      enterOuterAlt(_localctx, 1);
      state = 629;
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
    enterRule(_localctx, 154, RULE_element);
    try {
      state = 633;
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
          state = 631;
          expression(0);
          break;
        case TOKEN_L_CURLY:
          enterOuterAlt(_localctx, 2);
          state = 632;
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
    enterRule(_localctx, 156, RULE_functionLit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 635;
      match(TOKEN_FUNC);
      state = 636;
      signature();
      state = 637;
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
    var _startState = 158;
    enterRecursionRule(_localctx, 158, RULE_primaryExpr, _p);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 643;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 51, context)) {
        case 1:
          _localctx = OperandExprAltContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;

          state = 640;
          operand();
          break;
        case 2:
          _localctx = ConversionExprAltContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 641;
          conversion();
          break;
        case 3:
          _localctx = MethodExprAltContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 642;
          methodExpr();
          break;
      }
      context.stop = tokenStream.LT(-1);
      state = 655;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 53, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 653;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 52, context)) {
            case 1:
              _localctx = SelectorExprAltContext(
                  new PrimaryExprContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_primaryExpr);
              state = 645;
              if (!(precpred(context, 4))) {
                throw FailedPredicateException(this, "precpred(context, 4)");
              }
              state = 646;
              selector();
              break;
            case 2:
              _localctx = IndexExprAltContext(
                  new PrimaryExprContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_primaryExpr);
              state = 647;
              if (!(precpred(context, 3))) {
                throw FailedPredicateException(this, "precpred(context, 3)");
              }
              state = 648;
              index();
              break;
            case 3:
              _localctx = SliceExprAltContext(
                  new PrimaryExprContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_primaryExpr);
              state = 649;
              if (!(precpred(context, 2))) {
                throw FailedPredicateException(this, "precpred(context, 2)");
              }
              state = 650;
              slice();
              break;
            case 4:
              _localctx = ArgumentsExprAltContext(
                  new PrimaryExprContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_primaryExpr);
              state = 651;
              if (!(precpred(context, 1))) {
                throw FailedPredicateException(this, "precpred(context, 1)");
              }
              state = 652;
              arguments();
              break;
          }
        }
        state = 657;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 53, context);
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
    enterRule(_localctx, 160, RULE_selector);
    try {
      enterOuterAlt(_localctx, 1);
      state = 658;
      match(TOKEN_DOT);
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

  IndexContext index() {
    dynamic _localctx = IndexContext(context, state);
    enterRule(_localctx, 162, RULE_index);
    try {
      enterOuterAlt(_localctx, 1);
      state = 661;
      match(TOKEN_L_BRACKET);
      state = 662;
      expression(0);
      state = 663;
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
    enterRule(_localctx, 164, RULE_slice);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 665;
      match(TOKEN_L_BRACKET);
      state = 667;
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
        state = 666;
        expression(0);
      }

      state = 669;
      match(TOKEN_COLON);
      state = 671;
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
        state = 670;
        expression(0);
      }

      state = 673;
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
    enterRule(_localctx, 166, RULE_arguments);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 675;
      match(TOKEN_L_PAREN);
      state = 690;
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
        state = 682;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 57, context)) {
          case 1:
            state = 676;
            expressionList();
            break;
          case 2:
            state = 677;
            type();
            state = 680;
            errorHandler.sync(this);
            switch (interpreter.adaptivePredict(tokenStream, 56, context)) {
              case 1:
                state = 678;
                match(TOKEN_COMMA);
                state = 679;
                expressionList();
                break;
            }
            break;
        }
        state = 685;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_ELLIPSIS) {
          state = 684;
          match(TOKEN_ELLIPSIS);
        }

        state = 688;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_COMMA) {
          state = 687;
          match(TOKEN_COMMA);
        }
      }

      state = 692;
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
    enterRule(_localctx, 168, RULE_methodExpr);
    try {
      enterOuterAlt(_localctx, 1);
      state = 694;
      type();
      state = 695;
      match(TOKEN_DOT);
      state = 696;
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
    var _startState = 170;
    enterRecursionRule(_localctx, 170, RULE_expression, _p);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      _localctx = UnaryExprAltContext(_localctx);
      context = _localctx;
      _prevctx = _localctx;

      state = 699;
      unaryExpr();
      context.stop = tokenStream.LT(-1);
      state = 721;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 62, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 719;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 61, context)) {
            case 1:
              _localctx = MultExprAltContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 701;
              if (!(precpred(context, 5))) {
                throw FailedPredicateException(this, "precpred(context, 5)");
              }
              state = 702;
              multOp();
              state = 703;
              expression(6);
              break;
            case 2:
              _localctx = AddExprAltContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 705;
              if (!(precpred(context, 4))) {
                throw FailedPredicateException(this, "precpred(context, 4)");
              }
              state = 706;
              addOp();
              state = 707;
              expression(5);
              break;
            case 3:
              _localctx = RelExprAltContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 709;
              if (!(precpred(context, 3))) {
                throw FailedPredicateException(this, "precpred(context, 3)");
              }
              state = 710;
              relOp();
              state = 711;
              expression(4);
              break;
            case 4:
              _localctx = AndExprAltContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 713;
              if (!(precpred(context, 2))) {
                throw FailedPredicateException(this, "precpred(context, 2)");
              }
              state = 714;
              match(TOKEN_LOGICAL_AND);
              state = 715;
              expression(3);
              break;
            case 5:
              _localctx = OrExprAltContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 716;
              if (!(precpred(context, 1))) {
                throw FailedPredicateException(this, "precpred(context, 1)");
              }
              state = 717;
              match(TOKEN_LOGICAL_OR);
              state = 718;
              expression(2);
              break;
          }
        }
        state = 723;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 62, context);
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
    enterRule(_localctx, 172, RULE_unaryExpr);
    try {
      state = 728;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 63, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 724;
          primaryExpr(0);
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 725;
          unarypOp();
          state = 726;
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
    enterRule(_localctx, 174, RULE_unarypOp);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 730;
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
    enterRule(_localctx, 176, RULE_multOp);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 732;
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
    enterRule(_localctx, 178, RULE_addOp);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 734;
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
    enterRule(_localctx, 180, RULE_relOp);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 736;
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
    enterRule(_localctx, 182, RULE_conversion);
    try {
      enterOuterAlt(_localctx, 1);
      state = 738;
      type();
      state = 739;
      match(TOKEN_L_PAREN);
      state = 740;
      expression(0);
      state = 741;
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
    enterRule(_localctx, 184, RULE_statement);
    try {
      state = 755;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 64, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 743;
          declaration();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 744;
          labeledStmt();
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 745;
          simpleStmt();
          break;
        case 4:
          enterOuterAlt(_localctx, 4);
          state = 746;
          returnStmt();
          break;
        case 5:
          enterOuterAlt(_localctx, 5);
          state = 747;
          breakStmt();
          break;
        case 6:
          enterOuterAlt(_localctx, 6);
          state = 748;
          continueStmt();
          break;
        case 7:
          enterOuterAlt(_localctx, 7);
          state = 749;
          gotoStmt();
          break;
        case 8:
          enterOuterAlt(_localctx, 8);
          state = 750;
          fallthroughStmt();
          break;
        case 9:
          enterOuterAlt(_localctx, 9);
          state = 751;
          block();
          break;
        case 10:
          enterOuterAlt(_localctx, 10);
          state = 752;
          ifStmt();
          break;
        case 11:
          enterOuterAlt(_localctx, 11);
          state = 753;
          switchStmt();
          break;
        case 12:
          enterOuterAlt(_localctx, 12);
          state = 754;
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
    enterRule(_localctx, 186, RULE_simpleStmt);
    try {
      state = 762;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 65, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 757;
          emptyStmt();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 758;
          expressionStmt();
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 759;
          incDecStmt();
          break;
        case 4:
          enterOuterAlt(_localctx, 4);
          state = 760;
          assignment();
          break;
        case 5:
          enterOuterAlt(_localctx, 5);
          state = 761;
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
    enterRule(_localctx, 188, RULE_emptyStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 764;
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
    enterRule(_localctx, 190, RULE_labeledStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 766;
      label();
      state = 767;
      match(TOKEN_COLON);
      state = 768;
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
    enterRule(_localctx, 192, RULE_label);
    try {
      enterOuterAlt(_localctx, 1);
      state = 770;
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
    enterRule(_localctx, 194, RULE_expressionStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 772;
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
    enterRule(_localctx, 196, RULE_incDecStmt);
    try {
      state = 780;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 66, context)) {
        case 1:
          _localctx = IncStmtAltContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 774;
          expression(0);
          state = 775;
          match(TOKEN_PLUS_PLUS);
          break;
        case 2:
          _localctx = DecStmtAltContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 777;
          expression(0);
          state = 778;
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
    enterRule(_localctx, 198, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 782;
      expressionList();
      state = 783;
      assignOp();
      state = 784;
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
    enterRule(_localctx, 200, RULE_assignOp);
    try {
      enterOuterAlt(_localctx, 1);
      state = 788;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_LSHIFT:
        case TOKEN_RSHIFT:
        case TOKEN_BIT_CLEAR:
        case TOKEN_STAR:
        case TOKEN_DIV:
        case TOKEN_MOD:
        case TOKEN_AMPERSAND:
          state = 786;
          multOp();
          break;
        case TOKEN_PLUS:
        case TOKEN_MINUS:
        case TOKEN_PIPE:
        case TOKEN_CARET:
          state = 787;
          addOp();
          break;
        case TOKEN_EQUAL:
          break;
        default:
          break;
      }
      state = 790;
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
    enterRule(_localctx, 202, RULE_ifStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 792;
      match(TOKEN_IF);
      state = 796;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 68, context)) {
        case 1:
          state = 793;
          simpleStmt();
          state = 794;
          match(TOKEN_SEMI);
          break;
      }
      state = 798;
      expression(0);
      state = 799;
      block();
      state = 805;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 70, context)) {
        case 1:
          state = 800;
          match(TOKEN_ELSE);
          state = 803;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)) {
            case TOKEN_IF:
              state = 801;
              ifStmt();
              break;
            case TOKEN_L_CURLY:
              state = 802;
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
    enterRule(_localctx, 204, RULE_switchStmt);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 807;
      match(TOKEN_SWITCH);
      state = 811;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 71, context)) {
        case 1:
          state = 808;
          simpleStmt();
          state = 809;
          match(TOKEN_SEMI);
          break;
      }
      state = 814;
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
        state = 813;
        expression(0);
      }

      state = 816;
      match(TOKEN_L_CURLY);
      state = 820;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_DEFAULT || _la == TOKEN_CASE) {
        state = 817;
        switchCaseClause();
        state = 822;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 823;
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

  SwitchCaseClauseContext switchCaseClause() {
    dynamic _localctx = SwitchCaseClauseContext(context, state);
    enterRule(_localctx, 206, RULE_switchCaseClause);
    try {
      enterOuterAlt(_localctx, 1);
      state = 825;
      switchCase();
      state = 826;
      match(TOKEN_COLON);
      state = 827;
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

  SwitchCaseContext switchCase() {
    dynamic _localctx = SwitchCaseContext(context, state);
    enterRule(_localctx, 208, RULE_switchCase);
    try {
      state = 832;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_CASE:
          enterOuterAlt(_localctx, 1);
          state = 829;
          match(TOKEN_CASE);
          state = 830;
          expressionList();
          break;
        case TOKEN_DEFAULT:
          enterOuterAlt(_localctx, 2);
          state = 831;
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

  ForStmtContext forStmt() {
    dynamic _localctx = ForStmtContext(context, state);
    enterRule(_localctx, 210, RULE_forStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 834;
      match(TOKEN_FOR);
      state = 838;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 75, context)) {
        case 1:
          state = 835;
          condition();
          break;
        case 2:
          state = 836;
          forClause();
          break;
        case 3:
          state = 837;
          rangeClause();
          break;
      }
      state = 840;
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
    enterRule(_localctx, 212, RULE_condition);
    try {
      enterOuterAlt(_localctx, 1);
      state = 842;
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
    enterRule(_localctx, 214, RULE_forClause);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 845;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 76, context)) {
        case 1:
          state = 844;
          simpleStmt();
          break;
      }
      state = 847;
      match(TOKEN_SEMI);
      state = 849;
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
        state = 848;
        condition();
      }

      state = 851;
      match(TOKEN_SEMI);
      state = 853;
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
        state = 852;
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
    enterRule(_localctx, 216, RULE_rangeClause);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 858;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_IDENTIFIER) {
        state = 855;
        identifierList();
        state = 856;
        match(TOKEN_SHORT_ASSIGN);
      }

      state = 860;
      match(TOKEN_RANGE);
      state = 861;
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
    enterRule(_localctx, 218, RULE_returnStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 863;
      match(TOKEN_RETURN);
      state = 865;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 80, context)) {
        case 1:
          state = 864;
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
    enterRule(_localctx, 220, RULE_breakStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 867;
      match(TOKEN_BREAK);
      state = 869;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 81, context)) {
        case 1:
          state = 868;
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
    enterRule(_localctx, 222, RULE_continueStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 871;
      match(TOKEN_CONTINUE);
      state = 873;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 82, context)) {
        case 1:
          state = 872;
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
    enterRule(_localctx, 224, RULE_gotoStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 875;
      match(TOKEN_GOTO);
      state = 876;
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
    enterRule(_localctx, 226, RULE_fallthroughStmt);
    try {
      enterOuterAlt(_localctx, 1);
      state = 878;
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
    enterRule(_localctx, 228, RULE_eos);
    try {
      state = 884;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 83, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 880;
          match(TOKEN_SEMI);
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 881;
          match(TOKEN_EOF);
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 882;
          if (!(lineTerminatorAhead())) {
            throw FailedPredicateException(this, "lineTerminatorAhead()");
          }
          break;
        case 4:
          enterOuterAlt(_localctx, 4);
          state = 883;
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
      case 29:
        return _fieldDecl_sempred(_localctx, predIndex);
      case 33:
        return _signature_sempred(_localctx, predIndex);
      case 41:
        return _methodSpec_sempred(_localctx, predIndex);
      case 79:
        return _primaryExpr_sempred(_localctx, predIndex);
      case 85:
        return _expression_sempred(_localctx, predIndex);
      case 114:
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
      '\u{417C}\u{3BE7}\u{7786}\u{5964}\u{3}\u{5A}\u{379}\u{4}\u{2}\u{9}\u{2}'
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
      '\u{9}\u{72}\u{4}\u{73}\u{9}\u{73}\u{4}\u{74}\u{9}\u{74}\u{3}\u{2}\u{3}'
      '\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}\u{7}'
      '\u{3}\u{F1}\u{A}\u{3}\u{C}\u{3}\u{E}\u{3}\u{F4}\u{B}\u{3}\u{3}\u{4}\u{3}'
      '\u{4}\u{3}\u{4}\u{7}\u{4}\u{F9}\u{A}\u{4}\u{C}\u{4}\u{E}\u{4}\u{FC}\u{B}'
      '\u{4}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{6}\u{3}\u{6}\u{3}\u{7}\u{3}'
      '\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}\u{10A}'
      '\u{A}\u{7}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}\u{7}\u{8}\u{10F}\u{A}\u{8}\u{C}'
      '\u{8}\u{E}\u{8}\u{112}\u{B}\u{8}\u{3}\u{9}\u{5}\u{9}\u{115}\u{A}\u{9}'
      '\u{3}\u{9}\u{3}\u{9}\u{3}\u{A}\u{3}\u{A}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}'
      '\u{5}\u{B}\u{11E}\u{A}\u{B}\u{3}\u{C}\u{3}\u{C}\u{3}\u{C}\u{5}\u{C}\u{123}'
      '\u{A}\u{C}\u{3}\u{D}\u{3}\u{D}\u{3}\u{D}\u{3}\u{D}\u{3}\u{D}\u{3}\u{D}'
      '\u{5}\u{D}\u{12B}\u{A}\u{D}\u{3}\u{E}\u{3}\u{E}\u{3}\u{E}\u{7}\u{E}\u{130}'
      '\u{A}\u{E}\u{C}\u{E}\u{E}\u{E}\u{133}\u{B}\u{E}\u{3}\u{F}\u{3}\u{F}\u{5}'
      '\u{F}\u{137}\u{A}\u{F}\u{3}\u{F}\u{3}\u{F}\u{5}\u{F}\u{13B}\u{A}\u{F}'
      '\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{7}\u{10}\u{140}\u{A}\u{10}\u{C}\u{10}'
      '\u{E}\u{10}\u{143}\u{B}\u{10}\u{3}\u{11}\u{3}\u{11}\u{3}\u{12}\u{3}\u{12}'
      '\u{3}\u{12}\u{7}\u{12}\u{14A}\u{A}\u{12}\u{C}\u{12}\u{E}\u{12}\u{14D}'
      '\u{B}\u{12}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}'
      '\u{13}\u{7}\u{13}\u{155}\u{A}\u{13}\u{C}\u{13}\u{E}\u{13}\u{158}\u{B}'
      '\u{13}\u{3}\u{13}\u{5}\u{13}\u{15B}\u{A}\u{13}\u{3}\u{14}\u{3}\u{14}'
      '\u{3}\u{14}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}'
      '\u{15}\u{7}\u{15}\u{166}\u{A}\u{15}\u{C}\u{15}\u{E}\u{15}\u{169}\u{B}'
      '\u{15}\u{3}\u{15}\u{5}\u{15}\u{16C}\u{A}\u{15}\u{3}\u{16}\u{3}\u{16}'
      '\u{3}\u{16}\u{3}\u{16}\u{5}\u{16}\u{172}\u{A}\u{16}\u{3}\u{16}\u{3}\u{16}'
      '\u{5}\u{16}\u{176}\u{A}\u{16}\u{3}\u{17}\u{3}\u{17}\u{5}\u{17}\u{17A}'
      '\u{A}\u{17}\u{3}\u{18}\u{3}\u{18}\u{5}\u{18}\u{17E}\u{A}\u{18}\u{3}\u{19}'
      '\u{3}\u{19}\u{3}\u{19}\u{3}\u{19}\u{3}\u{19}\u{3}\u{19}\u{5}\u{19}\u{186}'
      '\u{A}\u{19}\u{3}\u{1A}\u{3}\u{1A}\u{3}\u{1A}\u{3}\u{1A}\u{3}\u{1A}\u{3}'
      '\u{1B}\u{3}\u{1B}\u{3}\u{1C}\u{3}\u{1C}\u{3}\u{1C}\u{3}\u{1C}\u{3}\u{1D}'
      '\u{3}\u{1D}\u{3}\u{1D}\u{3}\u{1D}\u{3}\u{1D}\u{3}\u{1E}\u{3}\u{1E}\u{3}'
      '\u{1E}\u{7}\u{1E}\u{19B}\u{A}\u{1E}\u{C}\u{1E}\u{E}\u{1E}\u{19E}\u{B}'
      '\u{1E}\u{3}\u{1F}\u{3}\u{1F}\u{3}\u{1F}\u{3}\u{1F}\u{3}\u{1F}\u{5}\u{1F}'
      '\u{1A5}\u{A}\u{1F}\u{3}\u{20}\u{5}\u{20}\u{1A8}\u{A}\u{20}\u{3}\u{20}'
      '\u{3}\u{20}\u{3}\u{21}\u{3}\u{21}\u{3}\u{21}\u{3}\u{22}\u{3}\u{22}\u{3}'
      '\u{22}\u{3}\u{23}\u{3}\u{23}\u{3}\u{23}\u{5}\u{23}\u{1B5}\u{A}\u{23}'
      '\u{3}\u{24}\u{3}\u{24}\u{5}\u{24}\u{1B9}\u{A}\u{24}\u{3}\u{25}\u{3}\u{25}'
      '\u{3}\u{25}\u{5}\u{25}\u{1BE}\u{A}\u{25}\u{5}\u{25}\u{1C0}\u{A}\u{25}'
      '\u{3}\u{25}\u{3}\u{25}\u{3}\u{26}\u{3}\u{26}\u{3}\u{26}\u{7}\u{26}\u{1C7}'
      '\u{A}\u{26}\u{C}\u{26}\u{E}\u{26}\u{1CA}\u{B}\u{26}\u{3}\u{27}\u{5}\u{27}'
      '\u{1CD}\u{A}\u{27}\u{3}\u{27}\u{5}\u{27}\u{1D0}\u{A}\u{27}\u{3}\u{27}'
      '\u{3}\u{27}\u{3}\u{28}\u{3}\u{28}\u{3}\u{28}\u{3}\u{28}\u{3}\u{28}\u{3}'
      '\u{29}\u{3}\u{29}\u{3}\u{29}\u{7}\u{29}\u{1DC}\u{A}\u{29}\u{C}\u{29}'
      '\u{E}\u{29}\u{1DF}\u{B}\u{29}\u{3}\u{2A}\u{3}\u{2A}\u{5}\u{2A}\u{1E3}'
      '\u{A}\u{2A}\u{3}\u{2B}\u{3}\u{2B}\u{3}\u{2B}\u{3}\u{2B}\u{3}\u{2C}\u{3}'
      '\u{2C}\u{3}\u{2D}\u{3}\u{2D}\u{3}\u{2D}\u{3}\u{2D}\u{3}\u{2E}\u{3}\u{2E}'
      '\u{3}\u{2E}\u{7}\u{2E}\u{1F2}\u{A}\u{2E}\u{C}\u{2E}\u{E}\u{2E}\u{1F5}'
      '\u{B}\u{2E}\u{3}\u{2F}\u{3}\u{2F}\u{3}\u{2F}\u{3}\u{2F}\u{3}\u{30}\u{3}'
      '\u{30}\u{3}\u{30}\u{3}\u{30}\u{5}\u{30}\u{1FF}\u{A}\u{30}\u{3}\u{31}'
      '\u{3}\u{31}\u{3}\u{32}\u{3}\u{32}\u{3}\u{33}\u{3}\u{33}\u{3}\u{33}\u{3}'
      '\u{33}\u{3}\u{33}\u{5}\u{33}\u{20A}\u{A}\u{33}\u{3}\u{34}\u{3}\u{34}'
      '\u{3}\u{35}\u{3}\u{35}\u{3}\u{35}\u{3}\u{35}\u{3}\u{35}\u{3}\u{35}\u{5}'
      '\u{35}\u{214}\u{A}\u{35}\u{3}\u{36}\u{3}\u{36}\u{3}\u{36}\u{5}\u{36}'
      '\u{219}\u{A}\u{36}\u{3}\u{37}\u{3}\u{37}\u{3}\u{37}\u{3}\u{37}\u{3}\u{37}'
      '\u{5}\u{37}\u{220}\u{A}\u{37}\u{3}\u{38}\u{3}\u{38}\u{3}\u{39}\u{3}\u{39}'
      '\u{3}\u{39}\u{3}\u{39}\u{5}\u{39}\u{228}\u{A}\u{39}\u{3}\u{3A}\u{3}\u{3A}'
      '\u{3}\u{3B}\u{3}\u{3B}\u{3}\u{3C}\u{3}\u{3C}\u{3}\u{3D}\u{3}\u{3D}\u{3}'
      '\u{3E}\u{3}\u{3E}\u{5}\u{3E}\u{234}\u{A}\u{3E}\u{3}\u{3F}\u{3}\u{3F}'
      '\u{3}\u{40}\u{3}\u{40}\u{3}\u{41}\u{3}\u{41}\u{3}\u{42}\u{3}\u{42}\u{5}'
      '\u{42}\u{23E}\u{A}\u{42}\u{3}\u{43}\u{3}\u{43}\u{3}\u{44}\u{3}\u{44}'
      '\u{3}\u{45}\u{3}\u{45}\u{5}\u{45}\u{246}\u{A}\u{45}\u{3}\u{46}\u{3}\u{46}'
      '\u{3}\u{46}\u{3}\u{46}\u{3}\u{47}\u{3}\u{47}\u{3}\u{47}\u{3}\u{48}\u{3}'
      '\u{48}\u{3}\u{48}\u{3}\u{48}\u{3}\u{48}\u{5}\u{48}\u{254}\u{A}\u{48}'
      '\u{3}\u{49}\u{3}\u{49}\u{3}\u{49}\u{3}\u{49}\u{3}\u{49}\u{3}\u{4A}\u{3}'
      '\u{4A}\u{3}\u{4A}\u{5}\u{4A}\u{25E}\u{A}\u{4A}\u{5}\u{4A}\u{260}\u{A}'
      '\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{7}\u{4B}'
      '\u{267}\u{A}\u{4B}\u{C}\u{4B}\u{E}\u{4B}\u{26A}\u{B}\u{4B}\u{3}\u{4C}'
      '\u{3}\u{4C}\u{3}\u{4C}\u{5}\u{4C}\u{26F}\u{A}\u{4C}\u{3}\u{4C}\u{3}\u{4C}'
      '\u{3}\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{5}\u{4D}\u{276}\u{A}\u{4D}\u{3}\u{4E}'
      '\u{3}\u{4E}\u{3}\u{4F}\u{3}\u{4F}\u{5}\u{4F}\u{27C}\u{A}\u{4F}\u{3}\u{50}'
      '\u{3}\u{50}\u{3}\u{50}\u{3}\u{50}\u{3}\u{51}\u{3}\u{51}\u{3}\u{51}\u{3}'
      '\u{51}\u{5}\u{51}\u{286}\u{A}\u{51}\u{3}\u{51}\u{3}\u{51}\u{3}\u{51}'
      '\u{3}\u{51}\u{3}\u{51}\u{3}\u{51}\u{3}\u{51}\u{3}\u{51}\u{7}\u{51}\u{290}'
      '\u{A}\u{51}\u{C}\u{51}\u{E}\u{51}\u{293}\u{B}\u{51}\u{3}\u{52}\u{3}\u{52}'
      '\u{3}\u{52}\u{3}\u{53}\u{3}\u{53}\u{3}\u{53}\u{3}\u{53}\u{3}\u{54}\u{3}'
      '\u{54}\u{5}\u{54}\u{29E}\u{A}\u{54}\u{3}\u{54}\u{3}\u{54}\u{5}\u{54}'
      '\u{2A2}\u{A}\u{54}\u{3}\u{54}\u{3}\u{54}\u{3}\u{55}\u{3}\u{55}\u{3}\u{55}'
      '\u{3}\u{55}\u{3}\u{55}\u{5}\u{55}\u{2AB}\u{A}\u{55}\u{5}\u{55}\u{2AD}'
      '\u{A}\u{55}\u{3}\u{55}\u{5}\u{55}\u{2B0}\u{A}\u{55}\u{3}\u{55}\u{5}\u{55}'
      '\u{2B3}\u{A}\u{55}\u{5}\u{55}\u{2B5}\u{A}\u{55}\u{3}\u{55}\u{3}\u{55}'
      '\u{3}\u{56}\u{3}\u{56}\u{3}\u{56}\u{3}\u{56}\u{3}\u{57}\u{3}\u{57}\u{3}'
      '\u{57}\u{3}\u{57}\u{3}\u{57}\u{3}\u{57}\u{3}\u{57}\u{3}\u{57}\u{3}\u{57}'
      '\u{3}\u{57}\u{3}\u{57}\u{3}\u{57}\u{3}\u{57}\u{3}\u{57}\u{3}\u{57}\u{3}'
      '\u{57}\u{3}\u{57}\u{3}\u{57}\u{3}\u{57}\u{3}\u{57}\u{3}\u{57}\u{7}\u{57}'
      '\u{2D2}\u{A}\u{57}\u{C}\u{57}\u{E}\u{57}\u{2D5}\u{B}\u{57}\u{3}\u{58}'
      '\u{3}\u{58}\u{3}\u{58}\u{3}\u{58}\u{5}\u{58}\u{2DB}\u{A}\u{58}\u{3}\u{59}'
      '\u{3}\u{59}\u{3}\u{5A}\u{3}\u{5A}\u{3}\u{5B}\u{3}\u{5B}\u{3}\u{5C}\u{3}'
      '\u{5C}\u{3}\u{5D}\u{3}\u{5D}\u{3}\u{5D}\u{3}\u{5D}\u{3}\u{5D}\u{3}\u{5E}'
      '\u{3}\u{5E}\u{3}\u{5E}\u{3}\u{5E}\u{3}\u{5E}\u{3}\u{5E}\u{3}\u{5E}\u{3}'
      '\u{5E}\u{3}\u{5E}\u{3}\u{5E}\u{3}\u{5E}\u{3}\u{5E}\u{5}\u{5E}\u{2F6}'
      '\u{A}\u{5E}\u{3}\u{5F}\u{3}\u{5F}\u{3}\u{5F}\u{3}\u{5F}\u{3}\u{5F}\u{5}'
      '\u{5F}\u{2FD}\u{A}\u{5F}\u{3}\u{60}\u{3}\u{60}\u{3}\u{61}\u{3}\u{61}'
      '\u{3}\u{61}\u{3}\u{61}\u{3}\u{62}\u{3}\u{62}\u{3}\u{63}\u{3}\u{63}\u{3}'
      '\u{64}\u{3}\u{64}\u{3}\u{64}\u{3}\u{64}\u{3}\u{64}\u{3}\u{64}\u{5}\u{64}'
      '\u{30F}\u{A}\u{64}\u{3}\u{65}\u{3}\u{65}\u{3}\u{65}\u{3}\u{65}\u{3}\u{66}'
      '\u{3}\u{66}\u{5}\u{66}\u{317}\u{A}\u{66}\u{3}\u{66}\u{3}\u{66}\u{3}\u{67}'
      '\u{3}\u{67}\u{3}\u{67}\u{3}\u{67}\u{5}\u{67}\u{31F}\u{A}\u{67}\u{3}\u{67}'
      '\u{3}\u{67}\u{3}\u{67}\u{3}\u{67}\u{3}\u{67}\u{5}\u{67}\u{326}\u{A}\u{67}'
      '\u{5}\u{67}\u{328}\u{A}\u{67}\u{3}\u{68}\u{3}\u{68}\u{3}\u{68}\u{3}\u{68}'
      '\u{5}\u{68}\u{32E}\u{A}\u{68}\u{3}\u{68}\u{5}\u{68}\u{331}\u{A}\u{68}'
      '\u{3}\u{68}\u{3}\u{68}\u{7}\u{68}\u{335}\u{A}\u{68}\u{C}\u{68}\u{E}\u{68}'
      '\u{338}\u{B}\u{68}\u{3}\u{68}\u{3}\u{68}\u{3}\u{69}\u{3}\u{69}\u{3}\u{69}'
      '\u{3}\u{69}\u{3}\u{6A}\u{3}\u{6A}\u{3}\u{6A}\u{5}\u{6A}\u{343}\u{A}\u{6A}'
      '\u{3}\u{6B}\u{3}\u{6B}\u{3}\u{6B}\u{3}\u{6B}\u{5}\u{6B}\u{349}\u{A}\u{6B}'
      '\u{3}\u{6B}\u{3}\u{6B}\u{3}\u{6C}\u{3}\u{6C}\u{3}\u{6D}\u{5}\u{6D}\u{350}'
      '\u{A}\u{6D}\u{3}\u{6D}\u{3}\u{6D}\u{5}\u{6D}\u{354}\u{A}\u{6D}\u{3}\u{6D}'
      '\u{3}\u{6D}\u{5}\u{6D}\u{358}\u{A}\u{6D}\u{3}\u{6E}\u{3}\u{6E}\u{3}\u{6E}'
      '\u{5}\u{6E}\u{35D}\u{A}\u{6E}\u{3}\u{6E}\u{3}\u{6E}\u{3}\u{6E}\u{3}\u{6F}'
      '\u{3}\u{6F}\u{5}\u{6F}\u{364}\u{A}\u{6F}\u{3}\u{70}\u{3}\u{70}\u{5}\u{70}'
      '\u{368}\u{A}\u{70}\u{3}\u{71}\u{3}\u{71}\u{5}\u{71}\u{36C}\u{A}\u{71}'
      '\u{3}\u{72}\u{3}\u{72}\u{3}\u{72}\u{3}\u{73}\u{3}\u{73}\u{3}\u{74}\u{3}'
      '\u{74}\u{3}\u{74}\u{3}\u{74}\u{5}\u{74}\u{377}\u{A}\u{74}\u{3}\u{74}'
      '\u{2}\u{4}\u{A0}\u{AC}\u{75}\u{2}\u{4}\u{6}\u{8}\u{A}\u{C}\u{E}\u{10}'
      '\u{12}\u{14}\u{16}\u{18}\u{1A}\u{1C}\u{1E}\u{20}\u{22}\u{24}\u{26}\u{28}'
      '\u{2A}\u{2C}\u{2E}\u{30}\u{32}\u{34}\u{36}\u{38}\u{3A}\u{3C}\u{3E}\u{40}'
      '\u{42}\u{44}\u{46}\u{48}\u{4A}\u{4C}\u{4E}\u{50}\u{52}\u{54}\u{56}\u{58}'
      '\u{5A}\u{5C}\u{5E}\u{60}\u{62}\u{64}\u{66}\u{68}\u{6A}\u{6C}\u{6E}\u{70}'
      '\u{72}\u{74}\u{76}\u{78}\u{7A}\u{7C}\u{7E}\u{80}\u{82}\u{84}\u{86}\u{88}'
      '\u{8A}\u{8C}\u{8E}\u{90}\u{92}\u{94}\u{96}\u{98}\u{9A}\u{9C}\u{9E}\u{A0}'
      '\u{A2}\u{A4}\u{A6}\u{A8}\u{AA}\u{AC}\u{AE}\u{B0}\u{B2}\u{B4}\u{B6}\u{B8}'
      '\u{BA}\u{BC}\u{BE}\u{C0}\u{C2}\u{C4}\u{C6}\u{C8}\u{CA}\u{CC}\u{CE}\u{D0}'
      '\u{D2}\u{D4}\u{D6}\u{D8}\u{DA}\u{DC}\u{DE}\u{E0}\u{E2}\u{E4}\u{E6}\u{2}'
      '\u{6}\u{6}\u{2}\u{33}\u{35}\u{38}\u{38}\u{3A}\u{3A}\u{45}\u{45}\u{4}'
      '\u{2}\u{27}\u{29}\u{35}\u{38}\u{4}\u{2}\u{33}\u{34}\u{39}\u{3A}\u{4}'
      '\u{2}\u{23}\u{26}\u{46}\u{47}\u{2}\u{382}\u{2}\u{E8}\u{3}\u{2}\u{2}\u{2}'
      '\u{4}\u{F2}\u{3}\u{2}\u{2}\u{2}\u{6}\u{FA}\u{3}\u{2}\u{2}\u{2}\u{8}\u{FD}'
      '\u{3}\u{2}\u{2}\u{2}\u{A}\u{100}\u{3}\u{2}\u{2}\u{2}\u{C}\u{109}\u{3}'
      '\u{2}\u{2}\u{2}\u{E}\u{110}\u{3}\u{2}\u{2}\u{2}\u{10}\u{114}\u{3}\u{2}'
      '\u{2}\u{2}\u{12}\u{118}\u{3}\u{2}\u{2}\u{2}\u{14}\u{11D}\u{3}\u{2}\u{2}'
      '\u{2}\u{16}\u{122}\u{3}\u{2}\u{2}\u{2}\u{18}\u{124}\u{3}\u{2}\u{2}\u{2}'
      '\u{1A}\u{131}\u{3}\u{2}\u{2}\u{2}\u{1C}\u{134}\u{3}\u{2}\u{2}\u{2}\u{1E}'
      '\u{13C}\u{3}\u{2}\u{2}\u{2}\u{20}\u{144}\u{3}\u{2}\u{2}\u{2}\u{22}\u{146}'
      '\u{3}\u{2}\u{2}\u{2}\u{24}\u{14E}\u{3}\u{2}\u{2}\u{2}\u{26}\u{15C}\u{3}'
      '\u{2}\u{2}\u{2}\u{28}\u{15F}\u{3}\u{2}\u{2}\u{2}\u{2A}\u{16D}\u{3}\u{2}'
      '\u{2}\u{2}\u{2C}\u{179}\u{3}\u{2}\u{2}\u{2}\u{2E}\u{17D}\u{3}\u{2}\u{2}'
      '\u{2}\u{30}\u{185}\u{3}\u{2}\u{2}\u{2}\u{32}\u{187}\u{3}\u{2}\u{2}\u{2}'
      '\u{34}\u{18C}\u{3}\u{2}\u{2}\u{2}\u{36}\u{18E}\u{3}\u{2}\u{2}\u{2}\u{38}'
      '\u{192}\u{3}\u{2}\u{2}\u{2}\u{3A}\u{19C}\u{3}\u{2}\u{2}\u{2}\u{3C}\u{1A4}'
      '\u{3}\u{2}\u{2}\u{2}\u{3E}\u{1A7}\u{3}\u{2}\u{2}\u{2}\u{40}\u{1AB}\u{3}'
      '\u{2}\u{2}\u{2}\u{42}\u{1AE}\u{3}\u{2}\u{2}\u{2}\u{44}\u{1B1}\u{3}\u{2}'
      '\u{2}\u{2}\u{46}\u{1B8}\u{3}\u{2}\u{2}\u{2}\u{48}\u{1BA}\u{3}\u{2}\u{2}'
      '\u{2}\u{4A}\u{1C3}\u{3}\u{2}\u{2}\u{2}\u{4C}\u{1CC}\u{3}\u{2}\u{2}\u{2}'
      '\u{4E}\u{1D3}\u{3}\u{2}\u{2}\u{2}\u{50}\u{1DD}\u{3}\u{2}\u{2}\u{2}\u{52}'
      '\u{1E2}\u{3}\u{2}\u{2}\u{2}\u{54}\u{1E4}\u{3}\u{2}\u{2}\u{2}\u{56}\u{1E8}'
      '\u{3}\u{2}\u{2}\u{2}\u{58}\u{1EA}\u{3}\u{2}\u{2}\u{2}\u{5A}\u{1F3}\u{3}'
      '\u{2}\u{2}\u{2}\u{5C}\u{1F6}\u{3}\u{2}\u{2}\u{2}\u{5E}\u{1FA}\u{3}\u{2}'
      '\u{2}\u{2}\u{60}\u{200}\u{3}\u{2}\u{2}\u{2}\u{62}\u{202}\u{3}\u{2}\u{2}'
      '\u{2}\u{64}\u{204}\u{3}\u{2}\u{2}\u{2}\u{66}\u{20B}\u{3}\u{2}\u{2}\u{2}'
      '\u{68}\u{213}\u{3}\u{2}\u{2}\u{2}\u{6A}\u{218}\u{3}\u{2}\u{2}\u{2}\u{6C}'
      '\u{21F}\u{3}\u{2}\u{2}\u{2}\u{6E}\u{221}\u{3}\u{2}\u{2}\u{2}\u{70}\u{227}'
      '\u{3}\u{2}\u{2}\u{2}\u{72}\u{229}\u{3}\u{2}\u{2}\u{2}\u{74}\u{22B}\u{3}'
      '\u{2}\u{2}\u{2}\u{76}\u{22D}\u{3}\u{2}\u{2}\u{2}\u{78}\u{22F}\u{3}\u{2}'
      '\u{2}\u{2}\u{7A}\u{233}\u{3}\u{2}\u{2}\u{2}\u{7C}\u{235}\u{3}\u{2}\u{2}'
      '\u{2}\u{7E}\u{237}\u{3}\u{2}\u{2}\u{2}\u{80}\u{239}\u{3}\u{2}\u{2}\u{2}'
      '\u{82}\u{23D}\u{3}\u{2}\u{2}\u{2}\u{84}\u{23F}\u{3}\u{2}\u{2}\u{2}\u{86}'
      '\u{241}\u{3}\u{2}\u{2}\u{2}\u{88}\u{245}\u{3}\u{2}\u{2}\u{2}\u{8A}\u{247}'
      '\u{3}\u{2}\u{2}\u{2}\u{8C}\u{24B}\u{3}\u{2}\u{2}\u{2}\u{8E}\u{253}\u{3}'
      '\u{2}\u{2}\u{2}\u{90}\u{255}\u{3}\u{2}\u{2}\u{2}\u{92}\u{25A}\u{3}\u{2}'
      '\u{2}\u{2}\u{94}\u{263}\u{3}\u{2}\u{2}\u{2}\u{96}\u{26E}\u{3}\u{2}\u{2}'
      '\u{2}\u{98}\u{275}\u{3}\u{2}\u{2}\u{2}\u{9A}\u{277}\u{3}\u{2}\u{2}\u{2}'
      '\u{9C}\u{27B}\u{3}\u{2}\u{2}\u{2}\u{9E}\u{27D}\u{3}\u{2}\u{2}\u{2}\u{A0}'
      '\u{285}\u{3}\u{2}\u{2}\u{2}\u{A2}\u{294}\u{3}\u{2}\u{2}\u{2}\u{A4}\u{297}'
      '\u{3}\u{2}\u{2}\u{2}\u{A6}\u{29B}\u{3}\u{2}\u{2}\u{2}\u{A8}\u{2A5}\u{3}'
      '\u{2}\u{2}\u{2}\u{AA}\u{2B8}\u{3}\u{2}\u{2}\u{2}\u{AC}\u{2BC}\u{3}\u{2}'
      '\u{2}\u{2}\u{AE}\u{2DA}\u{3}\u{2}\u{2}\u{2}\u{B0}\u{2DC}\u{3}\u{2}\u{2}'
      '\u{2}\u{B2}\u{2DE}\u{3}\u{2}\u{2}\u{2}\u{B4}\u{2E0}\u{3}\u{2}\u{2}\u{2}'
      '\u{B6}\u{2E2}\u{3}\u{2}\u{2}\u{2}\u{B8}\u{2E4}\u{3}\u{2}\u{2}\u{2}\u{BA}'
      '\u{2F5}\u{3}\u{2}\u{2}\u{2}\u{BC}\u{2FC}\u{3}\u{2}\u{2}\u{2}\u{BE}\u{2FE}'
      '\u{3}\u{2}\u{2}\u{2}\u{C0}\u{300}\u{3}\u{2}\u{2}\u{2}\u{C2}\u{304}\u{3}'
      '\u{2}\u{2}\u{2}\u{C4}\u{306}\u{3}\u{2}\u{2}\u{2}\u{C6}\u{30E}\u{3}\u{2}'
      '\u{2}\u{2}\u{C8}\u{310}\u{3}\u{2}\u{2}\u{2}\u{CA}\u{316}\u{3}\u{2}\u{2}'
      '\u{2}\u{CC}\u{31A}\u{3}\u{2}\u{2}\u{2}\u{CE}\u{329}\u{3}\u{2}\u{2}\u{2}'
      '\u{D0}\u{33B}\u{3}\u{2}\u{2}\u{2}\u{D2}\u{342}\u{3}\u{2}\u{2}\u{2}\u{D4}'
      '\u{344}\u{3}\u{2}\u{2}\u{2}\u{D6}\u{34C}\u{3}\u{2}\u{2}\u{2}\u{D8}\u{34F}'
      '\u{3}\u{2}\u{2}\u{2}\u{DA}\u{35C}\u{3}\u{2}\u{2}\u{2}\u{DC}\u{361}\u{3}'
      '\u{2}\u{2}\u{2}\u{DE}\u{365}\u{3}\u{2}\u{2}\u{2}\u{E0}\u{369}\u{3}\u{2}'
      '\u{2}\u{2}\u{E2}\u{36D}\u{3}\u{2}\u{2}\u{2}\u{E4}\u{370}\u{3}\u{2}\u{2}'
      '\u{2}\u{E6}\u{376}\u{3}\u{2}\u{2}\u{2}\u{E8}\u{E9}\u{5}\u{8}\u{5}\u{2}'
      '\u{E9}\u{EA}\u{5}\u{E6}\u{74}\u{2}\u{EA}\u{EB}\u{5}\u{4}\u{3}\u{2}\u{EB}'
      '\u{EC}\u{5}\u{6}\u{4}\u{2}\u{EC}\u{3}\u{3}\u{2}\u{2}\u{2}\u{ED}\u{EE}'
      '\u{5}\u{C}\u{7}\u{2}\u{EE}\u{EF}\u{5}\u{E6}\u{74}\u{2}\u{EF}\u{F1}\u{3}'
      '\u{2}\u{2}\u{2}\u{F0}\u{ED}\u{3}\u{2}\u{2}\u{2}\u{F1}\u{F4}\u{3}\u{2}'
      '\u{2}\u{2}\u{F2}\u{F0}\u{3}\u{2}\u{2}\u{2}\u{F2}\u{F3}\u{3}\u{2}\u{2}'
      '\u{2}\u{F3}\u{5}\u{3}\u{2}\u{2}\u{2}\u{F4}\u{F2}\u{3}\u{2}\u{2}\u{2}'
      '\u{F5}\u{F6}\u{5}\u{14}\u{B}\u{2}\u{F6}\u{F7}\u{5}\u{E6}\u{74}\u{2}\u{F7}'
      '\u{F9}\u{3}\u{2}\u{2}\u{2}\u{F8}\u{F5}\u{3}\u{2}\u{2}\u{2}\u{F9}\u{FC}'
      '\u{3}\u{2}\u{2}\u{2}\u{FA}\u{F8}\u{3}\u{2}\u{2}\u{2}\u{FA}\u{FB}\u{3}'
      '\u{2}\u{2}\u{2}\u{FB}\u{7}\u{3}\u{2}\u{2}\u{2}\u{FC}\u{FA}\u{3}\u{2}'
      '\u{2}\u{2}\u{FD}\u{FE}\u{7}\u{D}\u{2}\u{2}\u{FE}\u{FF}\u{5}\u{A}\u{6}'
      '\u{2}\u{FF}\u{9}\u{3}\u{2}\u{2}\u{2}\u{100}\u{101}\u{7}\u{1A}\u{2}\u{2}'
      '\u{101}\u{B}\u{3}\u{2}\u{2}\u{2}\u{102}\u{103}\u{7}\u{16}\u{2}\u{2}\u{103}'
      '\u{10A}\u{5}\u{10}\u{9}\u{2}\u{104}\u{105}\u{7}\u{16}\u{2}\u{2}\u{105}'
      '\u{106}\u{7}\u{3B}\u{2}\u{2}\u{106}\u{107}\u{5}\u{E}\u{8}\u{2}\u{107}'
      '\u{108}\u{7}\u{3C}\u{2}\u{2}\u{108}\u{10A}\u{3}\u{2}\u{2}\u{2}\u{109}'
      '\u{102}\u{3}\u{2}\u{2}\u{2}\u{109}\u{104}\u{3}\u{2}\u{2}\u{2}\u{10A}'
      '\u{D}\u{3}\u{2}\u{2}\u{2}\u{10B}\u{10C}\u{5}\u{10}\u{9}\u{2}\u{10C}\u{10D}'
      '\u{5}\u{E6}\u{74}\u{2}\u{10D}\u{10F}\u{3}\u{2}\u{2}\u{2}\u{10E}\u{10B}'
      '\u{3}\u{2}\u{2}\u{2}\u{10F}\u{112}\u{3}\u{2}\u{2}\u{2}\u{110}\u{10E}'
      '\u{3}\u{2}\u{2}\u{2}\u{110}\u{111}\u{3}\u{2}\u{2}\u{2}\u{111}\u{F}\u{3}'
      '\u{2}\u{2}\u{2}\u{112}\u{110}\u{3}\u{2}\u{2}\u{2}\u{113}\u{115}\u{5}'
      '\u{A}\u{6}\u{2}\u{114}\u{113}\u{3}\u{2}\u{2}\u{2}\u{114}\u{115}\u{3}'
      '\u{2}\u{2}\u{2}\u{115}\u{116}\u{3}\u{2}\u{2}\u{2}\u{116}\u{117}\u{5}'
      '\u{12}\u{A}\u{2}\u{117}\u{11}\u{3}\u{2}\u{2}\u{2}\u{118}\u{119}\u{5}'
      '\u{82}\u{42}\u{2}\u{119}\u{13}\u{3}\u{2}\u{2}\u{2}\u{11A}\u{11E}\u{5}'
      '\u{16}\u{C}\u{2}\u{11B}\u{11E}\u{5}\u{5E}\u{30}\u{2}\u{11C}\u{11E}\u{5}'
      '\u{64}\u{33}\u{2}\u{11D}\u{11A}\u{3}\u{2}\u{2}\u{2}\u{11D}\u{11B}\u{3}'
      '\u{2}\u{2}\u{2}\u{11D}\u{11C}\u{3}\u{2}\u{2}\u{2}\u{11E}\u{15}\u{3}\u{2}'
      '\u{2}\u{2}\u{11F}\u{123}\u{5}\u{18}\u{D}\u{2}\u{120}\u{123}\u{5}\u{24}'
      '\u{13}\u{2}\u{121}\u{123}\u{5}\u{28}\u{15}\u{2}\u{122}\u{11F}\u{3}\u{2}'
      '\u{2}\u{2}\u{122}\u{120}\u{3}\u{2}\u{2}\u{2}\u{122}\u{121}\u{3}\u{2}'
      '\u{2}\u{2}\u{123}\u{17}\u{3}\u{2}\u{2}\u{2}\u{124}\u{12A}\u{7}\u{F}\u{2}'
      '\u{2}\u{125}\u{12B}\u{5}\u{1C}\u{F}\u{2}\u{126}\u{127}\u{7}\u{3B}\u{2}'
      '\u{2}\u{127}\u{128}\u{5}\u{1A}\u{E}\u{2}\u{128}\u{129}\u{7}\u{3C}\u{2}'
      '\u{2}\u{129}\u{12B}\u{3}\u{2}\u{2}\u{2}\u{12A}\u{125}\u{3}\u{2}\u{2}'
      '\u{2}\u{12A}\u{126}\u{3}\u{2}\u{2}\u{2}\u{12B}\u{19}\u{3}\u{2}\u{2}\u{2}'
      '\u{12C}\u{12D}\u{5}\u{1C}\u{F}\u{2}\u{12D}\u{12E}\u{5}\u{E6}\u{74}\u{2}'
      '\u{12E}\u{130}\u{3}\u{2}\u{2}\u{2}\u{12F}\u{12C}\u{3}\u{2}\u{2}\u{2}'
      '\u{130}\u{133}\u{3}\u{2}\u{2}\u{2}\u{131}\u{12F}\u{3}\u{2}\u{2}\u{2}'
      '\u{131}\u{132}\u{3}\u{2}\u{2}\u{2}\u{132}\u{1B}\u{3}\u{2}\u{2}\u{2}\u{133}'
      '\u{131}\u{3}\u{2}\u{2}\u{2}\u{134}\u{13A}\u{5}\u{1E}\u{10}\u{2}\u{135}'
      '\u{137}\u{5}\u{2C}\u{17}\u{2}\u{136}\u{135}\u{3}\u{2}\u{2}\u{2}\u{136}'
      '\u{137}\u{3}\u{2}\u{2}\u{2}\u{137}\u{138}\u{3}\u{2}\u{2}\u{2}\u{138}'
      '\u{139}\u{7}\u{48}\u{2}\u{2}\u{139}\u{13B}\u{5}\u{22}\u{12}\u{2}\u{13A}'
      '\u{136}\u{3}\u{2}\u{2}\u{2}\u{13A}\u{13B}\u{3}\u{2}\u{2}\u{2}\u{13B}'
      '\u{1D}\u{3}\u{2}\u{2}\u{2}\u{13C}\u{141}\u{5}\u{20}\u{11}\u{2}\u{13D}'
      '\u{13E}\u{7}\u{41}\u{2}\u{2}\u{13E}\u{140}\u{5}\u{20}\u{11}\u{2}\u{13F}'
      '\u{13D}\u{3}\u{2}\u{2}\u{2}\u{140}\u{143}\u{3}\u{2}\u{2}\u{2}\u{141}'
      '\u{13F}\u{3}\u{2}\u{2}\u{2}\u{141}\u{142}\u{3}\u{2}\u{2}\u{2}\u{142}'
      '\u{1F}\u{3}\u{2}\u{2}\u{2}\u{143}\u{141}\u{3}\u{2}\u{2}\u{2}\u{144}\u{145}'
      '\u{7}\u{1A}\u{2}\u{2}\u{145}\u{21}\u{3}\u{2}\u{2}\u{2}\u{146}\u{14B}'
      '\u{5}\u{AC}\u{57}\u{2}\u{147}\u{148}\u{7}\u{41}\u{2}\u{2}\u{148}\u{14A}'
      '\u{5}\u{AC}\u{57}\u{2}\u{149}\u{147}\u{3}\u{2}\u{2}\u{2}\u{14A}\u{14D}'
      '\u{3}\u{2}\u{2}\u{2}\u{14B}\u{149}\u{3}\u{2}\u{2}\u{2}\u{14B}\u{14C}'
      '\u{3}\u{2}\u{2}\u{2}\u{14C}\u{23}\u{3}\u{2}\u{2}\u{2}\u{14D}\u{14B}\u{3}'
      '\u{2}\u{2}\u{2}\u{14E}\u{15A}\u{7}\u{13}\u{2}\u{2}\u{14F}\u{15B}\u{5}'
      '\u{26}\u{14}\u{2}\u{150}\u{156}\u{7}\u{3B}\u{2}\u{2}\u{151}\u{152}\u{5}'
      '\u{26}\u{14}\u{2}\u{152}\u{153}\u{5}\u{E6}\u{74}\u{2}\u{153}\u{155}\u{3}'
      '\u{2}\u{2}\u{2}\u{154}\u{151}\u{3}\u{2}\u{2}\u{2}\u{155}\u{158}\u{3}'
      '\u{2}\u{2}\u{2}\u{156}\u{154}\u{3}\u{2}\u{2}\u{2}\u{156}\u{157}\u{3}'
      '\u{2}\u{2}\u{2}\u{157}\u{159}\u{3}\u{2}\u{2}\u{2}\u{158}\u{156}\u{3}'
      '\u{2}\u{2}\u{2}\u{159}\u{15B}\u{7}\u{3C}\u{2}\u{2}\u{15A}\u{14F}\u{3}'
      '\u{2}\u{2}\u{2}\u{15A}\u{150}\u{3}\u{2}\u{2}\u{2}\u{15B}\u{25}\u{3}\u{2}'
      '\u{2}\u{2}\u{15C}\u{15D}\u{5}\u{20}\u{11}\u{2}\u{15D}\u{15E}\u{5}\u{2C}'
      '\u{17}\u{2}\u{15E}\u{27}\u{3}\u{2}\u{2}\u{2}\u{15F}\u{16B}\u{7}\u{18}'
      '\u{2}\u{2}\u{160}\u{16C}\u{5}\u{2A}\u{16}\u{2}\u{161}\u{167}\u{7}\u{3B}'
      '\u{2}\u{2}\u{162}\u{163}\u{5}\u{2A}\u{16}\u{2}\u{163}\u{164}\u{5}\u{E6}'
      '\u{74}\u{2}\u{164}\u{166}\u{3}\u{2}\u{2}\u{2}\u{165}\u{162}\u{3}\u{2}'
      '\u{2}\u{2}\u{166}\u{169}\u{3}\u{2}\u{2}\u{2}\u{167}\u{165}\u{3}\u{2}'
      '\u{2}\u{2}\u{167}\u{168}\u{3}\u{2}\u{2}\u{2}\u{168}\u{16A}\u{3}\u{2}'
      '\u{2}\u{2}\u{169}\u{167}\u{3}\u{2}\u{2}\u{2}\u{16A}\u{16C}\u{7}\u{3C}'
      '\u{2}\u{2}\u{16B}\u{160}\u{3}\u{2}\u{2}\u{2}\u{16B}\u{161}\u{3}\u{2}'
      '\u{2}\u{2}\u{16C}\u{29}\u{3}\u{2}\u{2}\u{2}\u{16D}\u{175}\u{5}\u{1E}'
      '\u{10}\u{2}\u{16E}\u{171}\u{5}\u{2C}\u{17}\u{2}\u{16F}\u{170}\u{7}\u{48}'
      '\u{2}\u{2}\u{170}\u{172}\u{5}\u{22}\u{12}\u{2}\u{171}\u{16F}\u{3}\u{2}'
      '\u{2}\u{2}\u{171}\u{172}\u{3}\u{2}\u{2}\u{2}\u{172}\u{176}\u{3}\u{2}'
      '\u{2}\u{2}\u{173}\u{174}\u{7}\u{48}\u{2}\u{2}\u{174}\u{176}\u{5}\u{22}'
      '\u{12}\u{2}\u{175}\u{16E}\u{3}\u{2}\u{2}\u{2}\u{175}\u{173}\u{3}\u{2}'
      '\u{2}\u{2}\u{176}\u{2B}\u{3}\u{2}\u{2}\u{2}\u{177}\u{17A}\u{5}\u{2E}'
      '\u{18}\u{2}\u{178}\u{17A}\u{5}\u{30}\u{19}\u{2}\u{179}\u{177}\u{3}\u{2}'
      '\u{2}\u{2}\u{179}\u{178}\u{3}\u{2}\u{2}\u{2}\u{17A}\u{2D}\u{3}\u{2}\u{2}'
      '\u{2}\u{17B}\u{17E}\u{5}\u{20}\u{11}\u{2}\u{17C}\u{17E}\u{5}\u{8A}\u{46}'
      '\u{2}\u{17D}\u{17B}\u{3}\u{2}\u{2}\u{2}\u{17D}\u{17C}\u{3}\u{2}\u{2}'
      '\u{2}\u{17E}\u{2F}\u{3}\u{2}\u{2}\u{2}\u{17F}\u{186}\u{5}\u{32}\u{1A}'
      '\u{2}\u{180}\u{186}\u{5}\u{38}\u{1D}\u{2}\u{181}\u{186}\u{5}\u{40}\u{21}'
      '\u{2}\u{182}\u{186}\u{5}\u{42}\u{22}\u{2}\u{183}\u{186}\u{5}\u{4E}\u{28}'
      '\u{2}\u{184}\u{186}\u{5}\u{36}\u{1C}\u{2}\u{185}\u{17F}\u{3}\u{2}\u{2}'
      '\u{2}\u{185}\u{180}\u{3}\u{2}\u{2}\u{2}\u{185}\u{181}\u{3}\u{2}\u{2}'
      '\u{2}\u{185}\u{182}\u{3}\u{2}\u{2}\u{2}\u{185}\u{183}\u{3}\u{2}\u{2}'
      '\u{2}\u{185}\u{184}\u{3}\u{2}\u{2}\u{2}\u{186}\u{31}\u{3}\u{2}\u{2}\u{2}'
      '\u{187}\u{188}\u{7}\u{3F}\u{2}\u{2}\u{188}\u{189}\u{5}\u{34}\u{1B}\u{2}'
      '\u{189}\u{18A}\u{7}\u{40}\u{2}\u{2}\u{18A}\u{18B}\u{5}\u{2C}\u{17}\u{2}'
      '\u{18B}\u{33}\u{3}\u{2}\u{2}\u{2}\u{18C}\u{18D}\u{5}\u{AC}\u{57}\u{2}'
      '\u{18D}\u{35}\u{3}\u{2}\u{2}\u{2}\u{18E}\u{18F}\u{7}\u{3F}\u{2}\u{2}'
      '\u{18F}\u{190}\u{7}\u{40}\u{2}\u{2}\u{190}\u{191}\u{5}\u{2C}\u{17}\u{2}'
      '\u{191}\u{37}\u{3}\u{2}\u{2}\u{2}\u{192}\u{193}\u{7}\u{A}\u{2}\u{2}\u{193}'
      '\u{194}\u{7}\u{3D}\u{2}\u{2}\u{194}\u{195}\u{5}\u{3A}\u{1E}\u{2}\u{195}'
      '\u{196}\u{7}\u{3E}\u{2}\u{2}\u{196}\u{39}\u{3}\u{2}\u{2}\u{2}\u{197}'
      '\u{198}\u{5}\u{3C}\u{1F}\u{2}\u{198}\u{199}\u{5}\u{E6}\u{74}\u{2}\u{199}'
      '\u{19B}\u{3}\u{2}\u{2}\u{2}\u{19A}\u{197}\u{3}\u{2}\u{2}\u{2}\u{19B}'
      '\u{19E}\u{3}\u{2}\u{2}\u{2}\u{19C}\u{19A}\u{3}\u{2}\u{2}\u{2}\u{19C}'
      '\u{19D}\u{3}\u{2}\u{2}\u{2}\u{19D}\u{3B}\u{3}\u{2}\u{2}\u{2}\u{19E}\u{19C}'
      '\u{3}\u{2}\u{2}\u{2}\u{19F}\u{1A0}\u{6}\u{1F}\u{2}\u{2}\u{1A0}\u{1A1}'
      '\u{5}\u{1E}\u{10}\u{2}\u{1A1}\u{1A2}\u{5}\u{2C}\u{17}\u{2}\u{1A2}\u{1A5}'
      '\u{3}\u{2}\u{2}\u{2}\u{1A3}\u{1A5}\u{5}\u{3E}\u{20}\u{2}\u{1A4}\u{19F}'
      '\u{3}\u{2}\u{2}\u{2}\u{1A4}\u{1A3}\u{3}\u{2}\u{2}\u{2}\u{1A5}\u{3D}\u{3}'
      '\u{2}\u{2}\u{2}\u{1A6}\u{1A8}\u{7}\u{35}\u{2}\u{2}\u{1A7}\u{1A6}\u{3}'
      '\u{2}\u{2}\u{2}\u{1A7}\u{1A8}\u{3}\u{2}\u{2}\u{2}\u{1A8}\u{1A9}\u{3}'
      '\u{2}\u{2}\u{2}\u{1A9}\u{1AA}\u{5}\u{2E}\u{18}\u{2}\u{1AA}\u{3F}\u{3}'
      '\u{2}\u{2}\u{2}\u{1AB}\u{1AC}\u{7}\u{35}\u{2}\u{2}\u{1AC}\u{1AD}\u{5}'
      '\u{2C}\u{17}\u{2}\u{1AD}\u{41}\u{3}\u{2}\u{2}\u{2}\u{1AE}\u{1AF}\u{7}'
      '\u{5}\u{2}\u{2}\u{1AF}\u{1B0}\u{5}\u{44}\u{23}\u{2}\u{1B0}\u{43}\u{3}'
      '\u{2}\u{2}\u{2}\u{1B1}\u{1B2}\u{6}\u{23}\u{3}\u{2}\u{1B2}\u{1B4}\u{5}'
      '\u{48}\u{25}\u{2}\u{1B3}\u{1B5}\u{5}\u{46}\u{24}\u{2}\u{1B4}\u{1B3}\u{3}'
      '\u{2}\u{2}\u{2}\u{1B4}\u{1B5}\u{3}\u{2}\u{2}\u{2}\u{1B5}\u{45}\u{3}\u{2}'
      '\u{2}\u{2}\u{1B6}\u{1B9}\u{5}\u{48}\u{25}\u{2}\u{1B7}\u{1B9}\u{5}\u{2C}'
      '\u{17}\u{2}\u{1B8}\u{1B6}\u{3}\u{2}\u{2}\u{2}\u{1B8}\u{1B7}\u{3}\u{2}'
      '\u{2}\u{2}\u{1B9}\u{47}\u{3}\u{2}\u{2}\u{2}\u{1BA}\u{1BF}\u{7}\u{3B}'
      '\u{2}\u{2}\u{1BB}\u{1BD}\u{5}\u{4A}\u{26}\u{2}\u{1BC}\u{1BE}\u{7}\u{41}'
      '\u{2}\u{2}\u{1BD}\u{1BC}\u{3}\u{2}\u{2}\u{2}\u{1BD}\u{1BE}\u{3}\u{2}'
      '\u{2}\u{2}\u{1BE}\u{1C0}\u{3}\u{2}\u{2}\u{2}\u{1BF}\u{1BB}\u{3}\u{2}'
      '\u{2}\u{2}\u{1BF}\u{1C0}\u{3}\u{2}\u{2}\u{2}\u{1C0}\u{1C1}\u{3}\u{2}'
      '\u{2}\u{2}\u{1C1}\u{1C2}\u{7}\u{3C}\u{2}\u{2}\u{1C2}\u{49}\u{3}\u{2}'
      '\u{2}\u{2}\u{1C3}\u{1C8}\u{5}\u{4C}\u{27}\u{2}\u{1C4}\u{1C5}\u{7}\u{41}'
      '\u{2}\u{2}\u{1C5}\u{1C7}\u{5}\u{4C}\u{27}\u{2}\u{1C6}\u{1C4}\u{3}\u{2}'
      '\u{2}\u{2}\u{1C7}\u{1CA}\u{3}\u{2}\u{2}\u{2}\u{1C8}\u{1C6}\u{3}\u{2}'
      '\u{2}\u{2}\u{1C8}\u{1C9}\u{3}\u{2}\u{2}\u{2}\u{1C9}\u{4B}\u{3}\u{2}\u{2}'
      '\u{2}\u{1CA}\u{1C8}\u{3}\u{2}\u{2}\u{2}\u{1CB}\u{1CD}\u{5}\u{1E}\u{10}'
      '\u{2}\u{1CC}\u{1CB}\u{3}\u{2}\u{2}\u{2}\u{1CC}\u{1CD}\u{3}\u{2}\u{2}'
      '\u{2}\u{1CD}\u{1CF}\u{3}\u{2}\u{2}\u{2}\u{1CE}\u{1D0}\u{7}\u{1E}\u{2}'
      '\u{2}\u{1CF}\u{1CE}\u{3}\u{2}\u{2}\u{2}\u{1CF}\u{1D0}\u{3}\u{2}\u{2}'
      '\u{2}\u{1D0}\u{1D1}\u{3}\u{2}\u{2}\u{2}\u{1D1}\u{1D2}\u{5}\u{2C}\u{17}'
      '\u{2}\u{1D2}\u{4D}\u{3}\u{2}\u{2}\u{2}\u{1D3}\u{1D4}\u{7}\u{6}\u{2}\u{2}'
      '\u{1D4}\u{1D5}\u{7}\u{3D}\u{2}\u{2}\u{1D5}\u{1D6}\u{5}\u{50}\u{29}\u{2}'
      '\u{1D6}\u{1D7}\u{7}\u{3E}\u{2}\u{2}\u{1D7}\u{4F}\u{3}\u{2}\u{2}\u{2}'
      '\u{1D8}\u{1D9}\u{5}\u{52}\u{2A}\u{2}\u{1D9}\u{1DA}\u{5}\u{E6}\u{74}\u{2}'
      '\u{1DA}\u{1DC}\u{3}\u{2}\u{2}\u{2}\u{1DB}\u{1D8}\u{3}\u{2}\u{2}\u{2}'
      '\u{1DC}\u{1DF}\u{3}\u{2}\u{2}\u{2}\u{1DD}\u{1DB}\u{3}\u{2}\u{2}\u{2}'
      '\u{1DD}\u{1DE}\u{3}\u{2}\u{2}\u{2}\u{1DE}\u{51}\u{3}\u{2}\u{2}\u{2}\u{1DF}'
      '\u{1DD}\u{3}\u{2}\u{2}\u{2}\u{1E0}\u{1E3}\u{5}\u{54}\u{2B}\u{2}\u{1E1}'
      '\u{1E3}\u{5}\u{2E}\u{18}\u{2}\u{1E2}\u{1E0}\u{3}\u{2}\u{2}\u{2}\u{1E2}'
      '\u{1E1}\u{3}\u{2}\u{2}\u{2}\u{1E3}\u{53}\u{3}\u{2}\u{2}\u{2}\u{1E4}\u{1E5}'
      '\u{6}\u{2B}\u{4}\u{2}\u{1E5}\u{1E6}\u{5}\u{56}\u{2C}\u{2}\u{1E6}\u{1E7}'
      '\u{5}\u{44}\u{23}\u{2}\u{1E7}\u{55}\u{3}\u{2}\u{2}\u{2}\u{1E8}\u{1E9}'
      '\u{7}\u{1A}\u{2}\u{2}\u{1E9}\u{57}\u{3}\u{2}\u{2}\u{2}\u{1EA}\u{1EB}'
      '\u{7}\u{3D}\u{2}\u{2}\u{1EB}\u{1EC}\u{5}\u{5A}\u{2E}\u{2}\u{1EC}\u{1ED}'
      '\u{7}\u{3E}\u{2}\u{2}\u{1ED}\u{59}\u{3}\u{2}\u{2}\u{2}\u{1EE}\u{1EF}'
      '\u{5}\u{BA}\u{5E}\u{2}\u{1EF}\u{1F0}\u{5}\u{E6}\u{74}\u{2}\u{1F0}\u{1F2}'
      '\u{3}\u{2}\u{2}\u{2}\u{1F1}\u{1EE}\u{3}\u{2}\u{2}\u{2}\u{1F2}\u{1F5}'
      '\u{3}\u{2}\u{2}\u{2}\u{1F3}\u{1F1}\u{3}\u{2}\u{2}\u{2}\u{1F3}\u{1F4}'
      '\u{3}\u{2}\u{2}\u{2}\u{1F4}\u{5B}\u{3}\u{2}\u{2}\u{2}\u{1F5}\u{1F3}\u{3}'
      '\u{2}\u{2}\u{2}\u{1F6}\u{1F7}\u{5}\u{1E}\u{10}\u{2}\u{1F7}\u{1F8}\u{7}'
      '\u{32}\u{2}\u{2}\u{1F8}\u{1F9}\u{5}\u{22}\u{12}\u{2}\u{1F9}\u{5D}\u{3}'
      '\u{2}\u{2}\u{2}\u{1FA}\u{1FB}\u{7}\u{5}\u{2}\u{2}\u{1FB}\u{1FC}\u{5}'
      '\u{60}\u{31}\u{2}\u{1FC}\u{1FE}\u{5}\u{44}\u{23}\u{2}\u{1FD}\u{1FF}\u{5}'
      '\u{62}\u{32}\u{2}\u{1FE}\u{1FD}\u{3}\u{2}\u{2}\u{2}\u{1FE}\u{1FF}\u{3}'
      '\u{2}\u{2}\u{2}\u{1FF}\u{5F}\u{3}\u{2}\u{2}\u{2}\u{200}\u{201}\u{7}\u{1A}'
      '\u{2}\u{2}\u{201}\u{61}\u{3}\u{2}\u{2}\u{2}\u{202}\u{203}\u{5}\u{58}'
      '\u{2D}\u{2}\u{203}\u{63}\u{3}\u{2}\u{2}\u{2}\u{204}\u{205}\u{7}\u{5}'
      '\u{2}\u{2}\u{205}\u{206}\u{5}\u{66}\u{34}\u{2}\u{206}\u{207}\u{5}\u{56}'
      '\u{2C}\u{2}\u{207}\u{209}\u{5}\u{44}\u{23}\u{2}\u{208}\u{20A}\u{5}\u{62}'
      '\u{32}\u{2}\u{209}\u{208}\u{3}\u{2}\u{2}\u{2}\u{209}\u{20A}\u{3}\u{2}'
      '\u{2}\u{2}\u{20A}\u{65}\u{3}\u{2}\u{2}\u{2}\u{20B}\u{20C}\u{5}\u{48}'
      '\u{25}\u{2}\u{20C}\u{67}\u{3}\u{2}\u{2}\u{2}\u{20D}\u{214}\u{5}\u{6A}'
      '\u{36}\u{2}\u{20E}\u{214}\u{5}\u{88}\u{45}\u{2}\u{20F}\u{210}\u{7}\u{3B}'
      '\u{2}\u{2}\u{210}\u{211}\u{5}\u{AC}\u{57}\u{2}\u{211}\u{212}\u{7}\u{3C}'
      '\u{2}\u{2}\u{212}\u{214}\u{3}\u{2}\u{2}\u{2}\u{213}\u{20D}\u{3}\u{2}'
      '\u{2}\u{2}\u{213}\u{20E}\u{3}\u{2}\u{2}\u{2}\u{213}\u{20F}\u{3}\u{2}'
      '\u{2}\u{2}\u{214}\u{69}\u{3}\u{2}\u{2}\u{2}\u{215}\u{219}\u{5}\u{6C}'
      '\u{37}\u{2}\u{216}\u{219}\u{5}\u{8C}\u{47}\u{2}\u{217}\u{219}\u{5}\u{9E}'
      '\u{50}\u{2}\u{218}\u{215}\u{3}\u{2}\u{2}\u{2}\u{218}\u{216}\u{3}\u{2}'
      '\u{2}\u{2}\u{218}\u{217}\u{3}\u{2}\u{2}\u{2}\u{219}\u{6B}\u{3}\u{2}\u{2}'
      '\u{2}\u{21A}\u{220}\u{5}\u{6E}\u{38}\u{2}\u{21B}\u{220}\u{5}\u{70}\u{39}'
      '\u{2}\u{21C}\u{220}\u{5}\u{7A}\u{3E}\u{2}\u{21D}\u{220}\u{5}\u{80}\u{41}'
      '\u{2}\u{21E}\u{220}\u{5}\u{82}\u{42}\u{2}\u{21F}\u{21A}\u{3}\u{2}\u{2}'
      '\u{2}\u{21F}\u{21B}\u{3}\u{2}\u{2}\u{2}\u{21F}\u{21C}\u{3}\u{2}\u{2}'
      '\u{2}\u{21F}\u{21D}\u{3}\u{2}\u{2}\u{2}\u{21F}\u{21E}\u{3}\u{2}\u{2}'
      '\u{2}\u{220}\u{6D}\u{3}\u{2}\u{2}\u{2}\u{221}\u{222}\u{7}\u{19}\u{2}'
      '\u{2}\u{222}\u{6F}\u{3}\u{2}\u{2}\u{2}\u{223}\u{228}\u{5}\u{72}\u{3A}'
      '\u{2}\u{224}\u{228}\u{5}\u{74}\u{3B}\u{2}\u{225}\u{228}\u{5}\u{76}\u{3C}'
      '\u{2}\u{226}\u{228}\u{5}\u{78}\u{3D}\u{2}\u{227}\u{223}\u{3}\u{2}\u{2}'
      '\u{2}\u{227}\u{224}\u{3}\u{2}\u{2}\u{2}\u{227}\u{225}\u{3}\u{2}\u{2}'
      '\u{2}\u{227}\u{226}\u{3}\u{2}\u{2}\u{2}\u{228}\u{71}\u{3}\u{2}\u{2}\u{2}'
      '\u{229}\u{22A}\u{7}\u{4E}\u{2}\u{2}\u{22A}\u{73}\u{3}\u{2}\u{2}\u{2}'
      '\u{22B}\u{22C}\u{7}\u{4F}\u{2}\u{2}\u{22C}\u{75}\u{3}\u{2}\u{2}\u{2}'
      '\u{22D}\u{22E}\u{7}\u{50}\u{2}\u{2}\u{22E}\u{77}\u{3}\u{2}\u{2}\u{2}'
      '\u{22F}\u{230}\u{7}\u{51}\u{2}\u{2}\u{230}\u{79}\u{3}\u{2}\u{2}\u{2}'
      '\u{231}\u{234}\u{5}\u{7C}\u{3F}\u{2}\u{232}\u{234}\u{5}\u{7E}\u{40}\u{2}'
      '\u{233}\u{231}\u{3}\u{2}\u{2}\u{2}\u{233}\u{232}\u{3}\u{2}\u{2}\u{2}'
      '\u{234}\u{7B}\u{3}\u{2}\u{2}\u{2}\u{235}\u{236}\u{7}\u{52}\u{2}\u{2}'
      '\u{236}\u{7D}\u{3}\u{2}\u{2}\u{2}\u{237}\u{238}\u{7}\u{53}\u{2}\u{2}'
      '\u{238}\u{7F}\u{3}\u{2}\u{2}\u{2}\u{239}\u{23A}\u{7}\u{54}\u{2}\u{2}'
      '\u{23A}\u{81}\u{3}\u{2}\u{2}\u{2}\u{23B}\u{23E}\u{5}\u{84}\u{43}\u{2}'
      '\u{23C}\u{23E}\u{5}\u{86}\u{44}\u{2}\u{23D}\u{23B}\u{3}\u{2}\u{2}\u{2}'
      '\u{23D}\u{23C}\u{3}\u{2}\u{2}\u{2}\u{23E}\u{83}\u{3}\u{2}\u{2}\u{2}\u{23F}'
      '\u{240}\u{7}\u{55}\u{2}\u{2}\u{240}\u{85}\u{3}\u{2}\u{2}\u{2}\u{241}'
      '\u{242}\u{7}\u{56}\u{2}\u{2}\u{242}\u{87}\u{3}\u{2}\u{2}\u{2}\u{243}'
      '\u{246}\u{5}\u{20}\u{11}\u{2}\u{244}\u{246}\u{5}\u{8A}\u{46}\u{2}\u{245}'
      '\u{243}\u{3}\u{2}\u{2}\u{2}\u{245}\u{244}\u{3}\u{2}\u{2}\u{2}\u{246}'
      '\u{89}\u{3}\u{2}\u{2}\u{2}\u{247}\u{248}\u{5}\u{A}\u{6}\u{2}\u{248}\u{249}'
      '\u{7}\u{44}\u{2}\u{2}\u{249}\u{24A}\u{7}\u{1A}\u{2}\u{2}\u{24A}\u{8B}'
      '\u{3}\u{2}\u{2}\u{2}\u{24B}\u{24C}\u{5}\u{8E}\u{48}\u{2}\u{24C}\u{24D}'
      '\u{5}\u{92}\u{4A}\u{2}\u{24D}\u{8D}\u{3}\u{2}\u{2}\u{2}\u{24E}\u{254}'
      '\u{5}\u{38}\u{1D}\u{2}\u{24F}\u{254}\u{5}\u{32}\u{1A}\u{2}\u{250}\u{254}'
      '\u{5}\u{90}\u{49}\u{2}\u{251}\u{254}\u{5}\u{36}\u{1C}\u{2}\u{252}\u{254}'
      '\u{5}\u{2E}\u{18}\u{2}\u{253}\u{24E}\u{3}\u{2}\u{2}\u{2}\u{253}\u{24F}'
      '\u{3}\u{2}\u{2}\u{2}\u{253}\u{250}\u{3}\u{2}\u{2}\u{2}\u{253}\u{251}'
      '\u{3}\u{2}\u{2}\u{2}\u{253}\u{252}\u{3}\u{2}\u{2}\u{2}\u{254}\u{8F}\u{3}'
      '\u{2}\u{2}\u{2}\u{255}\u{256}\u{7}\u{3F}\u{2}\u{2}\u{256}\u{257}\u{7}'
      '\u{1E}\u{2}\u{2}\u{257}\u{258}\u{7}\u{40}\u{2}\u{2}\u{258}\u{259}\u{5}'
      '\u{2C}\u{17}\u{2}\u{259}\u{91}\u{3}\u{2}\u{2}\u{2}\u{25A}\u{25F}\u{7}'
      '\u{3D}\u{2}\u{2}\u{25B}\u{25D}\u{5}\u{94}\u{4B}\u{2}\u{25C}\u{25E}\u{7}'
      '\u{41}\u{2}\u{2}\u{25D}\u{25C}\u{3}\u{2}\u{2}\u{2}\u{25D}\u{25E}\u{3}'
      '\u{2}\u{2}\u{2}\u{25E}\u{260}\u{3}\u{2}\u{2}\u{2}\u{25F}\u{25B}\u{3}'
      '\u{2}\u{2}\u{2}\u{25F}\u{260}\u{3}\u{2}\u{2}\u{2}\u{260}\u{261}\u{3}'
      '\u{2}\u{2}\u{2}\u{261}\u{262}\u{7}\u{3E}\u{2}\u{2}\u{262}\u{93}\u{3}'
      '\u{2}\u{2}\u{2}\u{263}\u{268}\u{5}\u{96}\u{4C}\u{2}\u{264}\u{265}\u{7}'
      '\u{41}\u{2}\u{2}\u{265}\u{267}\u{5}\u{96}\u{4C}\u{2}\u{266}\u{264}\u{3}'
      '\u{2}\u{2}\u{2}\u{267}\u{26A}\u{3}\u{2}\u{2}\u{2}\u{268}\u{266}\u{3}'
      '\u{2}\u{2}\u{2}\u{268}\u{269}\u{3}\u{2}\u{2}\u{2}\u{269}\u{95}\u{3}\u{2}'
      '\u{2}\u{2}\u{26A}\u{268}\u{3}\u{2}\u{2}\u{2}\u{26B}\u{26C}\u{5}\u{98}'
      '\u{4D}\u{2}\u{26C}\u{26D}\u{7}\u{43}\u{2}\u{2}\u{26D}\u{26F}\u{3}\u{2}'
      '\u{2}\u{2}\u{26E}\u{26B}\u{3}\u{2}\u{2}\u{2}\u{26E}\u{26F}\u{3}\u{2}'
      '\u{2}\u{2}\u{26F}\u{270}\u{3}\u{2}\u{2}\u{2}\u{270}\u{271}\u{5}\u{9C}'
      '\u{4F}\u{2}\u{271}\u{97}\u{3}\u{2}\u{2}\u{2}\u{272}\u{276}\u{5}\u{9A}'
      '\u{4E}\u{2}\u{273}\u{276}\u{5}\u{AC}\u{57}\u{2}\u{274}\u{276}\u{5}\u{92}'
      '\u{4A}\u{2}\u{275}\u{272}\u{3}\u{2}\u{2}\u{2}\u{275}\u{273}\u{3}\u{2}'
      '\u{2}\u{2}\u{275}\u{274}\u{3}\u{2}\u{2}\u{2}\u{276}\u{99}\u{3}\u{2}\u{2}'
      '\u{2}\u{277}\u{278}\u{7}\u{1A}\u{2}\u{2}\u{278}\u{9B}\u{3}\u{2}\u{2}'
      '\u{2}\u{279}\u{27C}\u{5}\u{AC}\u{57}\u{2}\u{27A}\u{27C}\u{5}\u{92}\u{4A}'
      '\u{2}\u{27B}\u{279}\u{3}\u{2}\u{2}\u{2}\u{27B}\u{27A}\u{3}\u{2}\u{2}'
      '\u{2}\u{27C}\u{9D}\u{3}\u{2}\u{2}\u{2}\u{27D}\u{27E}\u{7}\u{5}\u{2}\u{2}'
      '\u{27E}\u{27F}\u{5}\u{44}\u{23}\u{2}\u{27F}\u{280}\u{5}\u{62}\u{32}\u{2}'
      '\u{280}\u{9F}\u{3}\u{2}\u{2}\u{2}\u{281}\u{282}\u{8}\u{51}\u{1}\u{2}'
      '\u{282}\u{286}\u{5}\u{68}\u{35}\u{2}\u{283}\u{286}\u{5}\u{B8}\u{5D}\u{2}'
      '\u{284}\u{286}\u{5}\u{AA}\u{56}\u{2}\u{285}\u{281}\u{3}\u{2}\u{2}\u{2}'
      '\u{285}\u{283}\u{3}\u{2}\u{2}\u{2}\u{285}\u{284}\u{3}\u{2}\u{2}\u{2}'
      '\u{286}\u{291}\u{3}\u{2}\u{2}\u{2}\u{287}\u{288}\u{C}\u{6}\u{2}\u{2}'
      '\u{288}\u{290}\u{5}\u{A2}\u{52}\u{2}\u{289}\u{28A}\u{C}\u{5}\u{2}\u{2}'
      '\u{28A}\u{290}\u{5}\u{A4}\u{53}\u{2}\u{28B}\u{28C}\u{C}\u{4}\u{2}\u{2}'
      '\u{28C}\u{290}\u{5}\u{A6}\u{54}\u{2}\u{28D}\u{28E}\u{C}\u{3}\u{2}\u{2}'
      '\u{28E}\u{290}\u{5}\u{A8}\u{55}\u{2}\u{28F}\u{287}\u{3}\u{2}\u{2}\u{2}'
      '\u{28F}\u{289}\u{3}\u{2}\u{2}\u{2}\u{28F}\u{28B}\u{3}\u{2}\u{2}\u{2}'
      '\u{28F}\u{28D}\u{3}\u{2}\u{2}\u{2}\u{290}\u{293}\u{3}\u{2}\u{2}\u{2}'
      '\u{291}\u{28F}\u{3}\u{2}\u{2}\u{2}\u{291}\u{292}\u{3}\u{2}\u{2}\u{2}'
      '\u{292}\u{A1}\u{3}\u{2}\u{2}\u{2}\u{293}\u{291}\u{3}\u{2}\u{2}\u{2}\u{294}'
      '\u{295}\u{7}\u{44}\u{2}\u{2}\u{295}\u{296}\u{7}\u{1A}\u{2}\u{2}\u{296}'
      '\u{A3}\u{3}\u{2}\u{2}\u{2}\u{297}\u{298}\u{7}\u{3F}\u{2}\u{2}\u{298}'
      '\u{299}\u{5}\u{AC}\u{57}\u{2}\u{299}\u{29A}\u{7}\u{40}\u{2}\u{2}\u{29A}'
      '\u{A5}\u{3}\u{2}\u{2}\u{2}\u{29B}\u{29D}\u{7}\u{3F}\u{2}\u{2}\u{29C}'
      '\u{29E}\u{5}\u{AC}\u{57}\u{2}\u{29D}\u{29C}\u{3}\u{2}\u{2}\u{2}\u{29D}'
      '\u{29E}\u{3}\u{2}\u{2}\u{2}\u{29E}\u{29F}\u{3}\u{2}\u{2}\u{2}\u{29F}'
      '\u{2A1}\u{7}\u{43}\u{2}\u{2}\u{2A0}\u{2A2}\u{5}\u{AC}\u{57}\u{2}\u{2A1}'
      '\u{2A0}\u{3}\u{2}\u{2}\u{2}\u{2A1}\u{2A2}\u{3}\u{2}\u{2}\u{2}\u{2A2}'
      '\u{2A3}\u{3}\u{2}\u{2}\u{2}\u{2A3}\u{2A4}\u{7}\u{40}\u{2}\u{2}\u{2A4}'
      '\u{A7}\u{3}\u{2}\u{2}\u{2}\u{2A5}\u{2B4}\u{7}\u{3B}\u{2}\u{2}\u{2A6}'
      '\u{2AD}\u{5}\u{22}\u{12}\u{2}\u{2A7}\u{2AA}\u{5}\u{2C}\u{17}\u{2}\u{2A8}'
      '\u{2A9}\u{7}\u{41}\u{2}\u{2}\u{2A9}\u{2AB}\u{5}\u{22}\u{12}\u{2}\u{2AA}'
      '\u{2A8}\u{3}\u{2}\u{2}\u{2}\u{2AA}\u{2AB}\u{3}\u{2}\u{2}\u{2}\u{2AB}'
      '\u{2AD}\u{3}\u{2}\u{2}\u{2}\u{2AC}\u{2A6}\u{3}\u{2}\u{2}\u{2}\u{2AC}'
      '\u{2A7}\u{3}\u{2}\u{2}\u{2}\u{2AD}\u{2AF}\u{3}\u{2}\u{2}\u{2}\u{2AE}'
      '\u{2B0}\u{7}\u{1E}\u{2}\u{2}\u{2AF}\u{2AE}\u{3}\u{2}\u{2}\u{2}\u{2AF}'
      '\u{2B0}\u{3}\u{2}\u{2}\u{2}\u{2B0}\u{2B2}\u{3}\u{2}\u{2}\u{2}\u{2B1}'
      '\u{2B3}\u{7}\u{41}\u{2}\u{2}\u{2B2}\u{2B1}\u{3}\u{2}\u{2}\u{2}\u{2B2}'
      '\u{2B3}\u{3}\u{2}\u{2}\u{2}\u{2B3}\u{2B5}\u{3}\u{2}\u{2}\u{2}\u{2B4}'
      '\u{2AC}\u{3}\u{2}\u{2}\u{2}\u{2B4}\u{2B5}\u{3}\u{2}\u{2}\u{2}\u{2B5}'
      '\u{2B6}\u{3}\u{2}\u{2}\u{2}\u{2B6}\u{2B7}\u{7}\u{3C}\u{2}\u{2}\u{2B7}'
      '\u{A9}\u{3}\u{2}\u{2}\u{2}\u{2B8}\u{2B9}\u{5}\u{2C}\u{17}\u{2}\u{2B9}'
      '\u{2BA}\u{7}\u{44}\u{2}\u{2}\u{2BA}\u{2BB}\u{5}\u{56}\u{2C}\u{2}\u{2BB}'
      '\u{AB}\u{3}\u{2}\u{2}\u{2}\u{2BC}\u{2BD}\u{8}\u{57}\u{1}\u{2}\u{2BD}'
      '\u{2BE}\u{5}\u{AE}\u{58}\u{2}\u{2BE}\u{2D3}\u{3}\u{2}\u{2}\u{2}\u{2BF}'
      '\u{2C0}\u{C}\u{7}\u{2}\u{2}\u{2C0}\u{2C1}\u{5}\u{B2}\u{5A}\u{2}\u{2C1}'
      '\u{2C2}\u{5}\u{AC}\u{57}\u{8}\u{2C2}\u{2D2}\u{3}\u{2}\u{2}\u{2}\u{2C3}'
      '\u{2C4}\u{C}\u{6}\u{2}\u{2}\u{2C4}\u{2C5}\u{5}\u{B4}\u{5B}\u{2}\u{2C5}'
      '\u{2C6}\u{5}\u{AC}\u{57}\u{7}\u{2C6}\u{2D2}\u{3}\u{2}\u{2}\u{2}\u{2C7}'
      '\u{2C8}\u{C}\u{5}\u{2}\u{2}\u{2C8}\u{2C9}\u{5}\u{B6}\u{5C}\u{2}\u{2C9}'
      '\u{2CA}\u{5}\u{AC}\u{57}\u{6}\u{2CA}\u{2D2}\u{3}\u{2}\u{2}\u{2}\u{2CB}'
      '\u{2CC}\u{C}\u{4}\u{2}\u{2}\u{2CC}\u{2CD}\u{7}\u{1F}\u{2}\u{2}\u{2CD}'
      '\u{2D2}\u{5}\u{AC}\u{57}\u{5}\u{2CE}\u{2CF}\u{C}\u{3}\u{2}\u{2}\u{2CF}'
      '\u{2D0}\u{7}\u{20}\u{2}\u{2}\u{2D0}\u{2D2}\u{5}\u{AC}\u{57}\u{4}\u{2D1}'
      '\u{2BF}\u{3}\u{2}\u{2}\u{2}\u{2D1}\u{2C3}\u{3}\u{2}\u{2}\u{2}\u{2D1}'
      '\u{2C7}\u{3}\u{2}\u{2}\u{2}\u{2D1}\u{2CB}\u{3}\u{2}\u{2}\u{2}\u{2D1}'
      '\u{2CE}\u{3}\u{2}\u{2}\u{2}\u{2D2}\u{2D5}\u{3}\u{2}\u{2}\u{2}\u{2D3}'
      '\u{2D1}\u{3}\u{2}\u{2}\u{2}\u{2D3}\u{2D4}\u{3}\u{2}\u{2}\u{2}\u{2D4}'
      '\u{AD}\u{3}\u{2}\u{2}\u{2}\u{2D5}\u{2D3}\u{3}\u{2}\u{2}\u{2}\u{2D6}\u{2DB}'
      '\u{5}\u{A0}\u{51}\u{2}\u{2D7}\u{2D8}\u{5}\u{B0}\u{59}\u{2}\u{2D8}\u{2D9}'
      '\u{5}\u{AE}\u{58}\u{2}\u{2D9}\u{2DB}\u{3}\u{2}\u{2}\u{2}\u{2DA}\u{2D6}'
      '\u{3}\u{2}\u{2}\u{2}\u{2DA}\u{2D7}\u{3}\u{2}\u{2}\u{2}\u{2DB}\u{AF}\u{3}'
      '\u{2}\u{2}\u{2}\u{2DC}\u{2DD}\u{9}\u{2}\u{2}\u{2}\u{2DD}\u{B1}\u{3}\u{2}'
      '\u{2}\u{2}\u{2DE}\u{2DF}\u{9}\u{3}\u{2}\u{2}\u{2DF}\u{B3}\u{3}\u{2}\u{2}'
      '\u{2}\u{2E0}\u{2E1}\u{9}\u{4}\u{2}\u{2}\u{2E1}\u{B5}\u{3}\u{2}\u{2}\u{2}'
      '\u{2E2}\u{2E3}\u{9}\u{5}\u{2}\u{2}\u{2E3}\u{B7}\u{3}\u{2}\u{2}\u{2}\u{2E4}'
      '\u{2E5}\u{5}\u{2C}\u{17}\u{2}\u{2E5}\u{2E6}\u{7}\u{3B}\u{2}\u{2}\u{2E6}'
      '\u{2E7}\u{5}\u{AC}\u{57}\u{2}\u{2E7}\u{2E8}\u{7}\u{3C}\u{2}\u{2}\u{2E8}'
      '\u{B9}\u{3}\u{2}\u{2}\u{2}\u{2E9}\u{2F6}\u{5}\u{16}\u{C}\u{2}\u{2EA}'
      '\u{2F6}\u{5}\u{C0}\u{61}\u{2}\u{2EB}\u{2F6}\u{5}\u{BC}\u{5F}\u{2}\u{2EC}'
      '\u{2F6}\u{5}\u{DC}\u{6F}\u{2}\u{2ED}\u{2F6}\u{5}\u{DE}\u{70}\u{2}\u{2EE}'
      '\u{2F6}\u{5}\u{E0}\u{71}\u{2}\u{2EF}\u{2F6}\u{5}\u{E2}\u{72}\u{2}\u{2F0}'
      '\u{2F6}\u{5}\u{E4}\u{73}\u{2}\u{2F1}\u{2F6}\u{5}\u{58}\u{2D}\u{2}\u{2F2}'
      '\u{2F6}\u{5}\u{CC}\u{67}\u{2}\u{2F3}\u{2F6}\u{5}\u{CE}\u{68}\u{2}\u{2F4}'
      '\u{2F6}\u{5}\u{D4}\u{6B}\u{2}\u{2F5}\u{2E9}\u{3}\u{2}\u{2}\u{2}\u{2F5}'
      '\u{2EA}\u{3}\u{2}\u{2}\u{2}\u{2F5}\u{2EB}\u{3}\u{2}\u{2}\u{2}\u{2F5}'
      '\u{2EC}\u{3}\u{2}\u{2}\u{2}\u{2F5}\u{2ED}\u{3}\u{2}\u{2}\u{2}\u{2F5}'
      '\u{2EE}\u{3}\u{2}\u{2}\u{2}\u{2F5}\u{2EF}\u{3}\u{2}\u{2}\u{2}\u{2F5}'
      '\u{2F0}\u{3}\u{2}\u{2}\u{2}\u{2F5}\u{2F1}\u{3}\u{2}\u{2}\u{2}\u{2F5}'
      '\u{2F2}\u{3}\u{2}\u{2}\u{2}\u{2F5}\u{2F3}\u{3}\u{2}\u{2}\u{2}\u{2F5}'
      '\u{2F4}\u{3}\u{2}\u{2}\u{2}\u{2F6}\u{BB}\u{3}\u{2}\u{2}\u{2}\u{2F7}\u{2FD}'
      '\u{5}\u{BE}\u{60}\u{2}\u{2F8}\u{2FD}\u{5}\u{C4}\u{63}\u{2}\u{2F9}\u{2FD}'
      '\u{5}\u{C6}\u{64}\u{2}\u{2FA}\u{2FD}\u{5}\u{C8}\u{65}\u{2}\u{2FB}\u{2FD}'
      '\u{5}\u{5C}\u{2F}\u{2}\u{2FC}\u{2F7}\u{3}\u{2}\u{2}\u{2}\u{2FC}\u{2F8}'
      '\u{3}\u{2}\u{2}\u{2}\u{2FC}\u{2F9}\u{3}\u{2}\u{2}\u{2}\u{2FC}\u{2FA}'
      '\u{3}\u{2}\u{2}\u{2}\u{2FC}\u{2FB}\u{3}\u{2}\u{2}\u{2}\u{2FD}\u{BD}\u{3}'
      '\u{2}\u{2}\u{2}\u{2FE}\u{2FF}\u{7}\u{42}\u{2}\u{2}\u{2FF}\u{BF}\u{3}'
      '\u{2}\u{2}\u{2}\u{300}\u{301}\u{5}\u{C2}\u{62}\u{2}\u{301}\u{302}\u{7}'
      '\u{43}\u{2}\u{2}\u{302}\u{303}\u{5}\u{BA}\u{5E}\u{2}\u{303}\u{C1}\u{3}'
      '\u{2}\u{2}\u{2}\u{304}\u{305}\u{7}\u{1A}\u{2}\u{2}\u{305}\u{C3}\u{3}'
      '\u{2}\u{2}\u{2}\u{306}\u{307}\u{5}\u{AC}\u{57}\u{2}\u{307}\u{C5}\u{3}'
      '\u{2}\u{2}\u{2}\u{308}\u{309}\u{5}\u{AC}\u{57}\u{2}\u{309}\u{30A}\u{7}'
      '\u{21}\u{2}\u{2}\u{30A}\u{30F}\u{3}\u{2}\u{2}\u{2}\u{30B}\u{30C}\u{5}'
      '\u{AC}\u{57}\u{2}\u{30C}\u{30D}\u{7}\u{22}\u{2}\u{2}\u{30D}\u{30F}\u{3}'
      '\u{2}\u{2}\u{2}\u{30E}\u{308}\u{3}\u{2}\u{2}\u{2}\u{30E}\u{30B}\u{3}'
      '\u{2}\u{2}\u{2}\u{30F}\u{C7}\u{3}\u{2}\u{2}\u{2}\u{310}\u{311}\u{5}\u{22}'
      '\u{12}\u{2}\u{311}\u{312}\u{5}\u{CA}\u{66}\u{2}\u{312}\u{313}\u{5}\u{22}'
      '\u{12}\u{2}\u{313}\u{C9}\u{3}\u{2}\u{2}\u{2}\u{314}\u{317}\u{5}\u{B2}'
      '\u{5A}\u{2}\u{315}\u{317}\u{5}\u{B4}\u{5B}\u{2}\u{316}\u{314}\u{3}\u{2}'
      '\u{2}\u{2}\u{316}\u{315}\u{3}\u{2}\u{2}\u{2}\u{316}\u{317}\u{3}\u{2}'
      '\u{2}\u{2}\u{317}\u{318}\u{3}\u{2}\u{2}\u{2}\u{318}\u{319}\u{7}\u{48}'
      '\u{2}\u{2}\u{319}\u{CB}\u{3}\u{2}\u{2}\u{2}\u{31A}\u{31E}\u{7}\u{11}'
      '\u{2}\u{2}\u{31B}\u{31C}\u{5}\u{BC}\u{5F}\u{2}\u{31C}\u{31D}\u{7}\u{42}'
      '\u{2}\u{2}\u{31D}\u{31F}\u{3}\u{2}\u{2}\u{2}\u{31E}\u{31B}\u{3}\u{2}'
      '\u{2}\u{2}\u{31E}\u{31F}\u{3}\u{2}\u{2}\u{2}\u{31F}\u{320}\u{3}\u{2}'
      '\u{2}\u{2}\u{320}\u{321}\u{5}\u{AC}\u{57}\u{2}\u{321}\u{327}\u{5}\u{58}'
      '\u{2D}\u{2}\u{322}\u{325}\u{7}\u{B}\u{2}\u{2}\u{323}\u{326}\u{5}\u{CC}'
      '\u{67}\u{2}\u{324}\u{326}\u{5}\u{58}\u{2D}\u{2}\u{325}\u{323}\u{3}\u{2}'
      '\u{2}\u{2}\u{325}\u{324}\u{3}\u{2}\u{2}\u{2}\u{326}\u{328}\u{3}\u{2}'
      '\u{2}\u{2}\u{327}\u{322}\u{3}\u{2}\u{2}\u{2}\u{327}\u{328}\u{3}\u{2}'
      '\u{2}\u{2}\u{328}\u{CD}\u{3}\u{2}\u{2}\u{2}\u{329}\u{32D}\u{7}\u{E}\u{2}'
      '\u{2}\u{32A}\u{32B}\u{5}\u{BC}\u{5F}\u{2}\u{32B}\u{32C}\u{7}\u{42}\u{2}'
      '\u{2}\u{32C}\u{32E}\u{3}\u{2}\u{2}\u{2}\u{32D}\u{32A}\u{3}\u{2}\u{2}'
      '\u{2}\u{32D}\u{32E}\u{3}\u{2}\u{2}\u{2}\u{32E}\u{330}\u{3}\u{2}\u{2}'
      '\u{2}\u{32F}\u{331}\u{5}\u{AC}\u{57}\u{2}\u{330}\u{32F}\u{3}\u{2}\u{2}'
      '\u{2}\u{330}\u{331}\u{3}\u{2}\u{2}\u{2}\u{331}\u{332}\u{3}\u{2}\u{2}'
      '\u{2}\u{332}\u{336}\u{7}\u{3D}\u{2}\u{2}\u{333}\u{335}\u{5}\u{D0}\u{69}'
      '\u{2}\u{334}\u{333}\u{3}\u{2}\u{2}\u{2}\u{335}\u{338}\u{3}\u{2}\u{2}'
      '\u{2}\u{336}\u{334}\u{3}\u{2}\u{2}\u{2}\u{336}\u{337}\u{3}\u{2}\u{2}'
      '\u{2}\u{337}\u{339}\u{3}\u{2}\u{2}\u{2}\u{338}\u{336}\u{3}\u{2}\u{2}'
      '\u{2}\u{339}\u{33A}\u{7}\u{3E}\u{2}\u{2}\u{33A}\u{CF}\u{3}\u{2}\u{2}'
      '\u{2}\u{33B}\u{33C}\u{5}\u{D2}\u{6A}\u{2}\u{33C}\u{33D}\u{7}\u{43}\u{2}'
      '\u{2}\u{33D}\u{33E}\u{5}\u{5A}\u{2E}\u{2}\u{33E}\u{D1}\u{3}\u{2}\u{2}'
      '\u{2}\u{33F}\u{340}\u{7}\u{8}\u{2}\u{2}\u{340}\u{343}\u{5}\u{22}\u{12}'
      '\u{2}\u{341}\u{343}\u{7}\u{4}\u{2}\u{2}\u{342}\u{33F}\u{3}\u{2}\u{2}'
      '\u{2}\u{342}\u{341}\u{3}\u{2}\u{2}\u{2}\u{343}\u{D3}\u{3}\u{2}\u{2}\u{2}'
      '\u{344}\u{348}\u{7}\u{15}\u{2}\u{2}\u{345}\u{349}\u{5}\u{D6}\u{6C}\u{2}'
      '\u{346}\u{349}\u{5}\u{D8}\u{6D}\u{2}\u{347}\u{349}\u{5}\u{DA}\u{6E}\u{2}'
      '\u{348}\u{345}\u{3}\u{2}\u{2}\u{2}\u{348}\u{346}\u{3}\u{2}\u{2}\u{2}'
      '\u{348}\u{347}\u{3}\u{2}\u{2}\u{2}\u{348}\u{349}\u{3}\u{2}\u{2}\u{2}'
      '\u{349}\u{34A}\u{3}\u{2}\u{2}\u{2}\u{34A}\u{34B}\u{5}\u{58}\u{2D}\u{2}'
      '\u{34B}\u{D5}\u{3}\u{2}\u{2}\u{2}\u{34C}\u{34D}\u{5}\u{AC}\u{57}\u{2}'
      '\u{34D}\u{D7}\u{3}\u{2}\u{2}\u{2}\u{34E}\u{350}\u{5}\u{BC}\u{5F}\u{2}'
      '\u{34F}\u{34E}\u{3}\u{2}\u{2}\u{2}\u{34F}\u{350}\u{3}\u{2}\u{2}\u{2}'
      '\u{350}\u{351}\u{3}\u{2}\u{2}\u{2}\u{351}\u{353}\u{7}\u{42}\u{2}\u{2}'
      '\u{352}\u{354}\u{5}\u{D6}\u{6C}\u{2}\u{353}\u{352}\u{3}\u{2}\u{2}\u{2}'
      '\u{353}\u{354}\u{3}\u{2}\u{2}\u{2}\u{354}\u{355}\u{3}\u{2}\u{2}\u{2}'
      '\u{355}\u{357}\u{7}\u{42}\u{2}\u{2}\u{356}\u{358}\u{5}\u{BC}\u{5F}\u{2}'
      '\u{357}\u{356}\u{3}\u{2}\u{2}\u{2}\u{357}\u{358}\u{3}\u{2}\u{2}\u{2}'
      '\u{358}\u{D9}\u{3}\u{2}\u{2}\u{2}\u{359}\u{35A}\u{5}\u{1E}\u{10}\u{2}'
      '\u{35A}\u{35B}\u{7}\u{32}\u{2}\u{2}\u{35B}\u{35D}\u{3}\u{2}\u{2}\u{2}'
      '\u{35C}\u{359}\u{3}\u{2}\u{2}\u{2}\u{35C}\u{35D}\u{3}\u{2}\u{2}\u{2}'
      '\u{35D}\u{35E}\u{3}\u{2}\u{2}\u{2}\u{35E}\u{35F}\u{7}\u{12}\u{2}\u{2}'
      '\u{35F}\u{360}\u{5}\u{AC}\u{57}\u{2}\u{360}\u{DB}\u{3}\u{2}\u{2}\u{2}'
      '\u{361}\u{363}\u{7}\u{17}\u{2}\u{2}\u{362}\u{364}\u{5}\u{22}\u{12}\u{2}'
      '\u{363}\u{362}\u{3}\u{2}\u{2}\u{2}\u{363}\u{364}\u{3}\u{2}\u{2}\u{2}'
      '\u{364}\u{DD}\u{3}\u{2}\u{2}\u{2}\u{365}\u{367}\u{7}\u{3}\u{2}\u{2}\u{366}'
      '\u{368}\u{5}\u{C2}\u{62}\u{2}\u{367}\u{366}\u{3}\u{2}\u{2}\u{2}\u{367}'
      '\u{368}\u{3}\u{2}\u{2}\u{2}\u{368}\u{DF}\u{3}\u{2}\u{2}\u{2}\u{369}\u{36B}'
      '\u{7}\u{14}\u{2}\u{2}\u{36A}\u{36C}\u{5}\u{C2}\u{62}\u{2}\u{36B}\u{36A}'
      '\u{3}\u{2}\u{2}\u{2}\u{36B}\u{36C}\u{3}\u{2}\u{2}\u{2}\u{36C}\u{E1}\u{3}'
      '\u{2}\u{2}\u{2}\u{36D}\u{36E}\u{7}\u{C}\u{2}\u{2}\u{36E}\u{36F}\u{5}'
      '\u{C2}\u{62}\u{2}\u{36F}\u{E3}\u{3}\u{2}\u{2}\u{2}\u{370}\u{371}\u{7}'
      '\u{10}\u{2}\u{2}\u{371}\u{E5}\u{3}\u{2}\u{2}\u{2}\u{372}\u{377}\u{7}'
      '\u{42}\u{2}\u{2}\u{373}\u{377}\u{7}\u{2}\u{2}\u{3}\u{374}\u{377}\u{6}'
      '\u{74}\u{E}\u{2}\u{375}\u{377}\u{6}\u{74}\u{F}\u{2}\u{376}\u{372}\u{3}'
      '\u{2}\u{2}\u{2}\u{376}\u{373}\u{3}\u{2}\u{2}\u{2}\u{376}\u{374}\u{3}'
      '\u{2}\u{2}\u{2}\u{376}\u{375}\u{3}\u{2}\u{2}\u{2}\u{377}\u{E7}\u{3}\u{2}'
      '\u{2}\u{2}\u{56}\u{F2}\u{FA}\u{109}\u{110}\u{114}\u{11D}\u{122}\u{12A}'
      '\u{131}\u{136}\u{13A}\u{141}\u{14B}\u{156}\u{15A}\u{167}\u{16B}\u{171}'
      '\u{175}\u{179}\u{17D}\u{185}\u{19C}\u{1A4}\u{1A7}\u{1B4}\u{1B8}\u{1BD}'
      '\u{1BF}\u{1C8}\u{1CC}\u{1CF}\u{1DD}\u{1E2}\u{1F3}\u{1FE}\u{209}\u{213}'
      '\u{218}\u{21F}\u{227}\u{233}\u{23D}\u{245}\u{253}\u{25D}\u{25F}\u{268}'
      '\u{26E}\u{275}\u{27B}\u{285}\u{28F}\u{291}\u{29D}\u{2A1}\u{2AA}\u{2AC}'
      '\u{2AF}\u{2B2}\u{2B4}\u{2D1}\u{2D3}\u{2DA}\u{2F5}\u{2FC}\u{30E}\u{316}'
      '\u{31E}\u{325}\u{327}\u{32D}\u{330}\u{336}\u{342}\u{348}\u{34F}\u{353}'
      '\u{357}\u{35C}\u{363}\u{367}\u{36B}\u{376}';
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
  IdentifierContext identifier() => getRuleContext<IdentifierContext>(0);
  TypeContext type() => getRuleContext<TypeContext>(0);
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
  TypeContext type() => getRuleContext<TypeContext>(0);
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

class SliceTypeContext extends ParserRuleContext {
  TerminalNode L_BRACKET() => getToken(MicroGoParser.TOKEN_L_BRACKET, 0);
  TerminalNode R_BRACKET() => getToken(MicroGoParser.TOKEN_R_BRACKET, 0);
  TypeContext type() => getRuleContext<TypeContext>(0);
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
  InterfaceTypeSpecListContext interfaceTypeSpecList() =>
      getRuleContext<InterfaceTypeSpecListContext>(0);
  TerminalNode R_CURLY() => getToken(MicroGoParser.TOKEN_R_CURLY, 0);
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

class InterfaceTypeSpecListContext extends ParserRuleContext {
  List<InterfaceTypeSpecContext> interfaceTypeSpecs() =>
      getRuleContexts<InterfaceTypeSpecContext>();
  InterfaceTypeSpecContext interfaceTypeSpec(int i) =>
      getRuleContext<InterfaceTypeSpecContext>(i);
  List<EosContext> eoss() => getRuleContexts<EosContext>();
  EosContext eos(int i) => getRuleContext<EosContext>(i);
  InterfaceTypeSpecListContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_interfaceTypeSpecList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterInterfaceTypeSpecList(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitInterfaceTypeSpecList(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitInterfaceTypeSpecList(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class InterfaceTypeSpecContext extends ParserRuleContext {
  MethodSpecContext methodSpec() => getRuleContext<MethodSpecContext>(0);
  TypeNameContext typeName() => getRuleContext<TypeNameContext>(0);
  InterfaceTypeSpecContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_interfaceTypeSpec;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterInterfaceTypeSpec(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitInterfaceTypeSpec(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitInterfaceTypeSpec(this);
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
  EllipsisArrayTypeContext ellipsisArrayType() =>
      getRuleContext<EllipsisArrayTypeContext>(0);
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

class EllipsisArrayTypeContext extends ParserRuleContext {
  TerminalNode L_BRACKET() => getToken(MicroGoParser.TOKEN_L_BRACKET, 0);
  TerminalNode ELLIPSIS() => getToken(MicroGoParser.TOKEN_ELLIPSIS, 0);
  TerminalNode R_BRACKET() => getToken(MicroGoParser.TOKEN_R_BRACKET, 0);
  TypeContext type() => getRuleContext<TypeContext>(0);
  EllipsisArrayTypeContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_ellipsisArrayType;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterEllipsisArrayType(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitEllipsisArrayType(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitEllipsisArrayType(this);
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
  TerminalNode SWITCH() => getToken(MicroGoParser.TOKEN_SWITCH, 0);
  TerminalNode L_CURLY() => getToken(MicroGoParser.TOKEN_L_CURLY, 0);
  TerminalNode R_CURLY() => getToken(MicroGoParser.TOKEN_R_CURLY, 0);
  SimpleStmtContext simpleStmt() => getRuleContext<SimpleStmtContext>(0);
  TerminalNode SEMI() => getToken(MicroGoParser.TOKEN_SEMI, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  List<SwitchCaseClauseContext> switchCaseClauses() =>
      getRuleContexts<SwitchCaseClauseContext>();
  SwitchCaseClauseContext switchCaseClause(int i) =>
      getRuleContext<SwitchCaseClauseContext>(i);
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

class SwitchCaseClauseContext extends ParserRuleContext {
  SwitchCaseContext switchCase() => getRuleContext<SwitchCaseContext>(0);
  TerminalNode COLON() => getToken(MicroGoParser.TOKEN_COLON, 0);
  StatementListContext statementList() =>
      getRuleContext<StatementListContext>(0);
  SwitchCaseClauseContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_switchCaseClause;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterSwitchCaseClause(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitSwitchCaseClause(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitSwitchCaseClause(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class SwitchCaseContext extends ParserRuleContext {
  TerminalNode CASE() => getToken(MicroGoParser.TOKEN_CASE, 0);
  ExpressionListContext expressionList() =>
      getRuleContext<ExpressionListContext>(0);
  TerminalNode DEFAULT() => getToken(MicroGoParser.TOKEN_DEFAULT, 0);
  SwitchCaseContext([ParserRuleContext parent, int invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_switchCase;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.enterSwitchCase(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is MicroGoListener) listener.exitSwitchCase(this);
  }

  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is MicroGoVisitor<T>) {
      return visitor.visitSwitchCase(this);
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
