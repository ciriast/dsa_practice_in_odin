package main

import "core:fmt"

main :: proc() {
    fmt.println(bubble_sort([]int{19, 12, 3, 46, 13, 4}))
}

bubble_sort :: proc(nums: []int) -> []int {
    swapping : bool = true
    nums_len := len(nums)

    for swapping {
        swapping = false

        for i in 1..< nums_len {
            if nums[i - 1] > nums[i] {
                nums [i - 1], nums[i] = nums[i], nums[i - 1]

                swapping = true
            }
        }

        nums_len -= 1
    }

    return nums
}
