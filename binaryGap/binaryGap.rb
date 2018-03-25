def solution(n)
  binary_number = n.to_s(2)
  zeros = binary_number.split('1')
  zeros.pop if binary_number[-1] == '0'
  return 0 if zeros.empty?

  zeros.map(&:size).max
end
