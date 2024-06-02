# DailyChallenge-June2024

Welcome to the June 2024 Daily Coding Challenge! This repository contains solutions for the daily coding problems. Each day, a new problem is added, and the goal is to solve it and learn new concepts and techniques in programming.

## Challenges

- [May 31: Single Number III](#may-31-single-number-iii)
- [June 1: Score of a String](#june-1-score-of-a-string)
- [June 2: Reverse String](#june-2-reverse-string)

## May 31: Single Number III

### Problem Statement

[Single Number III](https://leetcode.com/problems/single-number-iii/description/)

Given an integer array `nums`, in which exactly two elements appear only once and all the other elements appear exactly twice. Find the two elements that appear only once. You can return the answer in any order.

**Example 1:**

```
Input: nums = [1,2,1,3,2,5]
Output: [3,5]
Explanation: [5, 3] is also a valid answer.
```

**Example 2:**

```
Input: nums = [-1,0]
Output: [-1,0]
```

**Example 3:**

```
Input: nums = [0,1]
Output: [1,0]
```

**Constraints:**

- 2 <= nums.length <= 30,000
- -2^31 <= nums[i] <= 2^31 - 1
- Each integer in `nums` will appear twice, only two integers will appear once.

### Solution Explanation

To solve this problem with a linear runtime complexity and using only constant extra space, we can use bitwise operations. Here’s a step-by-step explanation:

1. **XOR All Elements**:
   - XOR all the elements in the array. This operation will give us the XOR of the two unique elements, because the XOR of two identical elements is 0, and the XOR of any number with 0 is the number itself.
   - Example: For the array `[1, 2, 1, 3, 2, 5]`, XORing all elements results in `3 ^ 5`.

2. **Find a Set Bit**:
   - Find any set bit (bit with value 1) in the XOR result. This set bit helps us distinguish between the two unique elements, as it indicates that the two unique elements differ at that bit position.
   - Example: For `3 ^ 5 = 6` (binary `110`), the rightmost set bit is `10` (or `2` in decimal).

3. **Divide Elements into Two Groups**:
   - Divide all the elements into two groups based on the set bit found in step 2. One group will have the elements with that bit set, and the other group will have the elements with that bit not set.
   - Example: For the set bit `2`, the array `[1, 2, 1, 3, 2, 5]` is divided into `[2, 2, 3]` and `[1, 1, 5]`.

4. **XOR Elements in Each Group**:
   - XORing all elements in each group separately will cancel out the elements that appear twice, leaving only the unique elements.
   - Example: XORing `[2, 2, 3]` results in `3` and XORing `[1, 1, 5]` results in `5`.

For the full solution code, refer to the [`single_number_III.dart`](single_number_III.dart) file.

## June 1: Score of a String

### Problem Statement

[Score of a String](https://leetcode.com/problems/score-of-a-string/description/)

You are given a string s. The score of a string is defined as the sum of the absolute difference between the ASCII values of adjacent characters.

Return the score of s.

**Example 1:**

```
Input: s = "hello"
Output: 13
Explanation: The ASCII values of the characters in `s` are: 'h' = 104, 'e' = 101, 'l' = 108, 'o' = 111. So, the score of `s` would be |104 - 101| + |101 - 108| + |108 - 108| + |108 - 111| = 3 + 7 + 0 + 3 = 13.
```

**Example 2:**

```
Input: s = "zaz"
Output: 50
Explanation: The ASCII values of the characters in `s` are: 'z' = 122, 'a' = 97. So, the score of `s` would be |122 - 97| + |97 - 122| = 25 + 25 = 50.
```

**Constraints:**

- 2 <= s.length <= 100
- s consists only of lowercase English letters.

### Solution Explanation

To solve this problem, we need to calculate the sum of the absolute differences between the ASCII values of adjacent characters in the string. Here’s a step-by-step explanation:

1. **Initialize Score**:
   - Initialize a variable score to 0 to keep track of the total score.

2. **Calculate ASCII Values**:
   - Convert the string s to a list of ASCII values using the codeUnits property in Dart.

3. **Iterate Through Characters**:
   - Iterate through the list of ASCII values from the second character to the end.
   - For each character, calculate the absolute difference between its ASCII value and the ASCII value of the previous character, and add this difference to the score.

4. **Return the Score**:
   - After iterating through the string, return the final score.

For the full solution code, refer to the [`score_of_a_string.dart`](score_of_a_string.dart) file.

## June 2: Reverse String

### Problem Statement

[Reverse String](https://leetcode.com/problems/reverse-string/description/)

Write a function that reverses a string. The input string is given as an array of characters 's'

You must do this by modifying the input array in-place with O(1) extra memory.

**Example 1:**

```
Input: s = ["h","e","l","l","o"]
Output: ["o","l","l","e","h"]
```

**Example 2:**

```
Input: s = ["H","a","n","n","a","h"]
Output: ["h","a","n","n","a","H"]
```

**Constraints:**

- 1 <= s.length <= 10^5
- `s[i]` is a printable ASCII character.

### Solution Explanation

To solve this problem, we need to reverse the array of characters in place. Here’s a step-by-step explanation:

1. **Initialize Two Pointers**:
   - Use two pointers: one starting at the beginning (left) and one at the end (right) of the array.

2. **Swap Characters**:
   - Swap the characters at the left and right pointers.
   - Move the left pointer one step to the right and the right pointer one step to the left.

3. **Repeat Until Pointers Meet**:
   - Continue swapping and moving the pointers until the left pointer is greater than or equal to the right pointer.

4. **In-Place Modification**:
   - The array is modified in place with O(1) extra memory.

For the full solution code, refer to the [`reverse_string.dart`](reverse_string.dart) file.
