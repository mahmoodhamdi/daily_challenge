class Solution {
  List<int> relativeSortArray(List<int> arr1, List<int> arr2) {
    // Create a frequency counter for arr1
    Map<int, int> frequency = {};
    for (int num in arr1) {
      frequency[num] = (frequency[num] ?? 0) + 1;
    }
    
    // Result list to store the final sorted array
    List<int> result = [];
    
    // Add elements from arr2 in the correct order and count
    for (int num in arr2) {
      if (frequency.containsKey(num)) {
        result.addAll(List.filled(frequency[num]!, num));
        frequency.remove(num);
      }
    }
    
    // Collect remaining elements not in arr2
    List<int> remaining = [];
    frequency.forEach((num, count) {
      remaining.addAll(List.filled(count, num));
    });
    
    // Sort the remaining elements and add to result
    remaining.sort();
    result.addAll(remaining);
    
    return result;
  }
}
