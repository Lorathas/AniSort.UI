class AniSortException implements Exception {

  final String message;

  AniSortException(this.message);

  @override
  String toString() => "AniSortException: $message";
}