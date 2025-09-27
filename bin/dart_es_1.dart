int sum(List<int> numbers) {
  int total = 0;
  for (var number in numbers) {
    total += number;
  }
  return total;
}

List<int> evenNumbersFilter(List<int> numbers) {
  List<int> evenNumbers = [];
  for (var number in numbers) {
    if (number % 2 == 0) {
      evenNumbers.add(number);
    }
  }
  return evenNumbers;
}

List<String> alphabeticalSort(List<String> words) {
  words.sort();
  return words;
}

Map<String, int> countOccurrences(List<String> items) {
  Map<String, int> occurrences = {};
  for (var item in items) {
    if (occurrences.containsKey(item)) {
      occurrences[item] = occurrences[item]! + 1;
    } else {
      occurrences[item] = 1;
    }
  }
  return occurrences;
}

List<String> studentWithHigherGrades(Map<String, int> grades, int threshold) {
  List<String> students = [];
  grades.forEach((name, grade) {
    if (grade > threshold) {
      students.add(name);
    }
  });
  return students;
}

Map<String, int> invertMap(Map<String, int> original) {
  Map<int, String> inverted = {};
  original.forEach((key, value) {
    inverted[value] = key;
  });
  return inverted.map((key, value) => MapEntry(value, key));
}

List<int> joinLists(List<int> list1, List<int> list2) {
  return [...list1, ...list2];
}

Map<String, double> joinMaps(
  Map<String, double> map1,
  Map<String, double> map2,
) {
  return {...map1, ...map2};
}

void main() {
  print(sum([1, 2, 3, 4, 5]));
  print(evenNumbersFilter([1, 2, 3, 4, 5, 6]));
  print(alphabeticalSort(['banana', 'mela', 'arancia']));
  print(countOccurrences(['ciao', 'mondo', 'ciao', 'dart']));
  print(studentWithHigherGrades({'Mario': 85, 'Luca': 75, 'Anna': 90}, 80));
  print(invertMap({'a': 1, 'b': 2, 'c': 3}));
  print(joinLists([1, 2, 3], [4, 5]));
  print(joinMaps({'Mela': 0.5, 'Banana': 0.3}, {'Arancia': 0.7}));
}
