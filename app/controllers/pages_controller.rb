class PagesController < ApplicationController
  def home
    @posts = Post.all.order(created_at: :desc).first(4) 
  end

  def about
  end
end
