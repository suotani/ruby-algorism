def mergesort(a)
  if a.size <= 1
    a
  else
    pre = a[0..(a.size/2-1)]
    nex = a[(a.size/2)..-1]
    merge(mergesort(pre), mergesort(nex))
  end
end

def merge(a, b)
  a_id = 0
  b_id = 0
  merged = []
  (a.size + b.size).times do |i|
    break if a_id == a.size || b_id == b.size
    if a[a_id] < b[b_id]
      merged << a[a_id]
      a_id += 1
    else
      merged << b[b_id]
      b_id += 1
    end
  end
  merged + a[a_id..-1] + b[b_id..-1]
end

# ruby quick.rb
# 9 30 6 15 21 10 13 4 12 8 <- input
inputs = gets.split(" ").map(&:to_i)
p mergesort(inputs)