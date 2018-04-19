class ProductsController < ApplicationController

  def index

    @products = Product.all

  end

  def new

    @product = Product.new

  end

  def edit

  end

  def show

    # we find the instance of thhe product using params[:id] store it in a variable to be used in the view

    @product = Product.find(params[:id])

  end

  def update

  end

  def create

    @product = Product.new

    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]

    @product.save

    redirect_to product_url(@product.id)

  end

  def destroy

  end
end
