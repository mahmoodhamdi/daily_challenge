class Solution {
  int subarraysDivByK(List<int> nums, int k) {
    // List to store frequency of prefix sums modulo k
    List<int> remainderCount = List<int>.filled(k, 0);
    remainderCount[0] =
        1; // To handle the case where prefix sum itself is divisible by k

    int prefixSum = 0;
    int count = 0;

    for (int num in nums) {
      prefixSum += num;
      // Calculate remainder
      int remainder = prefixSum % k;
      // Adjust remainder to be positive if it's negative
      if (remainder < 0) remainder += k;

      // If the remainder is already in the list, it means there are subarrays
      // which sum up to a multiple of k.
      count += remainderCount[remainder];

      // Update the count of this remainder in the list
      remainderCount[remainder]++;
    }

    return count;
  }
}
