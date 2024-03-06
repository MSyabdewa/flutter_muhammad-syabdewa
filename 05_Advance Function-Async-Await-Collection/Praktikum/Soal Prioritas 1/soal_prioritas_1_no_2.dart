void countDataTypes(List<dynamic> data) {
  int stringCount = 0;
  int boolCount = 0;
  int intCount = 0;
  int doubleCount = 0;

  for (var element in data) {
    if (element is String) {
      stringCount++;
    } else if (element is bool) {
      boolCount++;
    } else if (element is int) {
      intCount++;
    } else if (element is double) {
      doubleCount++;
    }
  }

  print('String: $stringCount');
  print('Bool: $boolCount');
  print('Int: $intCount');
  print('Double: $doubleCount');
}

void main() {
  List<dynamic> dataList = ['Hello', 42, true, 3.14, 'Dart', false, 42, 3.14];

  countDataTypes(dataList);
}
