class Solution {
  void sortColors(List<int> nums) {
    int low = 0, mid = 0, high = nums.length - 1;

    while (mid <= high) {
      if (nums[mid] == 0) {
        // Swap nums[mid] and nums[low]
        int temp = nums[low];
        nums[low] = nums[mid];
        nums[mid] = temp;
        low++;
        mid++;
      } else if (nums[mid] == 1) {
        mid++;
      } else {
        // Swap nums[mid] and nums[high]
        int temp = nums[high];
        nums[high] = nums[mid];
        nums[mid] = temp;
        high--;
      }
    }
  }
}
