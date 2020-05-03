# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  h = {}
  nums.each_with_index.reduce(nil) do |_, (val, id)|
    remain = target - val
    break [h[remain], id] if h[remain]
    h[val] = id
  end
end