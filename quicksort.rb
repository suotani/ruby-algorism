
def quick(a)
  if a.size <= 1
    a
  else
    point = a[0]
    pre = a[1..-1].select{|s| s < point}
    nex = a[1..-1].select{|s| s > point}
    quick(pre) + [point] + quick(nex)
  end
end


# ruby quick.rb
# 9 30 6 15 21 10 13 4 12 8 <- input
inputs = gets.split(" ").map(&:to_i)
p quick(inputs)