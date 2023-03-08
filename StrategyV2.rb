#клас-контекст, який використовує конкретні стратегії та визначає інтерфейс для клієнтів
class SalesmanProblem
  attr_accessor :algorithm

  def initialize(algorithm)
    @algorithm = algorithm
  end

  def solve(cities)
    algorithm.solve(cities)
  end
end

#інтерфейс для використовуваних алгоритмів
module Algorithm
  def solve(cities)
    raise NotImplementedError
  end
end

#конкретна стратегія
class BranchAndBound
  include(Algorithm)

  def solve(cities)
    puts "Solving problem using branch and bound method"
  end
end

#конкретна стратегія
class NearestNeighbour
  include(Algorithm)

  def solve(cities)
    puts "Solving problem using nearest neighbour algorithm"
  end
end

#конкретна стратегія
class BruteSearch
  include(Algorithm)

  def solve(cities)
    puts "Solving problem using brute search"
  end
end

problem = SalesmanProblem.new(NearestNeighbour.new)
problem.solve(1)