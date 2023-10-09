/* Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.
If target is not found in the array, return [-1, -1].
You must write an algorithm with O(log n) runtime complexity.
Example:
Input: nums = [5,7,7,8,8,10], target = 8
Output: [3,4]
*/

class FirstAndLastPositionSortedArray {
  List<int> searchRange(List<int> nums, int target) {
    int binarySearchLeft(List<int> nums, int target) {
      int left = 0;
      int right = nums.length - 1;
      while (left <= right) {
        int mid = left + ((right - left) ~/ 2);
        if (nums[mid] < target) {
          left = mid + 1;
        } else {
          right = mid - 1;
        }
      }
      return left;
    }

    int binarySearchRight(List<int> nums, int target) {
      int left = 0;
      int right = nums.length - 1;
      while (left <= right) {
        int mid = left + ((right - left) ~/ 2);
        if (nums[mid] <= target) {
          left = mid + 1;
        } else {
          right = mid - 1;
        }
      }
      return right;
    }

    int leftIdx = binarySearchLeft(nums, target);
    int rightIdx = binarySearchRight(nums, target);

    if (leftIdx <= rightIdx && nums[leftIdx] == target) {
      return [leftIdx, rightIdx];
    } else {
      return [-1, -1];
    }
  }
}
