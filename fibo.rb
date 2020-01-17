def recursive_fib num
  if num < 2
    return num
  else
    return (recursive_fib(num-1) + recursive_fib(num-2))
  end
end

def iterative_fib num
  base = [0,1]
  i = 2
  while i<=num
    base.append(base[i-1] + base[i-2])
    i = i + 1
  return base[num]
  end
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib") { iterative_fib(num) }
end