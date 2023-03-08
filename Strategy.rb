#клас-контекст, який використовує конкретні стратегії та визначає інтерфейс для клієнтів
class Context
  attr_accessor :formatter

  def initialize(formatter)
    @formatter = formatter
  end

  def format(data)
    formatter.format(data)
  end
end

#інтерфейс для використовуваних алгоритмів
module Formatter
  def format(data)
    raise NotImplementedError
  end
end

#конкретна стратегія
class JSONFormatter
  include(Formatter)

  def format(data)
    puts "Formatting #{data} as JSON..."
  end
end

#конкретна стратегія
class StringFormatter
  include(Formatter)

  def format(data)
    puts "Formatting #{data} as String..."
  end
end

#конкретна стратегія
class XMLFormatter
  include(Formatter)

  def format(data)
    puts "Formatting #{data} as XML..."
  end
end

context = Context.new(XMLFormatter.new)
context.format(12)
