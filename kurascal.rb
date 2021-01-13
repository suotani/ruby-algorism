nodes = [
  ["a", "b", 5],["a", "c", 3],["a", "d", 4],["a", "e", 2],
  ["b", "c", 10], 
  ["c", "d", 4],["c", "e", 7],
  ["d", "e", 2]
]

def unclose?(points, node)
  !(points.include?(node[0]) && points.include?(node[1]))
end

points = []
result = []
point_size = 5
sorted = nodes.sort{|a, b| a[2] <=> b[2] }
sorted.each do |node|
  if unclose?(points, node)
    result << node
    points << node[0]
    points << node[1]
    points = points.uniq
  end
end
p result