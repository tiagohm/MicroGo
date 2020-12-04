import 'package:antlr4/antlr4.dart';
import 'package:microgo/src/grammar/MicroGoLexer.dart';
import 'package:microgo/src/grammar/MicroGoParser.dart';
import 'package:test/test.dart';

MicroGoParser parserFromTokenStream(TokenStream stream) {
  final parser = MicroGoParser(stream);
  parser.addErrorListener(ConsoleErrorListener());
  return parser;
}

MicroGoParser parserFromInput(InputStream stream) {
  final lexer = MicroGoLexer(stream);
  final cts = CommonTokenStream(lexer);
  return parserFromTokenStream(cts);
}

Future<MicroGoParser> parserFromFile(String name) async {
  final stream = await InputStream.fromPath('./test/examples/$name.go');
  return parserFromInput(stream);
}

Future<MicroGoParser> parserFromText(String text) async {
  final stream = await InputStream.fromString(text);
  return parserFromInput(stream);
}

extension ParserExtenstion<T extends Parser> on T {
  String toPrettyTree(ParseTree Function() tree) {
    final sb = StringBuffer();

    void recursive(ParseTree root, int offset, List<String> ruleNames) {
      sb.write(''.padLeft(offset));
      sb.writeln(Trees.getNodeText(root, ruleNames: ruleNames));

      if (root is ParserRuleContext) {
        if (root.children != null) {
          for (final child in root.children) {
            recursive(child, offset + 1, ruleNames);
          }
        }
      }
    }

    recursive(tree(), 0, ruleNames);

    return '$sb';
  }
}
