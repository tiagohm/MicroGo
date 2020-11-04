import 'package:antlr4/antlr4.dart';

import 'MicroGoLexer.dart';

// https://github.com/antlr/grammars-v4/tree/master/golang/Java
abstract class MicroGoBaseParser extends Parser {
  MicroGoBaseParser(TokenStream input) : super(input);

  /// Returns `true` if on the current index of the parser's
  /// token stream a token exists on the `HIDDEN` channel which
  /// either is a line terminator, or is a multi line comment that
  /// contains a line terminator.
  bool lineTerminatorAhead() {
    final possibleIndexEosToken = currentToken.tokenIndex - 1;

    if (possibleIndexEosToken == -1) {
      return true;
    }

    var ahead = inputStream.get(possibleIndexEosToken);

    if (ahead.channel != Lexer.HIDDEN) {
      // We're only interested in tokens on the HIDDEN channel
      return false;
    }

    if (ahead.type == MicroGoLexer.TOKEN_TERMINATOR) {
      // There is definitely a line terminator ahead
      return true;
    }

    if (ahead.type == MicroGoLexer.TOKEN_WS) {
      // Get the token ahead of the current whitespaces
      final index = currentToken.tokenIndex - 2;
      ahead = inputStream.get(index);
    }

    // Get the token's text and type
    final text = ahead.text;
    final type = ahead.type;

    // Check if the token is, or contains a line terminator
    return (type == MicroGoLexer.TOKEN_COMMENT &&
            (text.contains('\r') || text.contains('\n'))) ||
        (type == MicroGoLexer.TOKEN_TERMINATOR);
  }

  /// Returns `true` if no line terminator exists between the specified
  /// token offset and the prior one on the `HIDDEN` channel.
  bool noTerminatorBetween(int tokenOffset) {
    final stream = inputStream as BufferedTokenStream;
    final tokens =
        stream.getHiddenTokensToLeft(stream.LT(tokenOffset).tokenIndex);

    if (tokens == null) {
      return true;
    }

    for (final token in tokens) {
      if (token.text.contains('\n')) {
        return false;
      }
    }

    return true;
  }

  /// Returns `true` if no line terminator exists after any encounterd
  /// parameters beyond the specified token offset and the next on the
  /// `HIDDEN` channel.
  bool noTerminatorAfterParams(int tokenOffset) {
    final stream = inputStream as BufferedTokenStream;
    var leftParams = 1;
    var rightParams = 0;

    if (stream.LT(tokenOffset).type == MicroGoLexer.TOKEN_L_PAREN) {
      // Scan past parameters
      while (leftParams != rightParams) {
        tokenOffset++;

        final valueType = stream.LT(tokenOffset).type;

        if (valueType == MicroGoLexer.TOKEN_L_PAREN) {
          leftParams++;
        } else if (valueType == MicroGoLexer.TOKEN_R_PAREN) {
          rightParams++;
        }
      }

      tokenOffset++;

      return noTerminatorBetween(tokenOffset);
    }

    return true;
  }

  bool checkPreviousTokenText(String text) {
    final stream = inputStream as BufferedTokenStream;
    final prevTokenText = stream.LT(1).text;
    return prevTokenText != null && prevTokenText == text;
  }
}
