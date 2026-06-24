package main

import "core:fmt"

main :: proc() {
    fmt.println(insertion_sort([]int {45, 1, 89, 32, 15, 20, 9}))
}

insertion_sort :: proc(nums: []int) -> []int {
    end: int= len(nums)

    for i in 1..<end {
        j: int= i

        for j > 0 && nums[j - 1] > nums[j] {
            nums[j - 1], nums[j] = nums[j], nums[j - 1]
            j -= 1
        }
    }

    return nums
}
