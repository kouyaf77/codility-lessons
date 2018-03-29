def solution(a, k)
  return [] if a.empty?

  new_array = []
  size = a.size

  if k > size
    remainder = k % size
    if remainder == 0
      new_array.concat(a)
    else
      re_order(a, size, remainder)
    end
  else
    re_order(a, size, k)
  end
end

def re_order(old_arr, size, k)
  new_arr = []
  new_arr.concat(old_arr[(size - k), (size + 1)])
  new_arr.concat(old_arr[0, (size - k)])
end
