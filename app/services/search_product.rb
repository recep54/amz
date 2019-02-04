require 'watir'
require 'nokogiri'
require 'open-uri'


class SearchProduct
  def perform(filme)
    @product = filme
    @browser = Watir::Browser.new :phantomjs    



# doc = Nokogiri::HTML(open("https://www.amazon.fr/gp/product/B01L9KX5RY"))  
    amz = ["fr", "es", "de", "it"]
    @price = []


    # amz.each do |f|
    # doc = Nokogiri::HTML(open("https://www.amazon.fr/"))
    #   # c = doc.css("price_inside_buybox")
    #   # puts c.text
    #   # @price << c.text
    # end


    amz.each do |f|
    @browser.goto "https://www.amazon.#{f}/gp/product/#{@product}"
      c = @browser.element(id: "price_inside_buybox")
      puts c.text
      @price << c.text
    end

    @browser.close
    @price



    # search = @browser.text_field(id: "twotabsearchtextbox") # select barre de recherche
    # search.set(@product) # search

    # search.send_keys(:enter)

    # sleep(5)
    # @browser.h2.click
    # 
  end



end