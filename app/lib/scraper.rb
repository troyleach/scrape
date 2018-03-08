require 'nokogiri'
require 'open-uri'

class Scraper
  attr_accessor :page
  
  def initialize(url)
    @page = Nokogiri::HTML(open(url, 'User-Agent' => 'Nooby'))
  end

  def get_data
    selector_tag.map { |item| {src: item['src'], alt: item['alt']} }
  end

  def selector_tag
    page.css('img')
  end

end
