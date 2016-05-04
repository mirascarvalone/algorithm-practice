# Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

# Using built in ruby methods
def move_zeroes(nums)
  count = nums.count(0)
  nums.delete(0)
  nums.fill(0,nums.length,count)
end

def move_zeroes(num)
  zero_count = 0
  num.each_with_index do |elt,index|
    if elt == 0
      zero_count +=1
      num.delete_at(index)
      num.push(0)
    end
  end
end