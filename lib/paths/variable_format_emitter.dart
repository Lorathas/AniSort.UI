import 'package:anisort_ui/exceptions/invalid_format_path_exception.dart';
import 'package:anisort_ui/paths/file_format_emitter.dart';

class VariableFormatEmitter implements FileFormatEmitter {
  final String variable;
  final String prefix;
  final String suffix;
  final bool ellipsize;

  VariableFormatEmitter(this.variable, this.prefix, this.suffix, this.ellipsize);

  @override
  String emit(Map<String, String> variables) {
    if (variables.containsKey(variable)) {
      throw InvalidFormatPathException('Unknown variable "$variable" in variables dictionary');
    }

    return '$prefix${variables[variable]}$suffix';
  }

}