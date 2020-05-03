# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    return [] if nums.empty?
    arr = Hash[(0...nums.size).zip nums].sort_by{|key, value| value}
    left = 0
    right = arr.length - 1
    
    while left < right
        current_sum = arr[left][1] + arr[right][1]
        if current_sum == target
            return [arr[left][0], arr[right][0]]
        elsif current_sum < target
            left += 1
        else
            right -= 1
        end
    end
    return []
end