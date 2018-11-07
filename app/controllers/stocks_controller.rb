class StocksController < ApplicationController
  
def search
  if params[:stock].blank?
    flash.now[:danger] = "You cannot leave the search field empty, Please enter a stock symbol"
    
  else 
    @stock = Stock.new_from_lookup(params[:stock])
  flash.now[:danger] = "You have entered an incorrect Stock symbol" unless @stock
  end 
  
     render partial: 'users/result'
end 
end  