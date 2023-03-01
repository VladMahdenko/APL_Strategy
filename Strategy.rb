class Reporter
  attr_accessor :parser

  def initialize(parser)
    @parser = parser
  end

  def report(data)
    parser.parse(data)
  end
end

module Parser
  def parse(data)
    raise NotImplementedError
  end
end

class JSONParser
  include(Parser)

  def parse(data)
    puts "Parsing #{data} as JSON..."
  end
end

class TXTParser
  include(Parser)

  def parse(data)
    puts "Parsing #{data} as TXT..."
  end
end

class PDFParser
  include(Parser)

  def parse(data)
    puts "Parsing #{data} as PDF..."
  end
end

reporter = Reporter.new(PDFParser.new)
data = 123
reporter.report(data)
