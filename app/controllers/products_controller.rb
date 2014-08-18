class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show

  end

  def search
    
  end

  def results
    # @brand = params[:brand]
    SEMANTICS.products_field( "brand", params[:q] )

    @products_hash = SEMANTICS.get_products
  end

end
