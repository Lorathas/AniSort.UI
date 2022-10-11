import 'package:anisort_ui/exceptions/invalid_format_path_exception.dart';
import 'package:anisort_ui/paths/file_format_emitter.dart';
import 'package:anisort_ui/paths/path_format_utils.dart' show buildEmittersForFormat;
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;

final _textColors = [
  Colors.grey.shade900,
  Colors.grey.shade900,
  Colors.grey.shade900,
  Colors.grey.shade900,
  Colors.grey.shade100,
  Colors.grey.shade100,
  Colors.grey.shade900,
  Colors.grey.shade100,
  Colors.grey.shade100,
  Colors.grey.shade900,
  Colors.grey.shade100,
  Colors.grey.shade900,
  Colors.grey.shade100,
  Colors.grey.shade900,
  Colors.grey.shade100,
  Colors.grey.shade100,
  Colors.grey.shade900,
  Colors.grey.shade900,
  Colors.grey.shade900,
  Colors.grey.shade900,
  Colors.grey.shade900,
  Colors.grey.shade900,
  Colors.grey.shade900,
  Colors.grey.shade900,
];

final _backgroundColors = [
  Colors.red.shade500,
  Colors.green.shade500,
  Colors.blue.shade500,
  Colors.yellow.shade500,
  Colors.purple.shade500,
  Colors.orange.shade500,
  Colors.pink.shade500,
  Colors.indigo.shade500,
  Colors.red.shade700,
  Colors.green.shade700,
  Colors.blue.shade700,
  Colors.yellow.shade700,
  Colors.purple.shade700,
  Colors.orange.shade700,
  Colors.pink.shade700,
  Colors.indigo.shade700,
  Colors.red.shade300,
  Colors.green.shade300,
  Colors.blue.shade300,
  Colors.yellow.shade300,
  Colors.purple.shade300,
  Colors.orange.shade300,
  Colors.pink.shade300,
  Colors.indigo.shade300,
];

pathVariableTextColor(int index) => _textColors[index % _textColors.length];

pathVariableBackgroundColor(int index) => _backgroundColors[index % _backgroundColors.length];

enum ShowType { tv, movie }

class PathBuilder {
  final String rootPath;
  final String tvPath;
  final String moviePath;
  final List<FileFormatEmitter> emitters;

  PathBuilder(this.rootPath, this.tvPath, this.moviePath, this.emitters);

  PathBuilder.fromFormat(this.rootPath, this.tvPath, this.moviePath, String format) : emitters = buildEmittersForFormat(format);

  build(Map<String, String> variables, ShowType showType) =>
      p.join(rootPath, showType == ShowType.tv ? tvPath : moviePath, emitters.map((e) => e.emit(variables)).join());

  buildRichText(BuildContext context, Map<String, String> variables, ShowType show) {
    final spans = <InlineSpan>[
      TextSpan(text: rootPath),
      TextSpan(text: p.separator),
      show == ShowType.tv ? TextSpan(text: tvPath) : TextSpan(text: moviePath),
      TextSpan(text: p.separator),
    ];

    for (var idx = 0; idx < emitters.length; idx++) {
      final emitter = emitters[idx];

      try {
        final text = emitter.emit(variables);

        spans.add(WidgetSpan(
            child: Container(
                decoration: BoxDecoration(color: pathVariableBackgroundColor(idx), borderRadius: const BorderRadius.all(Radius.circular(2))),
                padding: const EdgeInsets.all(2),
                child: Text(emitter.emit(variables), style: TextStyle(color: pathVariableTextColor(idx))))));
      } on InvalidFormatPathException catch (ex) {
        spans.add(TextSpan(text: ex.message, style: TextStyle(color: Theme.of(context).errorColor, backgroundColor: Theme.of(context).cardColor)));
        break;
      }
    }

    return RichText(text: TextSpan(children: spans));
  }
}
