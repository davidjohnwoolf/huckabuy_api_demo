class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def search

  end

  def results
    if request.post?
      SEMANTICS.products_field( "brand", params[:q] )
      @products_hash = SEMANTICS.get_products

      @products_hash['results'].each do |result|
        @product = Product.new
        @product.brand = result['brand']
        @product.category = result['category']
        @product.manufacturer = result['manufacturer']
        @product.name = result['name']
        @product.price = result['price']
        @product.upc = result['upc']
        @product.save
      end
    else
      SEMANTICS.products_field( "brand", params[:q] )
      @products_hash = SEMANTICS.get_products
    end
  end

end
