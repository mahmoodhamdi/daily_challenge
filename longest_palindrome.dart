class Solution {
  int longestPalindrome(String s) {
    // Initialize a map to count character frequencies
    Map<String, int> charCount = {};

    // Count character frequencies
    for (int i = 0; i < s.length; i++) {
      String char = s[i];
      charCount[char] = (charCount[char] ?? 0) + 1;
    }

    // Count the number of characters with odd frequencies
    int oddCount = charCount.values.where((count) => count % 2 != 0).length;

    // If there are no characters with odd frequencies, return the length of the input string
    if (oddCount == 0) {
      return s.length;
    }

    // If there are characters with odd frequencies, subtract one from the count of odd frequency characters
    // to make them even (since we can only use one of them in the center of the palindrome)
    oddCount -= 1;

    // Sum up the frequencies of all characters to get the length of the palindrome
    int palindromeLength = charCount.values
        .map((count) => count - (count % 2))
        .reduce((value, element) => value + element);

    // Add 1 to the length if there were characters with odd frequencies
    palindromeLength += 1;

    return palindromeLength;
  }
}
