class WelcomeController < ApplicationController
  def home
  end

  def search
 	@products = Product.where('(name LIKE ? OR description LIKE ? ) AND state LIKE ? AND city LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:state]}%", "%#{params[:city]}%")
  end
end
