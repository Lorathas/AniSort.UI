import 'package:anisort_ui/paths/path_format_emitter.dart';
import 'package:path/path.dart' as p;

class PathSeparatorPathFormatEmitter implements PathFormatEmitter {
  @override
  String emit(Map<String, String> variables) => p.separator;
}