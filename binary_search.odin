package main

import "core:fmt"

main :: proc() {
    fmt.println(binary_search([]int {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, 11))
}

binary_search :: proc(nums: []int, my_key: int) -> int {
    start: int = 0
    end: int = len(nums) - 1

    for start <= end {
        mid: int = (start + end) // 2

        if nums[mid] == my_key {
            return mid
        }

        if nums[mid] < my_key {
            start = mid + 1
        }

        if nums[mid] > my_key {
            end = mid - 1
        }
    }

    return -1
}
