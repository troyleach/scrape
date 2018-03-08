require 'nokogiri'
require 'open-uri'

class Scraper
  attr_accessor :page
  
  def initialize
    @page = Nokogiri::HTML(open("https://www.amazon.com/", 'User-Agent' => 'Nooby'))
  end

  def get_data
    selector_tag.map { |item| {src: item['src'], alt: item['alt']} }
  end

  def selector_tag
    page.css('img')
  end

end
