 class SearchController < ApplicationController


  def index
    @courses_new = Course.search(params[:term])
    if !params[:term].nil?
      respond_to do |format|
        format.js 
      end
    end
  end

end
