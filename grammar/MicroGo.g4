grammar MicroGo;

options {
    superClass=MicroGoBaseParser;
}

@header {
import 'MicroGoBaseParser.dart';
}

// ---------------- Lexer ----------------

// Keywords

BREAK                  : 'break';
DEFAULT                : 'default';
FUNC                   : 'func';
INTERFACE              : 'interface';
SELECT                 : 'select';
CASE                   : 'case';
GO                     : 'go';
STRUCT                 : 'struct';
ELSE                   : 'else';
GOTO                   : 'goto';
PACKAGE                : 'package';
SWITCH                 : 'switch';
CONST                  : 'const';
FALLTHROUGH            : 'fallthrough';
IF                     : 'if';
RANGE                  : 'range';
TYPE                   : 'type';
CONTINUE               : 'continue';
FOR                    : 'for';
IMPORT                 : 'import';
RETURN                 : 'return';
VAR                    : 'var';
NIL                    : 'nil';

// Identifiers

IDENTIFIER             : LETTER (LETTER | UNICODE_DIGIT)*;

// Operators and punctuation

LSHIFT_ASSIGN          : '<<=';
RSHIFT_ASSIGN          : '>>=';
BIT_CLEAR_ASSIGN       : '&^=';
ELLIPSIS               : '...';
LOGICAL_AND            : '&&';
LOGICAL_OR             : '||';
PLUS_PLUS              : '++';
MINUS_MINUS            : '--';
EQUALS                 : '==';
NOT_EQUALS             : '!=';
LESS_OR_EQUALS         : '<=';
GREATER_OR_EQUALS      : '>=';
LSHIFT                 : '<<';
RSHIFT                 : '>>';
BIT_CLEAR              : '&^';
PLUS_ASSGIN            : '+=';
MINUS_ASSIGN           : '-=';
STAR_ASSIGN            : '*=';
DIV_ASSIGN             : '/=';
MOD_ASSIGN             : '%=';
AND_ASSIGN             : '&=';
OR_ASSIGN              : '|=';
XOR_ASSIGN             : '^=';
SHORT_ASSIGN           : ':=';
PLUS                   : '+';
MINUS                  : '-';
STAR                   : '*';
DIV                    : '/';
MOD                    : '%';
AMPERSAND              : '&';
PIPE                   : '|';
CARET                  : '^';
L_PAREN                : '(';
R_PAREN                : ')';
L_CURLY                : '{';
R_CURLY                : '}';
L_BRACKET              : '[';
R_BRACKET              : ']';
COMMA                  : ',';
SEMI                   : ';';
COLON                  : ':';
DOT                    : '.';
EXCLAMATION            : '!';
LESS                   : '<';
GREATER                : '>';
EQUAL                  : '=';

UNDERLINE              : '_';
BACKSLASH              : '\\';
SINGLE_QUOTE           : '\'';
DOUBLE_QUOTE           : '"';
BACK_QUOTE             : '`';

// Integer literais

DECIMAL_LIT            : '0' | [1-9] (UNDERLINE? DECIMAL_DIGITS)?;
BINARY_LIT             : '0' [bB] UNDERLINE? BINARY_DIGITS;
OCTAL_LIT              : '0' [oO]? UNDERLINE? OCTAL_DIGITS;
HEX_LIT                : '0' [xX] UNDERLINE? HEX_DIGITS;

// Floating-point literals

DECIMAL_FLOAT_LIT      : DECIMAL_DIGITS DOT DECIMAL_DIGITS? DECIMAL_EXPONENT? |
                         DECIMAL_DIGITS DECIMAL_EXPONENT |
                         DOT DECIMAL_DIGITS DECIMAL_EXPONENT?;
HEX_FLOAT_LIT          : '0' [xX] HEX_MANTISSA HEX_EXPONENT;

// Rune literals

RUNE_LIT               : SINGLE_QUOTE (~[\n\\] | ESCAPED_VALUE) SINGLE_QUOTE;

// String literals

RAW_STRING_LIT         : BACK_QUOTE ~'`'* BACK_QUOTE;
INTERPRETED_STRING_LIT : DOUBLE_QUOTE (~["\\] | ESCAPED_VALUE)* DOUBLE_QUOTE;

// Hidden tokens

WS                     : [ \t]+             -> channel(HIDDEN);
COMMENT                : '/*' .*? '*/'      -> channel(HIDDEN);
TERMINATOR             : [\r\n]+            -> channel(HIDDEN);
LINE_COMMENT           : '//' ~[\r\n]*      -> channel(HIDDEN);

// Fragments.

fragment NEWLINE
    : [\n]
    ;

// An arbitrary Unicode code point except newline
fragment UNICODE_CHAR
    : ~[\n]
    ;

// A Unicode code point classified as "Number, decimal digit"
fragment UNICODE_DIGIT
    : [\u0030-\u0039]
    | [\u0660-\u0669]
    | [\u06F0-\u06F9]
    | [\u0966-\u096F]
    | [\u09E6-\u09EF]
    | [\u0A66-\u0A6F]
    | [\u0AE6-\u0AEF]
    | [\u0B66-\u0B6F]
    | [\u0BE7-\u0BEF]
    | [\u0C66-\u0C6F]
    | [\u0CE6-\u0CEF]
    | [\u0D66-\u0D6F]
    | [\u0E50-\u0E59]
    | [\u0ED0-\u0ED9]
    | [\u0F20-\u0F29]
    | [\u1040-\u1049]
    | [\u1369-\u1371]
    | [\u17E0-\u17E9]
    | [\u1810-\u1819]
    | [\uFF10-\uFF19]
    ;

// A Unicode code point classified as "Letter"
fragment UNICODE_LETTER
    : [\u0041-\u005A]
    | [\u0061-\u007A]
    | [\u00AA]
    | [\u00B5]
    | [\u00BA]
    | [\u00C0-\u00D6]
    | [\u00D8-\u00F6]
    | [\u00F8-\u021F]
    | [\u0222-\u0233]
    | [\u0250-\u02AD]
    | [\u02B0-\u02B8]
    | [\u02BB-\u02C1]
    | [\u02D0-\u02D1]
    | [\u02E0-\u02E4]
    | [\u02EE]
    | [\u037A]
    | [\u0386]
    | [\u0388-\u038A]
    | [\u038C]
    | [\u038E-\u03A1]
    | [\u03A3-\u03CE]
    | [\u03D0-\u03D7]
    | [\u03DA-\u03F3]
    | [\u0400-\u0481]
    | [\u048C-\u04C4]
    | [\u04C7-\u04C8]
    | [\u04CB-\u04CC]
    | [\u04D0-\u04F5]
    | [\u04F8-\u04F9]
    | [\u0531-\u0556]
    | [\u0559]
    | [\u0561-\u0587]
    | [\u05D0-\u05EA]
    | [\u05F0-\u05F2]
    | [\u0621-\u063A]
    | [\u0640-\u064A]
    | [\u0671-\u06D3]
    | [\u06D5]
    | [\u06E5-\u06E6]
    | [\u06FA-\u06FC]
    | [\u0710]
    | [\u0712-\u072C]
    | [\u0780-\u07A5]
    | [\u0905-\u0939]
    | [\u093D]
    | [\u0950]
    | [\u0958-\u0961]
    | [\u0985-\u098C]
    | [\u098F-\u0990]
    | [\u0993-\u09A8]
    | [\u09AA-\u09B0]
    | [\u09B2]
    | [\u09B6-\u09B9]
    | [\u09DC-\u09DD]
    | [\u09DF-\u09E1]
    | [\u09F0-\u09F1]
    | [\u0A05-\u0A0A]
    | [\u0A0F-\u0A10]
    | [\u0A13-\u0A28]
    | [\u0A2A-\u0A30]
    | [\u0A32-\u0A33]
    | [\u0A35-\u0A36]
    | [\u0A38-\u0A39]
    | [\u0A59-\u0A5C]
    | [\u0A5E]
    | [\u0A72-\u0A74]
    | [\u0A85-\u0A8B]
    | [\u0A8D]
    | [\u0A8F-\u0A91]
    | [\u0A93-\u0AA8]
    | [\u0AAA-\u0AB0]
    | [\u0AB2-\u0AB3]
    | [\u0AB5-\u0AB9]
    | [\u0ABD]
    | [\u0AD0]
    | [\u0AE0]
    | [\u0B05-\u0B0C]
    | [\u0B0F-\u0B10]
    | [\u0B13-\u0B28]
    | [\u0B2A-\u0B30]
    | [\u0B32-\u0B33]
    | [\u0B36-\u0B39]
    | [\u0B3D]
    | [\u0B5C-\u0B5D]
    | [\u0B5F-\u0B61]
    | [\u0B85-\u0B8A]
    | [\u0B8E-\u0B90]
    | [\u0B92-\u0B95]
    | [\u0B99-\u0B9A]
    | [\u0B9C]
    | [\u0B9E-\u0B9F]
    | [\u0BA3-\u0BA4]
    | [\u0BA8-\u0BAA]
    | [\u0BAE-\u0BB5]
    | [\u0BB7-\u0BB9]
    | [\u0C05-\u0C0C]
    | [\u0C0E-\u0C10]
    | [\u0C12-\u0C28]
    | [\u0C2A-\u0C33]
    | [\u0C35-\u0C39]
    | [\u0C60-\u0C61]
    | [\u0C85-\u0C8C]
    | [\u0C8E-\u0C90]
    | [\u0C92-\u0CA8]
    | [\u0CAA-\u0CB3]
    | [\u0CB5-\u0CB9]
    | [\u0CDE]
    | [\u0CE0-\u0CE1]
    | [\u0D05-\u0D0C]
    | [\u0D0E-\u0D10]
    | [\u0D12-\u0D28]
    | [\u0D2A-\u0D39]
    | [\u0D60-\u0D61]
    | [\u0D85-\u0D96]
    | [\u0D9A-\u0DB1]
    | [\u0DB3-\u0DBB]
    | [\u0DBD]
    | [\u0DC0-\u0DC6]
    | [\u0E01-\u0E30]
    | [\u0E32-\u0E33]
    | [\u0E40-\u0E46]
    | [\u0E81-\u0E82]
    | [\u0E84]
    | [\u0E87-\u0E88]
    | [\u0E8A]
    | [\u0E8D]
    | [\u0E94-\u0E97]
    | [\u0E99-\u0E9F]
    | [\u0EA1-\u0EA3]
    | [\u0EA5]
    | [\u0EA7]
    | [\u0EAA-\u0EAB]
    | [\u0EAD-\u0EB0]
    | [\u0EB2-\u0EB3]
    | [\u0EBD-\u0EC4]
    | [\u0EC6]
    | [\u0EDC-\u0EDD]
    | [\u0F00]
    | [\u0F40-\u0F6A]
    | [\u0F88-\u0F8B]
    | [\u1000-\u1021]
    | [\u1023-\u1027]
    | [\u1029-\u102A]
    | [\u1050-\u1055]
    | [\u10A0-\u10C5]
    | [\u10D0-\u10F6]
    | [\u1100-\u1159]
    | [\u115F-\u11A2]
    | [\u11A8-\u11F9]
    | [\u1200-\u1206]
    | [\u1208-\u1246]
    | [\u1248]
    | [\u124A-\u124D]
    | [\u1250-\u1256]
    | [\u1258]
    | [\u125A-\u125D]
    | [\u1260-\u1286]
    | [\u1288]
    | [\u128A-\u128D]
    | [\u1290-\u12AE]
    | [\u12B0]
    | [\u12B2-\u12B5]
    | [\u12B8-\u12BE]
    | [\u12C0]
    | [\u12C2-\u12C5]
    | [\u12C8-\u12CE]
    | [\u12D0-\u12D6]
    | [\u12D8-\u12EE]
    | [\u12F0-\u130E]
    | [\u1310]
    | [\u1312-\u1315]
    | [\u1318-\u131E]
    | [\u1320-\u1346]
    | [\u1348-\u135A]
    | [\u13A0-\u13B0]
    | [\u13B1-\u13F4]
    | [\u1401-\u1676]
    | [\u1681-\u169A]
    | [\u16A0-\u16EA]
    | [\u1780-\u17B3]
    | [\u1820-\u1877]
    | [\u1880-\u18A8]
    | [\u1E00-\u1E9B]
    | [\u1EA0-\u1EE0]
    | [\u1EE1-\u1EF9]
    | [\u1F00-\u1F15]
    | [\u1F18-\u1F1D]
    | [\u1F20-\u1F39]
    | [\u1F3A-\u1F45]
    | [\u1F48-\u1F4D]
    | [\u1F50-\u1F57]
    | [\u1F59]
    | [\u1F5B]
    | [\u1F5D]
    | [\u1F5F-\u1F7D]
    | [\u1F80-\u1FB4]
    | [\u1FB6-\u1FBC]
    | [\u1FBE]
    | [\u1FC2-\u1FC4]
    | [\u1FC6-\u1FCC]
    | [\u1FD0-\u1FD3]
    | [\u1FD6-\u1FDB]
    | [\u1FE0-\u1FEC]
    | [\u1FF2-\u1FF4]
    | [\u1FF6-\u1FFC]
    | [\u207F]
    | [\u2102]
    | [\u2107]
    | [\u210A-\u2113]
    | [\u2115]
    | [\u2119-\u211D]
    | [\u2124]
    | [\u2126]
    | [\u2128]
    | [\u212A-\u212D]
    | [\u212F-\u2131]
    | [\u2133-\u2139]
    | [\u2160-\u2183]
    | [\u3005-\u3007]
    | [\u3021-\u3029]
    | [\u3031-\u3035]
    | [\u3038-\u303A]
    | [\u3041-\u3094]
    | [\u309D-\u309E]
    | [\u30A1-\u30FA]
    | [\u30FC-\u30FE]
    | [\u3105-\u312C]
    | [\u3131-\u318E]
    | [\u31A0-\u31B7]
    | [\u3400]
    | [\u4DB5]
    | [\u4E00]
    | [\u9FA5]
    | [\uA000-\uA48C]
    | [\uAC00]
    | [\uD7A3]
    | [\uF900-\uFA2D]
    | [\uFB00-\uFB06]
    | [\uFB13-\uFB17]
    | [\uFB1D]
    | [\uFB1F-\uFB28]
    | [\uFB2A-\uFB36]
    | [\uFB38-\uFB3C]
    | [\uFB3E]
    | [\uFB40-\uFB41]
    | [\uFB43-\uFB44]
    | [\uFB46-\uFBB1]
    | [\uFBD3-\uFD3D]
    | [\uFD50-\uFD8F]
    | [\uFD92-\uFDC7]
    | [\uFDF0-\uFDFB]
    | [\uFE70-\uFE72]
    | [\uFE74]
    | [\uFE76-\uFEFC]
    | [\uFF21-\uFF3A]
    | [\uFF41-\uFF5A]
    | [\uFF66-\uFFBE]
    | [\uFFC2-\uFFC7]
    | [\uFFCA-\uFFCF]
    | [\uFFD2-\uFFD7]
    | [\uFFDA-\uFFDC]
    ;

fragment LETTER
    : UNICODE_LETTER
    | UNDERLINE
    ;

fragment DECIMAL_DIGIT
    : [0-9]
    ;

fragment BINARY_DIGIT
    : [0-1]
    ;

fragment OCTAL_DIGIT
    : [0-7]
    ;

fragment HEX_DIGIT
    : [0-9a-fA-F]
    ;

fragment DECIMAL_DIGITS
    : DECIMAL_DIGIT (UNDERLINE? DECIMAL_DIGIT)*
    ;

fragment BINARY_DIGITS
    : BINARY_DIGIT (UNDERLINE? BINARY_DIGIT)*
    ;

fragment OCTAL_DIGITS
    : OCTAL_DIGIT (UNDERLINE? OCTAL_DIGIT)*
    ;

fragment HEX_DIGITS
    : HEX_DIGIT (UNDERLINE? HEX_DIGIT)*
    ;

fragment DECIMAL_EXPONENT
    : [eE] [+-]? DECIMAL_DIGITS
    ;

fragment HEX_EXPONENT
    : [pP] [+-]? DECIMAL_DIGITS
    ;

fragment HEX_MANTISSA
    : UNDERLINE? HEX_DIGITS DOT HEX_DIGITS?
    | UNDERLINE? HEX_DIGITS
    | DOT HEX_DIGITS
    ;

fragment UNICODE_VALUE
    : UNICODE_CHAR | LITTLE_U_VALUE | BIG_U_VALUE | ESCAPED_CHAR
    ;

fragment ESCAPED_VALUE
    : BYTE_VALUE | LITTLE_U_VALUE | BIG_U_VALUE | ESCAPED_CHAR
    ;

fragment BYTE_VALUE
    : OCTAL_BYTE_VALUE | HEX_BYTE_VALUE
    ;

fragment OCTAL_BYTE_VALUE
    : BACKSLASH OCTAL_DIGIT OCTAL_DIGIT OCTAL_DIGIT
    ;

fragment HEX_BYTE_VALUE
    : BACKSLASH 'x' HEX_DIGIT HEX_DIGIT
    ;

fragment LITTLE_U_VALUE
    : BACKSLASH 'u' HEX_DIGIT HEX_DIGIT HEX_DIGIT HEX_DIGIT
    ;

fragment BIG_U_VALUE
    : BACKSLASH 'U' HEX_DIGIT HEX_DIGIT HEX_DIGIT HEX_DIGIT HEX_DIGIT HEX_DIGIT HEX_DIGIT HEX_DIGIT
    ;

fragment ESCAPED_CHAR
    :  BACKSLASH [abfnrtv\\'"]
    ;

// --------------- Parser ---------------

// Source file

sourceFile
    : packageClause eos (importDecl eos)* (topLevelDecl eos)*
    ;

// Package clause

packageClause
    : PACKAGE packageName
    ;

packageName
    : IDENTIFIER
    ;

// Import declarations

importDecl
    : IMPORT (importSpec | L_PAREN (importSpec eos)* R_PAREN)
    ;

importSpec
    : (DOT | packageName)? importPath
    ;

importPath
    : stringLit
    ;

stringLit
    : rawStringLit | interpretedStringLit
    ;

rawStringLit
    : RAW_STRING_LIT
    ;

interpretedStringLit
    : INTERPRETED_STRING_LIT
    ;

// Declarations and scope

topLevelDecl
    : declaration | functionDecl | methodDecl
    ;

declaration
    : constDecl | typeDecl | varDecl
    ;

// Constant declarations

constDecl
    : CONST (constSpec | L_PAREN (constSpec eos)* R_PAREN)
    ;

constSpec
    : identifierList (type? EQUAL expressionList)?
    ;

identifierList
    : IDENTIFIER (COMMA IDENTIFIER)*
    ;

expressionList
    : expression (COMMA expression)*
    ;

// Type declarations

typeDecl
    : TYPE (typeSpec | L_PAREN (typeSpec eos)* R_PAREN)
    ;

typeSpec
    : aliasDecl | typeDef
    ;

aliasDecl
    : IDENTIFIER EQUAL type
    ;

typeDef
    : IDENTIFIER type
    ;

// Variable declarations

varDecl
    : VAR (varSpec | L_PAREN (varSpec eos)* R_PAREN)
    ;

varSpec
    : identifierList (type (EQUAL expressionList)? | EQUAL expressionList)
    ;

// Types

type
    : typeName | typeLit | L_PAREN type R_PAREN
    ;

typeName
    : IDENTIFIER | qualifiedIdent
    ;

typeLit
    : arrayType | structType | pointerType | functionType | interfaceType | sliceType
    ;

// Array types

arrayType
    : L_BRACKET arrayLength R_BRACKET elementType
    ;

arrayLength
    : expression
    ;

elementType
    : type
    ;

// Slice types

sliceType
    : L_BRACKET R_BRACKET elementType
    ;

// Struct types

structType
    : STRUCT L_CURLY (fieldDecl eos)* R_CURLY
    ;

fieldDecl
    : (identifierList type | embeddedField)
    ;

embeddedField
    : STAR? typeName
    ;

// Pointer types

pointerType
    : STAR baseType
    ;

baseType
    : type
    ;

// Function types

functionType
    : FUNC signature
    ;

signature
    : parameters result?
    ;

result
    : parameters | type
    ;

parameters
    : L_PAREN (parameterList COMMA?)? R_PAREN
    ;

parameterList
    : parameterDecl (COMMA parameterDecl)*
    ;

parameterDecl
    : identifierList? ELLIPSIS? type
    ;

// Interface types

interfaceType
    : INTERFACE L_CURLY ((methodSpec | interfaceTypeName) eos)* R_CURLY
    ;

methodSpec
    : methodName signature
    ;

methodName
    : IDENTIFIER
    ;

interfaceTypeName
    : typeName
    ;

// Blocks

block
    : L_CURLY statementList R_CURLY
    ;

statementList
    : (statement eos)*
    ;

// Short variable declarations

shortVarDecl
    : identifierList SHORT_ASSIGN expressionList
    ;

// Function declarations

functionDecl
    : FUNC functionName signature functionBody?
    ;

functionName
    : IDENTIFIER
    ;

functionBody
    : block
    ;

// Method declarations

methodDecl
    : FUNC receiver methodName signature functionBody?
    ;

receiver
    : parameters
    ;

// Expressions

// Operands

operand
    : literal | operandName | L_PAREN expression R_PAREN
    ;

literal
    : basicLit | compositeLit | functionLit
    ;

basicLit
    : nilLit
    | integerLit
    | floatLit
    | runeLit
    | stringLit
    ;

nilLit
    : NIL
    ;

integerLit
    : decimalLit
    | binaryLit
    | octalLit
    | hexLit
    ;

decimalLit
    : DECIMAL_LIT
    ;

binaryLit
    : BINARY_LIT
    ;

octalLit
    : OCTAL_LIT
    ;

hexLit
    : HEX_LIT
    ;

floatLit
    : decimalFloatLit | hexFloatLit
    ;

decimalFloatLit
    : DECIMAL_FLOAT_LIT
    ;

hexFloatLit
    : HEX_FLOAT_LIT
    ;

runeLit
    : RUNE_LIT
    ;

operandName
    : IDENTIFIER | qualifiedIdent
    ;

// Qualified identifiers

qualifiedIdent
    : packageName DOT IDENTIFIER
    ;

// Composite literals

compositeLit
    : literalType literalValue
    ;

literalType
    : structType
    | arrayType
    | L_BRACKET ELLIPSIS R_BRACKET elementType
    | sliceType
    | typeName
    ;

literalValue
    : L_CURLY (elementList COMMA?)? R_CURLY
    ;

elementList
    : keyedElement (COMMA keyedElement)*
    ;

keyedElement
    : (key COLON)? element
    ;

key
    : fieldName | expression | literalValue
    ;

fieldName
    : IDENTIFIER
    ;

element
    : expression | literalValue
    ;

// Function literals

// A function literal represents an anonymous function.
functionLit
    : FUNC signature functionBody
    ;

// Primary expressions

primaryExpr
    : operand
    | conversion
    | methodExpr
    | primaryExpr selector
    | primaryExpr index
    | primaryExpr slice
    | primaryExpr typeAssertion
    | primaryExpr arguments
    ;

selector
    : DOT IDENTIFIER
    ;

index
    : L_BRACKET expression R_BRACKET
    ;

slice
    : L_BRACKET expression? COLON expression? R_BRACKET
    | L_BRACKET expression? COLON expression COLON expression R_BRACKET
    ;

typeAssertion
    : DOT L_PAREN type R_PAREN
    ;

arguments
    : L_PAREN ((expressionList | type (COMMA expressionList)?) ELLIPSIS? COMMA?)? R_PAREN
    ;

// Method expressions

methodExpr
    : receiverType DOT methodName
    ;

receiverType
    : type
    ;

// Operators

expression
    : unaryExpr
    | expression multOp expression
    | expression addOp expression
    | expression relOp expression
    | expression LOGICAL_AND expression
    | expression LOGICAL_OR expression
    ;

unaryExpr
    : primaryExpr
    | unarypOp unaryExpr
    ;

unarypOp
    : PLUS | MINUS | EXCLAMATION | CARET | STAR | AMPERSAND
    ;

multOp
    : STAR | DIV | MOD | LSHIFT | RSHIFT | AMPERSAND | BIT_CLEAR
    ;

addOp
    : PLUS | MINUS | PIPE | CARET
    ;

relOp
    : EQUALS | NOT_EQUALS | LESS | LESS_OR_EQUALS | GREATER | GREATER_OR_EQUALS
    ;

// Conversions

conversion
    : type L_PAREN expression COMMA? R_PAREN
    ;

// Statements

statement
    : declaration
    | labeledStmt
    | simpleStmt
    | returnStmt
    | breakStmt
    | continueStmt
    | gotoStmt
    | fallthroughStmt
    | block
    | ifStmt
    | switchStmt
    | forStmt
    ;

simpleStmt
    : emptyStmt
    | expressionStmt
    | incDecStmt
    | assignment
    | shortVarDecl
    ;

// Empty statements

emptyStmt
    : SEMI
    ;

// Labeled statements

labeledStmt
    : label COLON statement
    ;

label
    : IDENTIFIER
    ;

// Expression statements

expressionStmt
    : expression
    ;

// IncDec statements

incDecStmt
    : expression PLUS_PLUS
    | expression MINUS_MINUS
    ;

// Assignments

assignment
    : expressionList assignOp expressionList
    ;

assignOp
    : (multOp | addOp)? EQUAL
    ;

// If statements

ifStmt
    : IF (simpleStmt SEMI)? expression block (ELSE (ifStmt | block))?
    ;

// Switch statements

switchStmt
    : exprSwitchStmt | typeSwitchStmt
    ;

exprSwitchStmt
    : SWITCH (simpleStmt SEMI)? expression? L_CURLY exprCaseClause R_CURLY
    ;

exprCaseClause
    : exprSwitchCase COLON statementList
    ;

exprSwitchCase
    : CASE expressionList
    | DEFAULT
    ;

typeSwitchStmt
    : SWITCH (simpleStmt SEMI)? typeSwitchGuard L_CURLY typeCaseClause R_CURLY
    ;

typeSwitchGuard
    : (IDENTIFIER SHORT_ASSIGN)? primaryExpr DOT L_PAREN TYPE R_PAREN
    ;

typeCaseClause
    : typeSwitchCase COLON statementList
    ;

typeSwitchCase
    : CASE typeList
    | DEFAULT
    ;

typeList
    : type (COMMA type)*
    ;

// For statements

forStmt
    : FOR (condition | forClause | rangeClause)? block
    ;

condition
    : expression
    ;

forClause
    : initStmt? SEMI condition? SEMI postStmt?
    ;

initStmt
    : simpleStmt
    ;

postStmt
    : simpleStmt
    ;

rangeClause
    : (expressionList EQUAL | identifierList SHORT_ASSIGN)? RANGE expression
    ;

// Return statements

returnStmt
    : RETURN expressionList?
    ;

// Break statements

breakStmt
    : BREAK label?
    ;

// Continue statements

continueStmt
    : CONTINUE label?
    ;

// Goto statements

gotoStmt
    : GOTO label
    ;

// Fallthrough statements

fallthroughStmt
    : FALLTHROUGH
    ;

eos
    : SEMI
    | EOF
    | {lineTerminatorAhead()}?
    | {checkPreviousTokenText("}")}?
    ;
