# Solution to problem No. 1 of Project Euler

sum = 0
(1...1000).each do |x|
  if (x%5 == 0) || (x%3 == 0)
    sum = sum + x
  end
end

puts sum
