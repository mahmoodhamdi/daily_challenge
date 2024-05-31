class Solution {
  List<int> singleNumber(List<int> nums) {
    // Step 1: XOR all elements to find the XOR of the two unique numbers
    int xor = 0;
    for (int num in nums) {
      xor ^= num;
    }

    // Step 2: Find a set bit (rightmost set bit in this case)
    int rightmostSetBit = xor & -xor;

    // Step 3: Divide elements into two groups and XOR each group
    int num1 = 0, num2 = 0;
    for (int num in nums) {
      if ((num & rightmostSetBit) != 0) {
        num1 ^= num; // Group with the set bit
      } else {
        num2 ^= num; // Group without the set bit
      }
    }

    return [num1, num2];
  }
}

void main() {
  Solution solution = Solution();

  // Example 1
  List<int> nums1 = [1, 2, 1, 3, 2, 5];
  print(solution.singleNumber(nums1)); // Output: [3, 5]

  // Example 2
  List<int> nums2 = [-1, 0];
  print(solution.singleNumber(nums2)); // Output: [-1, 0]

  // Example 3
  List<int> nums3 = [0, 1];
  print(solution.singleNumber(nums3)); // Output: [0, 1]
}
