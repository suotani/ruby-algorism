
def solve_hanoi(n, from = "A",work = "B", to = "C")
  if n >= 1
    solve_hanoi(n-1, from, to, work, count)
    p "#{n}を#{from}から#{to}へ"
    solve_hanoi(n-1, work, from, to, count)
  end
end

solve_hanoi(6)