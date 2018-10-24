 class SearchController < ApplicationController
  def new
    @courses_new = Course.search(params[:term])
    
  end
end
