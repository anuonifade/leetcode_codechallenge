def reverse(x)
  if x < 0
    reverse_integer = -x.to_s.reverse.to_i
  else
    reverse_integer = x.to_s.reverse.to_i
  end
  
  if reverse_integer < -2 ** 31 || reverse_integer > 2 ** 31
    0
  else
    reverse_integer
  end
end