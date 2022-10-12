import 'package:anisort_ui/paths/path_format_emitter.dart';

class ConstPathFormatEmitter implements PathFormatEmitter {

  final String value;

  ConstPathFormatEmitter(this.value);

  @override
  String emit(Map<String, String> overrides) => value;

}