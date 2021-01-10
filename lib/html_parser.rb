require 'nokogiri'
require 'open-uri'

class HTMLParser
  
  def self.load url
    doc = Nokogiri::HTML(URI.open(url))
    data = {}
    data[:title] = doc.title
    data[:description] = HTMLParser.get_description doc
    data[:ingredients] = HTMLParser.get_ingredients doc
    
    data
  end

  def self.get_ingredients doc
    doc.css(".ingredients-item-name").text.split("\n").map(&:strip).select { |i| i != ""}
  end
  def self.get_description doc
    doc.css(".margin-0-auto").text.split("\n").map(&:strip).select { |i| i != ""}
  end
end