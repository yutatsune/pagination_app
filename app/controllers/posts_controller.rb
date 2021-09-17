class PostsController < ApplicationController
  PER_PAGE = 10

  def index
    @posts = Post.order(id: :DESC).page(params[:page]).per(PER_PAGE)
  end

  def create
  end
end
