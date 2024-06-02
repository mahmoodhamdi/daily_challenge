class Solution {
  void reverseString(List<String> s) {
    for (int i = 0; i < s.length / 2; i++) {
      String temp = s[i];
      s[i] = s[s.length - i - 1];
      s[s.length - i - 1] = temp;
    }
  }
}

void main() {
  Solution solution = Solution();
  List<String> s = ["h", "e", "l", "l", "o"];
  List<String> s2 = ["H", "a", "n", "n", "a", "h"];
  solution.reverseString(s);
  solution.reverseString(s2);
  print(s);
  print(s2);
}
