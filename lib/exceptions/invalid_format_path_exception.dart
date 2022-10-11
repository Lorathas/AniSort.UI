import 'package:anisort_ui/exceptions/anisort_exception.dart';

class InvalidFormatPathException extends AniSortException {
  InvalidFormatPathException(super.message);

  @override
  String toString() => "InvalidFormatPathException: $message";
}