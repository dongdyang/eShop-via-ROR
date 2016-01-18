class StaticPagesController < ApplicationController
  # layout "static"

  def index
  end

  def scrolling_page
  	@products = Product.limit(3)
  end
end
