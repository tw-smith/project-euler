=begin
# This brute force approach works but does not scale well (computation times increase rapidly with
# increasing a
bool = false
a = 20
ii = 0
until bool == true
   (a .downto 1).each do |b|
    if (ii >0) && (ii % b == 0)
        bool = true
    else
      bool = false
      break
    end
  end
  # Increment in steps of a because the smallest multiple has to be a multiple of a
  ii += a
end

puts ii-a
=end

# After some research, it appears there is a better way to do this. The LCM of two numbers, a and b,
# can be found via (a*b)/GCF(a,b), where GCF(a,b) is the greatest common factor of a and b. Further,
# the LCM of a set of numbers a1,a2,a3,a4...aN can be found by nesting this formula. For example:
# LCM(a1,a2,a3) =   LCM(LCM(a1,a2),a3)
# Luckily, ruby provides a built in method for GCF/GCD

# Much more elegant and much faster than above brute force method!

a = 20
ans = 1

(a .downto 1).each do |b|
  ans = (ans*b) / (ans.gcd(b))
end

puts ans

