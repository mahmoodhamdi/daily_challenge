class Solution {
  bool isNStraightHand(List<int> hand, int groupSize) {
    if (hand.length % groupSize != 0) {
      return false; // Quick check: if total cards can't be evenly divided into groups, return false
    }

    // Step 1: Sort the hand
    hand.sort();

    // Step 2: Count occurrences of each card
    Map<int, int> cardCount = {};
    for (int card in hand) {
      cardCount[card] = (cardCount[card] ?? 0) + 1;
    }

    // Step 3: Try to form groups
    for (int card in hand) {
      if (cardCount[card] == 0) {
        continue; // If this card is already used up in some group, skip it
      }

      // Try to form a group starting from this card
      for (int i = 0; i < groupSize; i++) {
        int currentCard = card + i;
        if (cardCount[currentCard] == null || cardCount[currentCard]! == 0) {
          return false; // If the current card needed is not available, return false
        }
        cardCount[currentCard] = cardCount[currentCard]! - 1;
      }
    }

    return true; // If all groups are successfully formed, return true
  }
}
