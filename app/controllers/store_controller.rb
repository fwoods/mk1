class StoreController < ApplicationController
  def index
  	#@products = Product.all
    @products = Product.paginate(:page => params[:page],:per_page => 4)
  end
  def things_new
    @filter = :things_new     #bug
    @products = Product.order('products.created_at DESC').limit(10)
    render :action => "things"
  end

  def things_fancy
    @filter = :things_fancy       #bug
    @products = Product.order('products.like_num DESC').limit(10)
    render :action => "things"

  end
end
