require 'nokogiri'
require 'open-uri'

class HtmlParser
  
  def self.load url
    doc = Nokogiri::HTML(URI.open(url))
    data = {}
    data[:title] = doc.title
    data[:description] = HtmlParser.get_description doc
    data[:ingredients] = HtmlParser.get_ingredients doc
    data[:instructions] = HtmlParser.get_instructions doc
    data
  end

  def self.get_ingredients doc
    doc.css(".ingredients-item-name").text.split("\n").map(&:strip).select { |i| i != ""}
  end
  def self.get_description doc
    doc.css(".margin-0-auto").text.split("\n").map(&:strip).select { |i| i != ""}
  end
  def self.get_instructions doc
    doc.css(".section-body .paragraph").text.split("\n").map(&:strip).select { |i| i != ""}.select { |i| i.exclude? 'Step'}
  end
end