package main

import "core:fmt"

main :: proc() {
}

merge_sort :: proc(nums: []int) -> []int {
    nums_len: int= len(nums)

    if nums_len < 2 {
        return nums
    }

    mid: int= nums_len // 2

    sort_left: []int = merge_sort(nums[:mid])
    sort_right: []int = merge_sort(nums[mid:])

    return merge(sort_left, sort_right)
}

merge :: proc(left: []int, right: []int) -> []int {
    
}
