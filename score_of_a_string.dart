class Solution {
  int scoreOfString(String s) {
    int score = 0;
    List<int> charScores = s.codeUnits;

    for (int i = 1; i < charScores.length; i++) {
      score += (charScores[i] - charScores[i - 1]).abs();
    }
    return score;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.scoreOfString("hello"));
  print(solution.scoreOfString("zaz"));
}
