class Solution {
  int searchInsert(List<int> nums, int target) {
    int index = 0;
    for (int i = 0; i < nums.length; i++) {
      if (target == nums[i]) {
        return i;
      } else {
        if (nums[i] < target) {
          index = i + 1;
        }
      }
    }
    return index;
  }
}

void main() {
  
  Solution obj = Solution();

  List<int> nums = [1, 2, 3, 44, 5, 6, 7, 8, 9];

  int target = 1;

  print(obj.searchInsert(nums, target));
}
