class SearchController < ApplicationController
  def index
    @query =  Post.ransack(params[:q])
    @posts =  @query.result(distinct: true).all.order(created_at: :desc) 
  end
end
