class Solution {
  int appendCharacters(String s, String t) {
    int i = 0, j = 0;
    int m = s.length, n = t.length;

    // Traverse both strings using two pointers
    while (i < m && j < n) {
      if (s[i] == t[j]) {
        j++; // Move j only if characters match
      }
      i++; // Always move i
    }

    // Number of characters in t not matched in s
    return n - j;
  }
}

void main() {
  Solution solution = Solution();

  print(solution.appendCharacters("coaching", "coding")); // Output: 4
  print(solution.appendCharacters("abcde", "a")); // Output: 0
  print(solution.appendCharacters("z", "abcde")); // Output: 5
}
