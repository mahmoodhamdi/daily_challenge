# DailyChallenge-June2024

Welcome to the June 2024 Daily Coding Challenge! This repository contains solutions for the daily coding problems. Each day, a new problem is added, and the goal is to solve it and learn new concepts and techniques in programming.

## Challenges

- [DailyChallenge-June2024](#dailychallenge-june2024)
  - [Challenges](#challenges)
  - [May 31: Single Number III](#may-31-single-number-iii)
    - [Problem Statement](#problem-statement)
    - [Solution Explanation](#solution-explanation)
  - [June 1: Score of a String](#june-1-score-of-a-string)
    - [Problem Statement](#problem-statement-1)
    - [Solution Explanation](#solution-explanation-1)
  - [June 2: Reverse String](#june-2-reverse-string)
    - [Problem Statement](#problem-statement-2)
    - [Solution Explanation](#solution-explanation-2)
  - [June 3: Append Characters to String to Make Subsequence](#june-3-append-characters-to-string-to-make-subsequence)
    - [Problem Statement](#problem-statement-3)
    - [Solution Explanation](#solution-explanation-3)
  - [June 4: Longest Palindrome](#june-4-longest-palindrome)
    - [Problem Statement](#problem-statement-4)
    - [Solution Explanation](#solution-explanation-4)
  - [June 5: Find Common Characters](#june-5-find-common-characters)
    - [Problem Statement](#problem-statement-5)
    - [Solution Explanation](#solution-explanation-5)
  - [June 6: Hand of Straights](#june-6-hand-of-straights)
    - [Problem Statement](#problem-statement-6)
    - [Solution Explanation](#solution-explanation-6)
  - [June 7: Replace Words](#june-7-replace-words)
    - [Problem Statement](#problem-statement-7)
    - [Solution Explanation](#solution-explanation-7)
  - [June 8: Continuous Subarray Sum](#june-8-continuous-subarray-sum)
    - [Problem Statement](#problem-statement-8)
    - [Solution Explanation](#solution-explanation-8)
  - [June 9: Subarray Sums Divisible by K](#june-9-subarray-sums-divisible-by-k)
    - [Problem Statement](#problem-statement-9)
    - [Solution Explanation](#solution-explanation-9)
  - [Contributing](#contributing)

## May 31: Single Number III

### Problem Statement

[Single Number III](https://leetcode.com/problems/single-number-iii/description/)

Given an integer array nums, in which exactly two elements appear only once and all the other elements appear exactly twice. Find the two elements that appear only once. You can return the answer in any order.

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
- Each integer in nums will appear twice, only two integers will appear once.

### Solution Explanation

To solve this problem with a linear runtime complexity and using only constant extra space, we can use bitwise operations. Here’s a step-by-step explanation:

1. **Calculate XOR of All Elements**: Compute the XOR of all the elements in the array. The result will be the XOR of the two unique elements because the XOR of two identical elements is 0.

2. **Find a Set Bit**: Find any set bit (1-bit) in the result. This bit is set in one of the two unique numbers but not both.

3. **Divide Elements into Two Groups**: Divide all elements into two groups based on the set bit. XOR the elements in each group separately. The result will be the two unique numbers.

You can find the implementation in the [single_number_III.dart](./single_number_III.dart) file.

## June 1: Score of a String

### Problem Statement

[Score of a String](https://leetcode.com/problems/score-of-a-string/description/)

You are given a string s. The score of a string is defined as the sum of the absolute difference between the ASCII values of adjacent characters.

**Example 1:**

```
Input: s = "hello"
Output: 13
Explanation: The ASCII values of the characters in s are: 'h' = 104, 'e' = 101, 'l' = 108, 'o' = 111. So, the score of s would be |104 - 101| + |101 - 108| + |108 - 108| + |108 - 111| = 3 + 7 + 0 + 3 = 13.
```

**Example 2:**

```
Input: s = "zaz"
Output: 50
Explanation: The ASCII values of the characters in s are: 'z' = 122, 'a' = 97. So, the score of s would be |122 - 97| + |97 - 122| = 25 + 25 = 50.
```

**Constraints:**

- 2 <= s.length <= 100
- s consists only of lowercase English letters.

### Solution Explanation

To calculate the score of the string, we need to find the sum of the absolute differences between the ASCII values of adjacent characters.

You can find the implementation in the [score_of_a_string.dart](./score_of_a_string.dart) file.

## June 2: Reverse String

### Problem Statement

[Reverse String](https://leetcode.com/problems/reverse-string/description/)

Write a function that reverses a string. The input string is given as an array of characters s. You must do this by modifying the input array in-place with O(1) extra memory.

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

- 1 <= s.length <= 105
- s[i] is a printable ascii character.

### Solution Explanation

To reverse the string in-place, we can use a two-pointer technique.

You can find the implementation in the [reverse_string.dart](./reverse_string.dart) file.

## June 3: Append Characters to String to Make Subsequence

### Problem Statement

[Append Characters to String to Make Subsequence](https://leetcode.com/problems/append-characters-to-string-to-make-subsequence/description/)

You are given two strings s and t consisting of only lowercase English letters.

Return the minimum number of characters that need to be appended to the end of s so that t becomes a subsequence of s.

A subsequence is a string that can be derived from another string by deleting some or no characters without changing the order of the remaining characters.

**Example 1:**

```
Input: s = "coaching", t = "coding"
Output: 4
Explanation: Append the characters "ding" to the end of s so that s = "coachingding". Now, t is a subsequence of s ("coachingding"). It can be shown that appending any 3 characters to the end of s will never make t a subsequence.
```

**Example 2:**

```
Input: s = "abcde", t = "a"
Output: 0
Explanation: t is already a subsequence of s ("abcde").
```

**Example 3:**

```
Input: s = "z", t = "abcde"
Output: 5
Explanation: Append the characters "abcde" to the end of s so that s = "zabcde". Now, t is a subsequence of s ("zabcde"). It can be shown that appending any 4 characters to the end of s will never make t a subsequence.
```

**Constraints:**

- 1 <= s.length, t.length <= 105
- s and t consist only of lowercase English letters.

### Solution Explanation

To find the minimum number of characters that need to be appended to s so that t becomes a subsequence of s, we can use a two-pointer technique:

1. **Initialize Pointers**: Use two pointers i and j to traverse the strings s and t respectively. Initialize both pointers to 0.
2. **Traverse Both Strings**: Traverse through the string s using the pointer i. For each character in s, check if it matches the current character in t pointed to by j. If s[i] matches t[j], increment j to move to the next character in t.
3. **Increment Pointer i**: Always increment the pointer i to continue traversing s.
4. **Calculate Remaining Characters**: After traversing s, the pointer j will indicate the number of characters in t that have been matched. The remaining characters in t that haven't been matched (i.e., n - j, where n is the length of t) are the characters that need to be appended to s.

You can find the implementation in the [append_characters_to_string_to_make_subsequence.dart](./append_characters_to_string_to_make_subsequence.dart) file.

## June 4: Longest Palindrome

### Problem Statement

[Longest Palindrome](https://leetcode.com/problems/longest-palindrome/description/)

Given a string s which consists of lowercase or uppercase letters, return the length of the longest palindrome that can be built with those letters.

Letters are case sensitive, for example, "Aa" is not considered a palindrome.

**Example 1:**

```
Input: s = "abccccdd"
Output: 7
Explanation: One longest palindrome that can be built is "dccaccd", whose length is 7.
```

**Example 2:**

```
Input: s = "a"
Output: 1
Explanation: The longest palindrome that can be

 built is "a", whose length is 1.
```

**Constraints:**

- 1 <= s.length <= 2000
- s consists of lowercase and/or uppercase English letters only.

### Solution Explanation

To determine the length of the longest palindrome that can be built with the letters of the string s, we can use the following approach:

1. **Frequency Count**:
   - Use a map to count the frequency of each character in the string s.

2. **Count Odd Frequencies**:
   - Traverse the frequency map and count how many characters have odd frequencies.

3. **Calculate Palindrome Length**:
   - If there are no characters with odd frequencies, the length of the palindrome is the length of the input string.
   - If there are characters with odd frequencies, subtract one from the count of odd frequency characters to make them even (since we can only use one of them in the center of the palindrome).

4. **Sum Frequencies**:
   - Sum up the frequencies of all characters to get the length of the palindrome, then add 1 if there were characters with odd frequencies.

You can find the implementation in the [longest_palindrome.dart](./longest_palindrome.dart) file.

## June 5: Find Common Characters

### Problem Statement

[Find Common Characters](https://leetcode.com/problems/find-common-characters/description/)

Given a string array words, return an array of all characters that show up in all strings within the words (including duplicates). You may return the answer in any order.

**Example 1:**

```
Input: words = ["bella","label","roller"]
Output: ["e","l","l"]
```

**Example 2:**

```
Input: words = ["cool","lock","cook"]
Output: ["c","o"]
```

**Constraints:**

- 1 <= words.length <= 100
- 1 <= words[i].length <= 100
- words[i] consists of lowercase English letters.

### Solution Explanation

To find all characters that appear in each string of the array words, we can use the following approach:

1. **Initialize Frequency Counter**:
   - Initialize a frequency counter for the first word.

2. **Update Frequency Counter**:
   - For each subsequent word, update the frequency counter to keep track of the minimum frequency of each character across all words.

3. **Convert Frequency Counter to Result List**:
   - Convert the frequency counter to a result list that includes characters appearing in all words.

You can find the implementation in the [common_chars.dart](./common_chars.dart) file.

## June 6: Hand of Straights

### Problem Statement

[Hand of Straights](https://leetcode.com/problems/hand-of-straights/description/)

Alice has some number of cards and she wants to rearrange the cards into groups so that each group is of size groupSize, and consists of groupSize consecutive cards.

Given an integer array hand where hand[i] is the value written on the i-th card and an integer groupSize, return true if she can rearrange the cards, or false otherwise.

**Example 1:**

```
Input: hand = [1,2,3,6,2,3,4,7,8], groupSize = 3
Output: true
Explanation: Alice's hand can be rearranged as [1,2,3],[2,3,4],[6,7,8]
```

**Example 2:**

```
Input: hand = [1,2,3,4,5], groupSize = 4
Output: false
Explanation: Alice's hand cannot be rearranged into groups of 4.
```

**Constraints:**

- 1 <= hand.length <= 10^4
- 0 <= hand[i] <= 10^9
- 1 <= groupSize <= hand.length

### Solution Explanation

To determine if the cards can be rearranged into groups of consecutive cards, we can use the following approach:

1. **Check Group Size Compatibility**:
   - If the total number of cards is not divisible by the group size, return false.

2. **Sort the Hand**:
   - Sort the hand to arrange the cards in ascending order.

3. **Count Occurrences**:
   - Use a map to count the occurrences of each card.

4. **Form Groups**:
   - Iterate through the sorted cards and try to form groups starting from each card. Decrease the count of the cards as they are used in groups. If any card needed to form a group is not available, return false.

If all groups are successfully formed, return true.

You can find the implementation in the [hand_of_straights.dart](./hand_of_straights.dart) file.

## June 7: Replace Words

### Problem Statement

[Replace Words](https://leetcode.com/problems/replace-words/description/)

In English, we have a concept called root, which can be followed by some other word to form another longer word - let's call this word derivative. For example, when the root "help" is followed by the word "ful", we can form a derivative "helpful".

Given a dictionary consisting of many roots and a sentence consisting of words separated by spaces, replace all the derivatives in the sentence with the root forming it. If a derivative can be replaced by more than one root, replace it with the root that has the shortest length.

Return the sentence after the replacement.

**Example 1:**

```
Input: dictionary = ["cat","bat","rat"], sentence = "the cattle was rattled by the battery"
Output: "the cat was rat by the bat"
```

**Example 2:**

```
Input: dictionary = ["a","b","c"], sentence = "aadsfasf absbs bbab cadsfafs"
Output: "a a b c"
```

**Constraints:**

- 1 <= dictionary.length <= 1000
- 1 <= dictionary[i].length <= 100
- dictionary[i] consists of only lowercase letters.
- 1 <= sentence.length <= 10^6
- sentence consists of only lowercase letters and spaces.
- The number of words in sentence is in the range [1, 1000]
- The length of each word in sentence is in the range [1, 1000]
- Every two consecutive words in sentence will be separated by exactly one space.
- sentence does not have leading or trailing spaces.

### Solution Explanation

To replace all derivatives in the sentence with the corresponding roots from the dictionary, we can use the following approach:

1. **Build a Trie**:
   - Insert all the roots from the dictionary into a Trie data structure.

2. **Find Shortest Prefix**:
   - For each word in the sentence, find the shortest prefix in the Trie that matches the start of the word. If such a prefix is found, replace the word with this prefix.

3. **Reconstruct the Sentence**:
   - Join the words after replacement to form the final sentence.

You can find the implementation in the [replace_words.dart](./replace_words.dart) file.

## June 8: Continuous Subarray Sum

### Problem Statement

[Continuous Subarray Sum](https://leetcode.com/problems/continuous-subarray-sum/description/)

Given an integer array nums and an integer k, return true if nums has a good subarray or false otherwise.

A good subarray is a subarray where:

- Its length is at least two, and
- The sum of the elements of the subarray is a multiple of k.

Note that:
- A subarray is a contiguous part of the array.
- An integer x is a multiple of k if there exists an integer n such that `x = n * k`. 0 is always a multiple of k.

**Example 1:**

```
Input: nums = [23,2,4,6,7], k = 6
Output: true
Explanation: [2, 4] is a continuous subarray of size 2 whose elements sum up to 6.
```

**Example 2:**

```
Input: nums = [23,2,6,4,7], k = 6
Output: true
Explanation: [23, 2, 6, 4, 7] is a continuous subarray of size 5 whose elements sum up to 42.
42 is a multiple of 6 because 42 = 7 * 6 and 7 is an integer.
```

**Example 3:**

```
Input: nums = [23,2,6,4,7], k = 13
Output: false
```

**Constraints:**

- 1 <= nums.length <= 10^5
- 0 <= nums[i] <= 10^9
- 0 <= sum(nums[i]) <= 2^31 - 1
- 1 <= k <= 2^31 - 1

### Solution Explanation

To determine if there exists a subarray of at least two elements whose sum is a multiple of k, we can use the following approach:

1. **Use a HashMap to Track Remainders**:
   - Create a HashMap to store the first occurrence of each remainder when the prefix sum is divided by k.

2. **Calculate Prefix Sums and Remainders**:
   - Iterate through the array and calculate the prefix sum.
   - For each prefix sum, calculate its remainder when divided by k.
   - If this remainder has been seen before and the subarray length is at least 

2, return true.

3. **Handle Negative Remainders**:
   - Ensure the remainder is non-negative by adjusting it if necessary.

4. **Return Result**:
   - If no valid subarray is found, return false.

You can find the implementation in the [continuous_subarray_sum.dart](./continuous_subarray_sum.dart) file.

## June 9: Subarray Sums Divisible by K

### Problem Statement

[Subarray Sums Divisible by K](https://leetcode.com/problems/subarray-sums-divisible-by-k/description/)

Given an integer array `nums` and an integer `k`, return the number of non-empty subarrays that have a sum divisible by `k`.

A subarray is a contiguous part of an array.

**Example 1:**

```
Input: nums = [4,5,0,-2,-3,1], k = 5
Output: 7
Explanation: There are 7 subarrays with a sum divisible by k = 5:
[4, 5, 0, -2, -3, 1], [5], [5, 0], [5, 0, -2, -3], [0], [0, -2, -3], [-2, -3]
```

**Example 2:**

```
Input: nums = [5], k = 9
Output: 0
```

**Constraints:**

- 1 <= nums.length <= 3 * 10^4
- -10^4 <= nums[i] <= 10^4
- 2 <= k <= 10^4

### Solution Explanation

To count the number of subarrays whose sum is divisible by `k`, we can use the following approach:

1. **Prefix Sum and Remainder**:
   - Calculate the prefix sum of the array and the remainder when this sum is divided by `k`.

2. **Count Remainders**:
   - Use a list to store the frequency of each remainder when the prefix sums are divided by `k`.

3. **Adjust Negative Remainders**:
   - Ensure the remainder is non-negative by adjusting it if necessary.

4. **Count Subarrays**:
   - If a remainder has been seen before, it means there are subarrays that sum up to a multiple of `k`. Increment the count accordingly.

5. **Update Remainder Count**:
   - Update the frequency of the current remainder in the list.

You can find the implementation in the [subarray_sums_divisible_by_k.dart](./subarray_sums_divisible_by_k.dart) file.

## Contributing

If you have a better solution or improvements, feel free to create a pull request or open an issue.

Happy coding!
