class WelcomeController < ApplicationController
  def home
  end

  def search
 	@products = Product.where('(name LIKE ? OR description LIKE ? )', "%#{params[:search]}%", "%#{params[:search]}%")
 	@products = @products.where(state: params[:state]) if params[:state].present?
 	@products = @products.where(city: params[:city]) if params[:city].present?
  end
end
