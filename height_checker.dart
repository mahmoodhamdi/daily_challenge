class Solution {
  int heightChecker(List<int> heights) {
    // Step 1: Count the occurrences of each height
    List<int> count = List<int>.filled(101, 0); // Initialize with 101 elements to cover heights 1 to 100
    for (int height in heights) {
      count[height]++;
    }

    // Step 2: Create the expected sorted array using the count array
    int currentIndex = 0;
    List<int> expected = List<int>.filled(heights.length, 0);
    for (int height = 1; height <= 100; height++) {
      while (count[height] > 0) {
        expected[currentIndex] = height;
        currentIndex++;
        count[height]--;
      }
    }

    // Step 3: Compare the original heights with the expected heights
    int mismatchCount = 0;
    for (int i = 0; i < heights.length; i++) {
      if (heights[i] != expected[i]) {
        mismatchCount++;
      }
    }

    return mismatchCount;
  }
}

void main() {
  Solution sol = Solution();

  List<int> heights1 = [1, 1, 4, 2, 1, 3];
  print(sol.heightChecker(heights1)); // Output: 3

  List<int> heights2 = [5, 1, 2, 3, 4];
  print(sol.heightChecker(heights2)); // Output: 5

  List<int> heights3 = [1, 2, 3, 4, 5];
  print(sol.heightChecker(heights3)); // Output: 0
}
