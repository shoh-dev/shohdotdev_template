extension StringHelpers on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }

  String get hardcoded => this;
}

extension StringNullHelpers on String? {
  String? capitalize() {
    if (this == null) return null;
    return capitalize();
  }

  ///Use this to check if a string is null or empty
  bool isValid() => this != null && this!.isNotEmpty && this != "null";
}
