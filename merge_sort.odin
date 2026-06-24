package main

import "core:fmt"

main :: proc() {
    fmt.println(merge_sort([]int {10, 9, 8, 7, 6, 5, 4, 3, 2, 1}))
}

merge_sort :: proc(nums: []int) -> []int {
    nums_len: int = len(nums)

    if nums_len < 2 {
        return nums
    }

    mid: int = nums_len // 2

    sort_left: []int = merge_sort(nums[:mid])
    sort_right: []int = merge_sort(nums[mid:])

    return merge(sort_left, sort_right)
}

merge :: proc(left: []int, right: []int) -> []int {
   left_len: int = len(left)
   right_len: int = len(right)
   i: int = 0
   j: int = 0
   nums := make([dynamic]int, 0, left_len + right_len)
   
   for i < left_len && j < right_len {
       if left[i] <= right[j] {
           append(&nums, left[i])
           i += 1
       } else {
           append(&nums, right[j])
           j += 1
       }
   }
    
    for i < left_len {
        append(&nums, left[i])
        i += 1
    }

    for j < right_len {
        append(&nums, right[j])
        j += 1
    }

    return nums[:]
}
