//Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.
//example
// Input: list1 = [1,2,4], list2 = [1,3,4]
// Output: [1,1,2,3,4,4]


class Solution {
  int search(List<int> nums, int target) {

 int left = 0;
  int right = nums.length - 1;

  while (left <= right) {

    int mid = left + ((right - left) ~/ 2);

    if (nums[mid] == target) {
      return mid;
    }

    if (nums[left] <= nums[mid]) {

      if (nums[left] <= target && target < nums[mid]) {
        right = mid - 1;
      } else {
        left = mid + 1;
      }
      
    } else {
      if (nums[mid] < target && target <= nums[right]) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
  }

  return -1;



  }
}