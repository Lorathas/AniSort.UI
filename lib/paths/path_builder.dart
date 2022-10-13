import 'package:anisort_ui/exceptions/invalid_format_path_exception.dart';
import 'package:anisort_ui/paths/const_path_format_emitter.dart';
import 'package:anisort_ui/paths/path_format_emitter.dart';
import 'package:anisort_ui/paths/path_format_utils.dart' show buildEmittersForFormat;
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;

final _textColors = [
  Colors.grey.shade100,
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
  final List<PathFormatEmitter> emitters;

  PathBuilder(this.rootPath, this.tvPath, this.moviePath, this.emitters);

  PathBuilder.fromFormat(this.rootPath, this.tvPath, this.moviePath, String format) : emitters = buildEmittersForFormat(format);

  build(Map<String, String> variables, ShowType showType) =>
      p.join(rootPath, showType == ShowType.tv ? tvPath : moviePath, emitters.map((e) => e.emit(variables)).join());

  buildRichText(BuildContext context, Map<String, String> variables, ShowType show) {
    final spans = <InlineSpan>[
      WidgetSpan(
          child:
              _PathSegmentChunk(text: p.join(rootPath, show == ShowType.tv ? tvPath : moviePath), backgroundColor: Theme.of(context).cardColor, isStart: true)),
    ];

    var takenColors = 0;
    for (var idx = 0; idx < emitters.length; idx++) {
      final emitter = emitters[idx];

      try {
        final emitted = emitter.emit(variables);

        final isLast = idx == emitters.length - 1;

        final text = isLast && emitter is ConstPathFormatEmitter ? '$emitted.mkv' : emitted;

        if (emitter is ConstPathFormatEmitter) {
          spans.add(WidgetSpan(child: _PathSegmentChunk(text: text, backgroundColor: Theme.of(context).cardColor, isEnd: isLast)));
        } else {
          spans.add(WidgetSpan(
              child: _PathSegmentChunk(
            text: text,
            color: pathVariableTextColor(takenColors),
            backgroundColor: pathVariableBackgroundColor(takenColors),
            isEnd: isLast,
          )));
          takenColors++;
        }
      } on InvalidFormatPathException catch (ex) {
        spans.add(TextSpan(text: ex.message, style: TextStyle(color: Theme.of(context).errorColor, backgroundColor: Theme.of(context).cardColor)));
        break;
      }
    }

    return RichText(text: TextSpan(children: spans));
  }
}

class _PathSegmentChunk extends StatelessWidget {
  static const _radius = Radius.circular(4);

  final String text;
  final Color? color;
  final Color? backgroundColor;
  final bool isStart;
  final bool isEnd;

  const _PathSegmentChunk({required this.text, this.color, this.backgroundColor, this.isStart = false, this.isEnd = false});

  get _borderRadius {
    if (isStart && isEnd) {
      return const BorderRadius.all(_radius);
    } else if (isStart) {
      return const BorderRadius.horizontal(left: _radius);
    } else if (isEnd) {
      return const BorderRadius.horizontal(right: _radius);
    } else {
      return const BorderRadius.all(Radius.zero);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: BoxDecoration(borderRadius: _borderRadius, color: backgroundColor),
      child: Text(
        text,
        style: TextStyle(color: color),
      ),
    );
  }
}
