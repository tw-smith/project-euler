# Find largest palindrome product. Quick to brute force.
(999 .downto 1).each do |ii|
  a = ii*999
  if a.to_s == (a.to_s).reverse
     puts a
     return
  end
end
