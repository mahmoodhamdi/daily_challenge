class TrieNode {
  Map<String, TrieNode> children = {};
  bool isEndOfWord = false;
}

class Trie {
  TrieNode root = TrieNode();

  void insert(String word) {
    TrieNode current = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!current.children.containsKey(char)) {
        current.children[char] = TrieNode();
      }
      current = current.children[char]!;
    }
    current.isEndOfWord = true;
  }

  String findShortestPrefix(String word) {
    TrieNode current = root;
    StringBuffer prefix = StringBuffer();
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!current.children.containsKey(char)) {
        break;
      }
      current = current.children[char]!;
      prefix.write(char);
      if (current.isEndOfWord) {
        return prefix.toString();
      }
    }
    return word;
  }
}

class Solution {
  String replaceWords(List<String> dictionary, String sentence) {
    Trie trie = Trie();
    for (String root in dictionary) {
      trie.insert(root);
    }

    List<String> words = sentence.split(' ');
    List<String> replacedWords =
        words.map((word) => trie.findShortestPrefix(word)).toList();
    return replacedWords.join(' ');
  }
}

void main() {
  Solution solution = Solution();
  List<String> dictionary = ["a", "aa", "aaa", "aaaa"];
  String sentence = "a aa a aaaa aaa aaa aaa aaaaaa bbb baba ababa";
  print(solution.replaceWords(dictionary, sentence));
}