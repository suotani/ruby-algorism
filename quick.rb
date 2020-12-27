
def quick(a)
  if a.size <= 1
    a
  else
    point = a[0]
    pre = []
    nex = []
    a[1..-1].each do |s|
      if s > point
        nex << s
      else
        pre << s
      end
    end
    quick(pre) + [point] + quick(nex)
  end
end


# ruby quick.rb
# 9 30 6 15 21 10 13 4 12 8 <- input
inputs = gets.split(" ").map(&:to_i)
p quick(inputs)