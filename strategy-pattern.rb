#  Strategy Pattern define uma família de algoritmos e encapsula cada um deles em sua própria classe
# BAAD
require 'byebug'
class TextParser
  attr_accessor :text, :parser

  def initialize(text, parser)
    @text   = text
    @parser = parser
  end

  def parse
    if parser == :json
      "{ text: #{text} }"
    elsif parser == :xml
      "<text>#{text}</text>"
    end
  end
end
debugger
parser_xml = TextParser.new('My Text', :xml)
parser_xml.parse  "<text>My Text</text>"

puts "\n -- \n"

parser_json = TextParser.new('My Text', :json)
parser_json.parse  "{ text: My Text }"

# GOOD

class XMLParser
  def parse(text)
    "<text>#{text}</text>"
  end
end

###

class JSONParser
  def parse(text)
    "{ text: #{text} }"
  end
end

class HASHParser
  def parse(text)
    "{ text_hash:
      text: #{text} 
      }"
  end
end

###

class TextParser
  attr_reader :text, :parser

  def initialize(text, parser)
    @text = text
    @parser = parser
  end

  def parse
    puts(parser.parse(text))
  end
end

debugger

parser_xml = TextParser.new('My Text', XMLParser.new)
parser_xml.parse "<text>My Text</text>"

puts "\n -- \n"

parser_json = TextParser.new('My Text', JSONParser.new)
parser_json.parse "{ text: My Text }"
