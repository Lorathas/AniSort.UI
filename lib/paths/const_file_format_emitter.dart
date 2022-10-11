import 'package:anisort_ui/paths/file_format_emitter.dart';

class ConstFileFormatEmitter implements FileFormatEmitter {

  final String value;

  ConstFileFormatEmitter(this.value);

  @override
  String emit(Map<String, String> overrides) => value;

}