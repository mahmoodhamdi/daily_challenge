class Solution {
  List<String> commonChars(List<String> words) {
    // Initialize the frequency counter for the first word
    List<int> minFreq = List.filled(26, 0);
    for (int i = 0; i < words[0].length; i++) {
      minFreq[words[0][i].codeUnitAt(0) - 'a'.codeUnitAt(0)]++;
    }

    // Update the frequency counter with minimum frequencies
    for (int i = 1; i < words.length; i++) {
      List<int> freq = List.filled(26, 0);
      for (int j = 0; j < words[i].length; j++) {
        freq[words[i][j].codeUnitAt(0) - 'a'.codeUnitAt(0)]++;
      }
      for (int k = 0; k < 26; k++) {
        minFreq[k] = minFreq[k] < freq[k] ? minFreq[k] : freq[k];
      }
    }

    // Convert the frequency counter to the result list
    List<String> result = [];
    for (int i = 0; i < 26; i++) {
      for (int j = 0; j < minFreq[i]; j++) {
        result.add(String.fromCharCode(i + 'a'.codeUnitAt(0)));
      }
    }

    return result;
  }
}
