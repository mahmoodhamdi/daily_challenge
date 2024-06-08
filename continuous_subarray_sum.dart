class Solution {
  bool checkSubarraySum(List<int> nums, int k) {
    // Create a hashmap to store the first occurrence of each remainder
    Map<int, int> remainderMap = {0: -1};
    int prefixSum = 0;

    for (int i = 0; i < nums.length; i++) {
      prefixSum += nums[i];
      int remainder = prefixSum % k;

      // Handle negative remainders
      if (remainder < 0) {
        remainder += k;
      }

      if (remainderMap.containsKey(remainder)) {
        if (i - remainderMap[remainder]! > 1) {
          return true;
        }
      } else {
        remainderMap[remainder] = i;
      }
    }

    return false;
  }
}
