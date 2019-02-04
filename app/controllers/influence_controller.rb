class InfluenceController < ApplicationController

  def index
    @influ = Influenceur.all
  end

  def search
    # puts params
    product = params["anything"]["name"]
    search_product = SearchProduct.new
    puts "======"
    @price = search_product.perform(product)
  end
end
