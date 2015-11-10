class SearchController < ApplicationController
  def search
    if params[:q].nil?
      @users = []
	  @posts = []
    else
      @users = User.search params[:q]
	  @posts = Post.search params[:q]
    end
  end
end
