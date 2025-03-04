import 'dart:io';

void main() {
  final inputFile = 'freq words with sentences with notes.csv';
  final outputFile = 'freq words with sentences.csv';

  final fileContent = File(inputFile).readAsStringSync();

  // Regular expression to match --- followed by any characters
  final regex = RegExp(r'---.*?---', dotAll: true);

  int removalCount = 0;
  String cleanedContent = fileContent.replaceAllMapped(regex, (match) {
    removalCount++;
    return '';
  });

  final lines = cleanedContent.split('\n');
  final filteredLines = lines.where((line) => line.trim().isNotEmpty).toList();
  cleanedContent = filteredLines.join('\n');

  File(outputFile).writeAsStringSync(cleanedContent);

  print('$removalCount comments removed. Output written to $outputFile');
}