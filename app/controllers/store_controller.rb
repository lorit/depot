#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
class StoreController < ApplicationController
  skip_before_filter :authorize
  
  def index
	@visit_count = increment_counter
    @products = Product.order(:title)
    @cart = current_cart
  end

  private 
  	def increment_counter
  		if session[:visit_count].nil?
  			session[:visit_count] = 1
  		else
  			session[:visit_count] += 1
  		end
  	end
end
