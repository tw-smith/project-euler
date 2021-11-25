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


