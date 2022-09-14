final _capitalzedRegex = RegExp(r"(?=[A-Z])");

String? enumToSpacedName<TEnum>(TEnum? enumValue) {
  return enumValue?.toString().split(_capitalzedRegex).join(" ");
}
