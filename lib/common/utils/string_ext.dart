extension StringExtension on String {
  String asPath() {
    return addPrefix('/');
  }

  String addPrefix(String prefix) {
    return '$prefix$this';
  }
}
