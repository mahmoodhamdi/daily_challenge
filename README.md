# DailyChallenge-June2024

Welcome to the June 2024 Daily Coding Challenge! This repository contains solutions for the daily coding problems. Each day, a new problem is added, and the goal is to solve it and learn new concepts and techniques in programming.

## Challenges

- [Day 1: Single Number III](#day-1-single-number-iii)

## Day 1: Single Number III

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
